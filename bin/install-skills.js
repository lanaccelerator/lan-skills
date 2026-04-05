#!/usr/bin/env node

const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

const SKILLS_DIR = path.join(process.env.HOME, '.claude', 'skills');
const SUITES_DIR = path.join(__dirname, '..', 'suites');

console.log(`Installing LAN Skills to ${SKILLS_DIR}...`);
fs.mkdirSync(SKILLS_DIR, { recursive: true });

let installed = 0;
let failed = 0;

const suites = fs.readdirSync(SUITES_DIR).filter(f =>
  fs.statSync(path.join(SUITES_DIR, f)).isDirectory()
);

for (const suite of suites) {
  const suiteDir = path.join(SUITES_DIR, suite);
  const skills = fs.readdirSync(suiteDir).filter(f =>
    fs.statSync(path.join(suiteDir, f)).isDirectory()
  );

  for (const skill of skills) {
    const src = path.join(suiteDir, skill);
    const dest = path.join(SKILLS_DIR, skill);

    try {
      if (fs.existsSync(dest)) {
        fs.rmSync(dest, { recursive: true });
      }
      fs.cpSync(src, dest, { recursive: true });

      if (fs.existsSync(path.join(dest, 'SKILL.md'))) {
        console.log(`  [OK] ${skill}`);
        installed++;
      } else {
        console.log(`  [FAIL] ${skill} — SKILL.md not found after copy`);
        failed++;
      }
    } catch (err) {
      console.log(`  [FAIL] ${skill} — ${err.message}`);
      failed++;
    }
  }
}

console.log('');
console.log(`Installed: ${installed} skills | Failed: ${failed}`);
console.log('Restart Claude Code and type "/" to see available skills.');
