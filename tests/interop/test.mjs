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
run(`cd ${__dir} && pnpm install`);

console.log('\n=== Step 2: Clone tests repo ===');
if (existsSync(CACHE)) rmSync(CACHE, { recursive: true });
run(`git clone --depth=1 https://github.com/specodec/tests ${CACHE}`);

console.log('\n=== Step 3: Generate vectors ===');
run(`cd ${CACHE} && pnpm install --frozen-lockfile`);
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

run(`cd ${__dir}/emit && swift build`);
run(`cd ${__dir}/emit && VEC_DIR=${VEC_DIR} OUT_DIR=${OUT_DIR} swift run emit_swift`);

console.log('\n=== ALL PASSED ===');