---
quick_id: 260430-jga
slug: fix-repo-install-bugs-lan-accelerator-or
status: complete
date: 2026-04-30
mode: quick
tasks_completed: 4
tasks_total: 4
files_modified:
  - package.json
  - README.md
  - bin/install-skills.js
commits:
  - hash: "9756296"
    message: "fix: correct repo URLs to isaacgbc/lan-skills (was lan-accelerator)"
  - hash: "e0110bd"
    message: "fix(bin): use os.homedir() instead of process.env.HOME for Windows compatibility"
  - hash: "d39ece3"
    message: "docs(readme): use npx github: variant since package is not published to npm"
  - hash: "b5a71d3"
    message: "docs(readme): add Windows install note for Git Bash / WSL requirement"
duration_seconds: 72
validate_sh_status: pass
validate_sh_skills: 29
---

# Quick Task 260430-jga: Fix repo install bugs — Summary

## One-liner

Fixed four install-blocking bugs (wrong org refs, broken npx command, Windows HOME crash, missing Windows shell note) so founders can actually install LAN Skills from a fresh clone or `npx`.

## Goal vs Outcome

**Goal:** Make the repo's install instructions actually work. Founders were hitting consecutive 404s on `npx lan-skills` and `git clone github.com/lan-accelerator/lan-skills`, plus a latent Windows crash in `bin/install-skills.js`.

**Outcome:** All four mechanical edits applied. Both install paths (Option A clone+install.sh, Option B npx) now resolve to the actual repo at `github.com/isaacgbc/lan-skills`. The Node entrypoint uses `os.homedir()` so it resolves correctly on Windows. README now warns Windows users to use Git Bash/WSL for `install.sh`.

## Tasks

| # | Task                                                              | Commit    | Status |
| - | ----------------------------------------------------------------- | --------- | ------ |
| 1 | Fix org name references (lan-accelerator → isaacgbc)              | `9756296` | done   |
| 2 | Fix Windows HOME crash in install-skills.js (use os.homedir())    | `e0110bd` | done   |
| 3 | Replace broken `npx lan-skills` with `npx github:isaacgbc/...`    | `d39ece3` | done   |
| 4 | Add Windows install note for Git Bash / WSL requirement           | `b5a71d3` | done   |

## Files Modified

- **package.json** — `repository.url` changed from `lan-accelerator/lan-skills` to `isaacgbc/lan-skills`.
- **README.md** — 3 textual fixes (intro link, clone command, npx command) + 1 new Windows callout in the Install section.
- **bin/install-skills.js** — Added `const os = require('os')` and replaced `process.env.HOME` with `os.homedir()` for cross-platform home directory resolution.

## Verification

Per-task verify checks all passed (greps confirmed expected match counts, `node -e "os.homedir()"` returned correct path).

Post-execution validator:

```bash
$ ./validate.sh
All SKILL.md files valid.
$ echo $?
0
```

29 SKILL.md files in `suites/` (count unchanged). No regression — we did not touch any SKILL.md.

## Deviations from Plan

None. Plan executed exactly as written. Each task's "Atomic commit" message used verbatim. No deviation rules triggered.

## Authentication Gates

None.

## Known Stubs

None.

## Self-Check: PASSED

Files exist:
- FOUND: package.json (modified, 1 line changed)
- FOUND: README.md (modified, 3 edits + 1 callout added)
- FOUND: bin/install-skills.js (modified, 2 lines changed)
- FOUND: .planning/quick/260430-jga-fix-repo-install-bugs-lan-accelerator-or/260430-jga-SUMMARY.md

Commits exist:
- FOUND: 9756296
- FOUND: e0110bd
- FOUND: d39ece3
- FOUND: b5a71d3
