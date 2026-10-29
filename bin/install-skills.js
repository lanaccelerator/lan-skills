#!/usr/bin/env node

const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');
const os = require('os');

const SKILLS_DIR = path.join(os.homedir(), '.claude', 'skills');
const SUITES_DIR = path.join(__dirname, '..', 'suites');
// Local copies that differ from the repo version are moved here instead of deleted,
// so a correction someone wrote into their installed skill is never lost.
const BACKUP_DIR = path.join(os.homedir(), '.claude', 'skills-backup',
  new Date().toISOString().replace(/[:.]/g, '-'));

if (process.argv.slice(2).some(a => ['-h', '--help'].includes(a))) {
  console.log('Usage: npx github:lanaccelerator/lan-skills');
  console.log(`Copies every LAN skill into ${SKILLS_DIR}.`);
  console.log(`An installed skill that differs from the new version is first moved to ${path.dirname(BACKUP_DIR)}/<date>/.`);
  process.exit(0);
}

// Same files with the same bytes, compared recursively.
function sameTree(a, b) {
  const list = (d, rel = '') => fs.readdirSync(path.join(d, rel), { withFileTypes: true }).flatMap(e =>
    e.isDirectory() ? list(d, path.join(rel, e.name)) : [path.join(rel, e.name)]).sort();
  const fa = list(a), fb = list(b);
  return fa.length === fb.length && fa.every((f, i) => f === fb[i] &&
    fs.readFileSync(path.join(a, f)).equals(fs.readFileSync(path.join(b, f))));
}

console.log(`Installing LAN Skills to ${SKILLS_DIR}...`);
fs.mkdirSync(SKILLS_DIR, { recursive: true });

let installed = 0;
let failed = 0;
const backedUp = [];

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
        if (sameTree(src, dest)) {
          fs.rmSync(dest, { recursive: true });
        } else {
          fs.mkdirSync(BACKUP_DIR, { recursive: true });
          fs.renameSync(dest, path.join(BACKUP_DIR, skill));
          backedUp.push(skill);
        }
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
if (backedUp.length) {
  console.log(`Your previous copy of ${backedUp.length} skill(s) differed and was saved in ${BACKUP_DIR}: ${backedUp.join(', ')}`);
}
console.log('Restart Claude Code and type "/" to see available skills.');
