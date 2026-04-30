---
quick_id: 260430-jga
slug: fix-repo-install-bugs-lan-accelerator-or
description: Fix install bugs preventing founders from installing the repo (org refs, Windows HOME var, npx URL, Windows install note)
date: 2026-04-30
mode: quick
must_haves:
  truths:
    - The actual repo lives at github.com/isaacgbc/lan-skills (confirmed via curl 200 OK); github.com/lan-accelerator/lan-skills returns 404
    - The lan-skills npm package is not published (npm view returns E404)
    - bin/install-skills.js uses process.env.HOME which is undefined on Windows (Windows uses USERPROFILE)
    - install.sh is bash and requires Git Bash or WSL on Windows
  artifacts:
    - package.json (repository.url corrected)
    - README.md (3 occurrences of lan-accelerator → isaacgbc, npx command updated, Windows install note added)
    - bin/install-skills.js (os.homedir() instead of process.env.HOME)
  key_links:
    - package.json:9
    - README.md:11
    - README.md:19
    - README.md:32
    - bin/install-skills.js:7
---

# Quick Task 260430-jga: Fix repo install bugs

## Goal

Make the repo's install instructions actually work. Right now founders hit two consecutive errors: (1) `npx lan-skills` 404s because the package is not on npm, (2) `git clone github.com/lan-accelerator/lan-skills` 404s because the org doesn't exist (real repo is under `isaacgbc`). Plus a latent Windows bug in `bin/install-skills.js` that would crash even if the URLs worked.

## Tasks

### Task 1: Fix org name references (lan-accelerator → isaacgbc)

**Files:**
- `package.json` (line 9: `repository.url`)
- `README.md` (line 11: clickable link in intro; line 19: `git clone` command in Option A)

**Action:** Replace `lan-accelerator/lan-skills` with `isaacgbc/lan-skills` in all 3 locations.

**Verify:**
- `grep -n "lan-accelerator" package.json README.md` returns no matches
- `grep -n "isaacgbc/lan-skills" package.json README.md` returns 3 matches

**Done when:** `git clone https://github.com/isaacgbc/lan-skills.git` would succeed (URL matches actual remote per `git remote -v`).

**Atomic commit:** `fix: correct repo URLs to isaacgbc/lan-skills (was lan-accelerator)`

---

### Task 2: Fix Windows HOME crash in install-skills.js

**Files:**
- `bin/install-skills.js` (line 1-7)

**Action:**
- Add `const os = require('os');` after the existing requires (after line 5)
- Replace `process.env.HOME` with `os.homedir()` on line 7

**Why:** `process.env.HOME` is undefined on Windows (Windows uses `USERPROFILE`). `os.homedir()` is cross-platform and returns the right path on macOS, Linux, and Windows. This is a one-line fix that unblocks Windows users when option B (npx github:...) is used.

**Verify:**
- `grep -n "process.env.HOME" bin/install-skills.js` returns no matches
- `grep -n "os.homedir()" bin/install-skills.js` returns 1 match
- `node -e "const os = require('os'); console.log(os.homedir())"` prints the home dir on this machine

**Done when:** Script resolves the install path correctly on Windows (path becomes `C:\Users\<user>\.claude\skills\` instead of `undefined\.claude\skills\`).

**Atomic commit:** `fix(bin): use os.homedir() instead of process.env.HOME for Windows compatibility`

---

### Task 3: Replace broken npx command with working github: variant

**Files:**
- `README.md` (line 32: the `npx lan-skills` command under "Option B")

**Action:** Replace the command `npx lan-skills` with `npx github:isaacgbc/lan-skills`.

**Why:** The package is not published to npm (confirmed: `npm view lan-skills` returns E404). `npx github:user/repo` fetches and runs from GitHub directly without requiring npm publish. This is what the original docs intended; the previous form only works if the package is on the npm registry.

Add a one-line note above or below the code block clarifying this is the GitHub-based variant and works without an npm publish step.

**Verify:**
- `grep -n "npx lan-skills" README.md` returns no matches (or only matches in unrelated context)
- `grep -n "npx github:isaacgbc/lan-skills" README.md` returns 1 match

**Done when:** A user copy-pasting Option B from the README can actually install.

**Atomic commit:** `docs(readme): use npx github: variant since package is not published to npm`

---

### Task 4: Add Windows install note

**Files:**
- `README.md` (Install section)

**Action:** After Option A (clone + install.sh), add a short subsection or callout noting that Windows users must run `install.sh` from Git Bash or WSL — `install.sh` will not run in plain `cmd.exe` or PowerShell because it's a bash script.

Suggested form (a tight callout, not a wall of text):

```markdown
> **Windows users:** `install.sh` is a bash script. Run it from **Git Bash** (ships with [Git for Windows](https://git-scm.com/download/win)) or **WSL**. It will not run in `cmd.exe` or PowerShell. Option B (`npx github:...`) works in any shell.
```

Place it right after the Option A code block, before Option B.

**Verify:**
- `grep -n "Git Bash" README.md` returns ≥1 match
- The callout is in the Install section (not appended at the bottom of the file)

**Done when:** A Windows founder reading the README knows which shell to use before they hit a "command not found" or syntax error.

**Atomic commit:** `docs(readme): add Windows install note for Git Bash / WSL requirement`

---

## Post-execution verification

After all 4 tasks commit cleanly:

```bash
./validate.sh
```

The validator should still report 29 spec-compliant skills (we didn't touch any SKILL.md files). If validate.sh fails, that's a regression.

Final sanity check: the README's Option A `git clone` URL, when copy-pasted into a fresh shell, must successfully clone the repo. The npx command in Option B must successfully resolve.
