import { readFileSync, mkdirSync, writeFileSync, existsSync, readdirSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dir = dirname(fileURLToPath(import.meta.url));
const VEC_DIR = process.env.VEC_DIR;

const manifest = JSON.parse(readFileSync(join(VEC_DIR, 'manifest.json'), 'utf8'));

const scalars = manifest.scalars || {};
const testModels = [...(manifest.testModels || []), ...(manifest.testUnions || [])];
const modelNamespaces = manifest.modelNamespaces || {};
const testUnions = new Set(manifest.testUnions || []);
function isUnionTest(name) { return testUnions.has(name); }
function unionNameOf(testName) { return testName.replace(/_[^_]+$/, ''); }

const emitGenDir = join(__dir, 'emit', 'emit_gen');

const SCALAR_MAP = {
  'int32':   ['readInt32',   'writeInt32'],
  'int64':   ['readInt64',   'writeInt64'],
  'uint32':  ['readUint32',  'writeUint32'],
  'uint64':  ['readUint64',  'writeUint64'],
  'float32': ['readFloat32', 'writeFloat32'],
  'float64': ['readFloat64', 'writeFloat64'],
  'string':  ['readString',  'writeString'],
  'bytes':   ['readBytes',   'writeBytes'],
  'bool':    ['readBool',    'writeBool'],
};

function toPascalCase(s) {
  return s.split('_').map(p => p.charAt(0).toUpperCase() + p.slice(1)).join('');
}

function nsToSnake(ns) {
  return ns.toLowerCase().replace(/\./g, '_').replace(/-/g, '_');
}

function nsToPascal(ns) {
  return ns.split('.').map(p => p.charAt(0).toUpperCase() + p.slice(1)).join('');
}

// ── Scan generated Swift files to map model→file group ──
const modelFileGroup = {};
if (existsSync(emitGenDir)) {
  const swiftFiles = readdirSync(emitGenDir).filter(f => f.endsWith('.swift'));
  for (const f of swiftFiles) {
    const full = join(emitGenDir, f);
    const content = readFileSync(full, 'utf-8');
    for (const model of testModels) {
      if (content.includes('let ' + model + 'Codec')) {
        const key = f.replace(/_types\.swift$/, '');
        modelFileGroup[model] = key;
      }
      if (isUnionTest(model)) {
        const uname = unionNameOf(model);
        if (content.includes('let ' + uname + 'Codec')) {
          const key = f.replace(/_types\.swift$/, '');
          modelFileGroup[model] = key;
        }
      }
    }
  }
}
// Default
for (const model of testModels) {
  if (!modelFileGroup[model]) {
    modelFileGroup[model] = 'all_types';
  }
}

// ── Group models: by namespace if available, else by generated file ──
let testGroups = {};
const hasModelNs = Object.keys(modelNamespaces).length > 0;

if (hasModelNs) {
  for (const model of testModels) {
    const ns = modelNamespaces[model] || 'AllTypes';
    if (!testGroups[ns]) testGroups[ns] = [];
    testGroups[ns].push(model);
  }
} else {
  for (const model of testModels) {
    const key = modelFileGroup[model];
    if (!testGroups[key]) testGroups[key] = [];
    testGroups[key].push(model);
  }
}

// ── Test name from group key ──
function groupKeyToName(key) {
  if (hasModelNs) {
    return nsToPascal(key);
  }
  // "all_types" → "AllTypes", "all_types_nested" → "AllTypesNested"
  return key.split('_').filter(p => p).map(p => p.charAt(0).toUpperCase() + p.slice(1)).join('');
}

// ── Scalar test function ──
function genScalarFunc(name, spec) {
  const stype = spec.type;
  const [readMethod, writeMethod] = SCALAR_MAP[stype] || ['readString', 'writeString'];
  const funcName = `testScalar_${name.replace(/[^a-zA-Z0-9_]/g, '_')}`;

  let body = '';
  body += `func ${funcName}() -> Bool {\n`;
  body += `    do {\n`;
  body += `        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/${name}.mp"))\n`;
  body += `        var r = MsgPackReader(data)\n`;
  body += `        let v = try r.${readMethod}()\n`;
  body += `        var w = MsgPackWriter()\n`;
  body += `        w.${writeMethod}(v)\n`;
  body += `        let out = w.toBytes()\n`;
  body += `        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/${name}.mp"))\n`;
  body += `        return true\n`;
  body += `    } catch {\n`;
  body += `        print("FAIL ${name} (scalar): \\(error)")\n`;
  body += `        return false\n`;
  body += `    }\n`;
  body += `}\n`;
  return body;
}

// ── Model test function ──
function genModelFunc(model) {
  const funcName = `testModel_${model.replace(/[^a-zA-Z0-9_]/g, '_')}`;
  const codecName = isUnionTest(model) ? unionNameOf(model) : model;

  let body = '';
  body += `func ${funcName}() -> (Bool, Bool, Bool, Bool) {\n`;
  body += `    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false\n`;
  body += `\n`;

  // MsgPack
  body += `    do {\n`;
  body += `        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/${model}.msgpack"))\n`;
  body += `        var r = MsgPackReader(data)\n`;
  body += `        let obj = try ${codecName}Codec.decode(r)\n`;
  body += `        var w = MsgPackWriter()\n`;
  body += `        ${codecName}Codec.encode(w, obj)\n`;
  body += `        let out = w.toBytes()\n`;
  body += `        try out.write(to: URL(fileURLWithPath: outDir + "/${model}.msgpack"))\n`;
  body += `        mpOk = true\n`;
  body += `    } catch {\n`;
  body += `        print("FAIL ${model} msgpack: \\(error)")\n`;
  body += `    }\n`;
  body += `\n`;

  // JSON
  body += `    do {\n`;
  body += `        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/${model}.json"))\n`;
  body += `        var r = JsonReader(data)\n`;
  body += `        let obj = try ${codecName}Codec.decode(r)\n`;
  body += `        var w = JsonWriter()\n`;
  body += `        ${codecName}Codec.encode(w, obj)\n`;
  body += `        let out = w.toBytes()\n`;
  body += `        try out.write(to: URL(fileURLWithPath: outDir + "/${model}.json"))\n`;
  body += `        jsonOk = true\n`;
  body += `    } catch {\n`;
  body += `        print("FAIL ${model} json: \\(error)")\n`;
  body += `    }\n`;
  body += `\n`;

  // Unformatted JSON
  body += `    do {\n`;
  body += `        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/${model}.unformatted.json"))\n`;
  body += `        var r = JsonReader(data)\n`;
  body += `        let obj = try ${codecName}Codec.decode(r)\n`;
  body += `        var w = JsonWriter()\n`;
  body += `        ${codecName}Codec.encode(w, obj)\n`;
  body += `        let out = w.toBytes()\n`;
  body += `        try out.write(to: URL(fileURLWithPath: outDir + "/${model}.unformatted.json"))\n`;
  body += `        jsonPrettyOk = true\n`;
  body += `    } catch {\n`;
  body += `        print("FAIL ${model} unformatted json: \\(error)")\n`;
  body += `    }\n`;
  body += `\n`;

  // GRON
  body += `    do {\n`;
  body += `        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/${model}.gron"))\n`;
  body += `        var r = GronReader(data)\n`;
  body += `        let obj = try ${codecName}Codec.decode(r)\n`;
  body += `        var w = GronWriter()\n`;
  body += `        ${codecName}Codec.encode(w, obj)\n`;
  body += `        let out = w.toBytes()\n`;
  body += `        try out.write(to: URL(fileURLWithPath: outDir + "/${model}.gron"))\n`;
  body += `        gronOk = true\n`;
  body += `    } catch {\n`;
  body += `        print("FAIL ${model} gron: \\(error)")\n`;
  body += `    }\n`;
  body += `\n`;

  body += `    return (mpOk, jsonOk, jsonPrettyOk, gronOk)\n`;
  body += `}\n`;
  return body;
}

// ── Generate test files ──
const srcDir = join(__dir, 'emit', 'Sources');
if (!existsSync(srcDir)) mkdirSync(srcDir, { recursive: true });

const testModules = [];

// 1. Scalars
if (Object.keys(scalars).length > 0) {
  let lines = ['import Foundation', 'import Specodec', ''];
  let calls = [];

  for (const [name, spec] of Object.entries(scalars)) {
    lines.push(genScalarFunc(name, spec));
    calls.push(`testScalar_${name.replace(/[^a-zA-Z0-9_]/g, '_')}()`);
  }

  lines.push('');
  lines.push(`func runScalars(_ vecDir: String, _ outDir: String) -> (Int, Int) {`);
  lines.push(`    var passed = 0`);
  lines.push(`    var failed = 0`);
  for (const call of calls) {
    lines.push(`    if ${call} { passed += 1 } else { failed += 1 }`);
  }
  lines.push(`    return (passed, failed)`);
  lines.push(`}`);

  const fname = 'TestScalars.swift';
  writeFileSync(join(srcDir, fname), lines.join('\n') + '\n');
  console.log('Generated emit/Sources/' + fname + ' (' + Object.keys(scalars).length + ' scalars)');
  testModules.push({ name: 'runScalars', calls: calls });
}

// 2. Model test files per group
for (const [key, groupModels] of Object.entries(testGroups)) {
  let lines = ['import Foundation', 'import Specodec', ''];
  let modelCallNames = [];

  for (const model of groupModels) {
    const funcBody = genModelFunc(model);
    lines.push(funcBody);
    const funcName = `testModel_${model.replace(/[^a-zA-Z0-9_]/g, '_')}`;
    modelCallNames.push(funcName);
  }

  const runFuncName = 'run' + groupKeyToName(key);
  lines.push('');
  lines.push(`func ${runFuncName}(_ vecDir: String, _ outDir: String) -> (Int, Int) {`);
  lines.push(`    var passed = 0`);
  lines.push(`    var failed = 0`);
  for (const funcName of modelCallNames) {
    lines.push(`    do {`);
    lines.push(`        let r = ${funcName}()`);
    lines.push(`        if r.0 { passed += 1 } else { failed += 1 }`);
    lines.push(`        if r.1 { passed += 1 } else { failed += 1 }`);
    lines.push(`        if r.2 { passed += 1 } else { failed += 1 }`);
    lines.push(`        if r.3 { passed += 1 } else { failed += 1 }`);
    lines.push(`    }`);
    lines.push('');
  }
  lines.push(`    return (passed, failed)`);
  lines.push(`}`);

  const fname = 'Test' + groupKeyToName(key) + '.swift';
  writeFileSync(join(srcDir, fname), lines.join('\n') + '\n');
  console.log('Generated emit/Sources/' + fname + ' (' + groupModels.length + ' models)');
  testModules.push({ name: runFuncName, calls: [] });
}

// 3. Generate main.swift
let main = ['import Foundation', 'import Specodec', ''];
main.push('let vecDir = ProcessInfo.processInfo.environment["VEC_DIR"] ?? ""');
main.push('let outDir = ProcessInfo.processInfo.environment["OUT_DIR"] ?? ""');
main.push('');
main.push('do {');
main.push('    try FileManager.default.createDirectory(atPath: outDir, withIntermediateDirectories: true)');
main.push('    try FileManager.default.createDirectory(atPath: outDir + "/scalars", withIntermediateDirectories: true)');
main.push('} catch {');
main.push('    print("FAIL setup: \\(error)")');
main.push('    exit(1)');
main.push('}');
main.push('');
main.push('var passed = 0');
main.push('var failed = 0');
main.push('');

for (const tm of testModules) {
  main.push(`do {`);
  main.push(`    let (p, f) = ${tm.name}(vecDir, outDir)`);
  main.push(`    passed += p`);
  main.push(`    failed += f`);
  main.push(`}`);
  main.push('');
}

main.push('print("emit-swift: \\(passed) passed, \\(failed) failed")');
main.push('if failed > 0 { exit(1) }');

writeFileSync(join(srcDir, 'main.swift'), main.join('\n') + '\n');
console.log('Generated emit/Sources/main.swift with ' + testModules.length + ' test modules');
