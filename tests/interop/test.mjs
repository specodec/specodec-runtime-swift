import { execSync } from 'child_process';
import { existsSync, mkdirSync, rmSync, readdirSync, writeFileSync, readFileSync, copyFileSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dir = dirname(fileURLToPath(import.meta.url));
const CACHE = join(__dir, '.tests-cache');
const EMIT_GEN = join(__dir, 'emit_gen');
const OUT_DIR = join(__dir, 'output');

function run(cmd) {
  console.log('  >', cmd);
  execSync(cmd, { stdio: 'inherit' });
}

console.log('\n=== Step 1: Install dependencies ===');
run(`cd ${__dir} && npm install`);

console.log('\n=== Step 2: Using cached .tests-cache ===');

console.log('\n=== Step 3: Generate vectors ===');
run(`cd ${CACHE} && npm install`);
run(`cd ${CACHE} && node gen_types.mjs`);

const VEC_DIR = join(CACHE, 'vectors');

console.log('\n=== Step 4: Generate emit code ===');
if (existsSync(EMIT_GEN)) rmSync(EMIT_GEN, { recursive: true });
mkdirSync(EMIT_GEN, { recursive: true });

run(`cd ${__dir} && node_modules/.bin/tsp compile ${CACHE}/alltypes.tsp --emit=@specodec/typespec-emitter-swift \
  --option @specodec/typespec-emitter-swift.emitter-output-dir=${join(__dir, 'emit', 'emit_gen')}`);

const swiftFiles = readdirSync(join(__dir, 'emit', 'emit_gen')).filter(f => f.endsWith('.swift'));
if (swiftFiles.length > 0) {
  console.log(`  ✓ Generated ${swiftFiles.join(', ')}`);
} else {
  console.error('  FAIL: No generated Swift files');
  process.exit(1);
}

console.log('\n=== Step 5: Generate test runner ===');
const srcDir = join(__dir, 'emit', 'Sources');
if (!existsSync(srcDir)) mkdirSync(srcDir, { recursive: true });
run(`cd ${__dir} && VEC_DIR=${VEC_DIR} node generate_emit_runner.mjs`);

console.log('\n=== Step 6: Setup Package.swift with inline runtime ===');
const emitDir = join(__dir, 'emit');
const emitMainDir = join(emitDir, 'Sources', 'EmitMain');
const specodecSrcDir = join(emitDir, 'Sources', 'Specodec');
const specodecRyuDir = join(specodecSrcDir, 'ryu');

mkdirSync(emitMainDir, { recursive: true });
mkdirSync(specodecSrcDir, { recursive: true });
mkdirSync(specodecRyuDir, { recursive: true });

// Move generated main.swift to EmitMain/
const mainSrc = join(emitDir, 'Sources', 'main.swift');
if (existsSync(mainSrc)) {
  copyFileSync(mainSrc, join(emitMainDir, 'main.swift'));
  rmSync(mainSrc);
}

// Copy emit_gen files into EmitMain (merged target)
for (const f of readdirSync(join(emitDir, 'emit_gen')).filter(f => f.endsWith('.swift'))) {
  copyFileSync(join(emitDir, 'emit_gen', f), join(emitMainDir, f));
}

// Copy runtime Specodec sources
const runtimeSpecodec = join(__dir, '..', '..', 'Sources', 'Specodec');
for (const f of readdirSync(runtimeSpecodec).filter(f => f.endsWith('.swift'))) {
  copyFileSync(join(runtimeSpecodec, f), join(specodecSrcDir, f));
}
const runtimeRyu = join(runtimeSpecodec, 'ryu');
for (const f of readdirSync(runtimeRyu).filter(f => f.endsWith('.swift'))) {
  copyFileSync(join(runtimeRyu, f), join(specodecRyuDir, f));
}

const packageSwift = `// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "emit_swift",
    targets: [
        .executableTarget(
            name: "emit_swift",
            dependencies: ["Specodec"],
            path: "Sources/EmitMain"
        ),
        .target(
            name: "Specodec",
            path: "Sources/Specodec"
        )
    ]
)
`;
writeFileSync(join(emitDir, 'Package.swift'), packageSwift);
console.log(`  ✓ Setup Package.swift with inline runtime`);

console.log('\n=== Step 7: Run tests ===');
if (existsSync(OUT_DIR)) rmSync(OUT_DIR, { recursive: true });
mkdirSync(OUT_DIR, { recursive: true });

try { run(`cd ${__dir}/emit && swift build`); } catch (e) { console.log("Swift build completed (some failures expected)"); }
try { run(`cd ${__dir}/emit && VEC_DIR=${VEC_DIR} OUT_DIR=${OUT_DIR} swift run emit_swift`); } catch (e) { console.log("Swift tests completed (some failures expected)"); }

console.log('\n=== Step 8: Compare output ===');
const manifest = JSON.parse(readFileSync(join(VEC_DIR, 'manifest.json'), 'utf-8'));
let match = 0, mismatch = 0;

for (const [name] of Object.entries(manifest.scalars || {})) {
  const expected = join(VEC_DIR, 'scalars', `${name}.mp`);
  const actual = join(OUT_DIR, 'scalars', `${name}.mp`);
  if (!existsSync(actual)) { mismatch++; console.log(`MISSING: ${name}.mp`); continue; }
  if (readFileSync(expected).equals(readFileSync(actual))) match++;
  else { mismatch++; console.log(`MISMATCH: ${name}.mp`); }
}
for (const model of manifest.testModels || []) {
  for (const [outExt, vecExt] of [['msgpack','msgpack'], ['json','json'], ['unformatted.json','json'], ['gron','gron']]) {
    const expected = join(VEC_DIR, `${model}.${vecExt}`);
    const actual = join(OUT_DIR, `${model}.${outExt}`);
    if (!existsSync(expected)) continue;
    if (!existsSync(actual)) { mismatch++; console.log(`MISSING: ${model}.${outExt}`); continue; }
    if (readFileSync(expected).equals(readFileSync(actual))) match++;
    else { mismatch++; console.log(`MISMATCH: ${model}.${outExt}`); }
  }
}
const total = match + mismatch;
console.log(`${match}/${total} match, ${mismatch} mismatch`);
if (mismatch > 0) process.exit(1);

console.log('\n=== ALL PASSED ===');