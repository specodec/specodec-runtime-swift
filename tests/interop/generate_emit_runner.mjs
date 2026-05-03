import { readFileSync, mkdirSync, writeFileSync, existsSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dir = dirname(fileURLToPath(import.meta.url));
const VEC_DIR = process.env.VEC_DIR;

const manifest = JSON.parse(readFileSync(join(VEC_DIR, 'manifest.json'), 'utf8'));

const scalars = manifest.scalars || {};
const testModels = manifest.testModels || [];

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

let lines = [];
let scalarCalls = [];
let modelCalls = [];

lines.push('import Foundation');
lines.push('import Specodec');
lines.push('');
lines.push('let vecDir = ProcessInfo.processInfo.environment["VEC_DIR"] ?? ""');
lines.push('let outDir = ProcessInfo.processInfo.environment["OUT_DIR"] ?? ""');
lines.push('');

// ── Scalar test functions ──

for (const [name, spec] of Object.entries(scalars)) {
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

  lines.push(body);
  scalarCalls.push(`${funcName}()`);
}

// ── Model test functions ──

for (const name of testModels) {
  const funcName = `testModel_${name.replace(/[^a-zA-Z0-9_]/g, '_')}`;

  let body = '';
  body += `func ${funcName}() -> (Bool, Bool, Bool, Bool) {\n`;
  body += `    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false\n`;
  body += `\n`;

  // Format 1: MsgPack
  body += `    do {\n`;
  body += `        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/${name}.msgpack"))\n`;
  body += `        var r = MsgPackReader(data)\n`;
  body += `        let obj = try ${name}Codec.decode(r)\n`;
  body += `        var w = MsgPackWriter()\n`;
  body += `        ${name}Codec.encode(w, obj)\n`;
  body += `        let out = w.toBytes()\n`;
  body += `        try out.write(to: URL(fileURLWithPath: outDir + "/${name}.msgpack"))\n`;
  body += `        mpOk = true\n`;
  body += `    } catch {\n`;
  body += `        print("FAIL ${name} msgpack: \\(error)")\n`;
  body += `    }\n`;
  body += `\n`;

  // Format 2: JSON
  body += `    do {\n`;
  body += `        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/${name}.json"))\n`;
  body += `        var r = JsonReader(data)\n`;
  body += `        let obj = try ${name}Codec.decode(r)\n`;
  body += `        var w = JsonWriter()\n`;
  body += `        ${name}Codec.encode(w, obj)\n`;
  body += `        let out = w.toBytes()\n`;
  body += `        try out.write(to: URL(fileURLWithPath: outDir + "/${name}.json"))\n`;
  body += `        jsonOk = true\n`;
  body += `    } catch {\n`;
  body += `        print("FAIL ${name} json: \\(error)")\n`;
  body += `    }\n`;
  body += `\n`;

  // Format 3: Unformatted JSON
  body += `    do {\n`;
  body += `        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/${name}.unformatted.json"))\n`;
  body += `        var r = JsonReader(data)\n`;
  body += `        let obj = try ${name}Codec.decode(r)\n`;
  body += `        var w = JsonWriter()\n`;
  body += `        ${name}Codec.encode(w, obj)\n`;
  body += `        let out = w.toBytes()\n`;
  body += `        try out.write(to: URL(fileURLWithPath: outDir + "/${name}.unformatted.json"))\n`;
  body += `        jsonPrettyOk = true\n`;
  body += `    } catch {\n`;
  body += `        print("FAIL ${name} unformatted json: \\(error)")\n`;
  body += `    }\n`;
  body += `\n`;

  // Format 4: GRON
  body += `    do {\n`;
  body += `        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/${name}.gron"))\n`;
  body += `        var r = GronReader(data)\n`;
  body += `        let obj = try ${name}Codec.decode(r)\n`;
  body += `        var w = GronWriter()\n`;
  body += `        ${name}Codec.encode(w, obj)\n`;
  body += `        let out = w.toBytes()\n`;
  body += `        try out.write(to: URL(fileURLWithPath: outDir + "/${name}.gron"))\n`;
  body += `        gronOk = true\n`;
  body += `    } catch {\n`;
  body += `        print("FAIL ${name} gron: \\(error)")\n`;
  body += `    }\n`;
  body += `\n`;

  body += `    return (mpOk, jsonOk, jsonPrettyOk, gronOk)\n`;
  body += `}\n`;

  lines.push(body);
  modelCalls.push(`${funcName}()`);
}

// ── Main entry point ──

let main = '';
main += `// ── Main ──\n`;
main += `do {\n`;
main += `    try FileManager.default.createDirectory(atPath: outDir, withIntermediateDirectories: true)\n`;
main += `    try FileManager.default.createDirectory(atPath: outDir + "/scalars", withIntermediateDirectories: true)\n`;
main += `} catch {\n`;
main += `    print("FAIL setup: \\(error)")\n`;
main += `    exit(1)\n`;
main += `}\n`;
main += `\n`;
main += `var passed = 0\n`;
main += `var failed = 0\n`;
main += `\n`;

if (scalarCalls.length > 0) {
  for (const call of scalarCalls) {
    main += `if ${call} { passed += 1 } else { failed += 1 }\n`;
  }
  main += `\n`;
}

if (modelCalls.length > 0) {
  for (const call of modelCalls) {
    main += `do {\n`;
    main += `    let r = ${call}\n`;
    main += `    if r.0 { passed += 1 } else { failed += 1 }\n`;
    main += `    if r.1 { passed += 1 } else { failed += 1 }\n`;
    main += `    if r.2 { passed += 1 } else { failed += 1 }\n`;
    main += `    if r.3 { passed += 1 } else { failed += 1 }\n`;
    main += `}\n`;
    main += `\n`;
  }
}

main += `print("emit-swift: \\(passed) passed, \\(failed) failed")\n`;
main += `if failed > 0 { exit(1) }\n`;

lines.push(main);

const content = lines.join('\n') + '\n';

const srcDir = join(__dir, 'emit', 'Sources');
if (!existsSync(srcDir)) mkdirSync(srcDir, { recursive: true });
writeFileSync(join(srcDir, 'main.swift'), content);

console.log('Generated emit/Sources/main.swift');
