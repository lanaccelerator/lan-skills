---
phase: 01-foundation-startup-core
plan: 01
subsystem: infrastructure
tags: [repository-structure, install-script, validation, shell]
dependency_graph:
  requires: []
  provides: [suites/startups/, suites/lp-angel/, suites/corporates/, suites/vc-operators/, shared/frameworks/, install.sh, validate.sh]
  affects: [all-subsequent-plans]
tech_stack:
  added: [bash, set-euo-pipefail, POSIX-glob]
  patterns: [per-suite-directory-layout, gitkeep-placeholder, null-glob-guard]
key_files:
  created:
    - suites/lp-angel/.gitkeep
    - suites/corporates/.gitkeep
    - suites/startups/.gitkeep
    - suites/vc-operators/.gitkeep
    - shared/frameworks/.gitkeep
    - docs/.gitkeep
    - install.sh
    - validate.sh
  modified: []
decisions:
  - "Use ${HOME} not ~ in install.sh for platform safety (zsh on macOS, bash on Linux/WSL)"
  - "Add [ -f ] null-glob guard in validate.sh loop — bash expands unmatched glob to literal string, which fails grep with set -euo pipefail"
metrics:
  duration: 2m
  completed_date: "2026-04-05"
  tasks_completed: 2
  tasks_total: 2
  files_created: 8
  files_modified: 0
---

# Phase 01 Plan 01: Repository Skeleton and Operational Scripts Summary

Repository skeleton with 4 suite directories and two operational scripts (install.sh using ${HOME}/.claude/skills/ with per-skill [OK]/[FAIL] output, validate.sh YAML linter with name/charset/length checks and exit 1 on errors) created as the foundation for all subsequent skill authoring.

## Tasks Completed

| # | Task | Commit | Files |
|---|------|--------|-------|
| 1 | Create repository directory skeleton | 9dda207 | suites/lp-angel/.gitkeep, suites/corporates/.gitkeep, suites/startups/.gitkeep, suites/vc-operators/.gitkeep, shared/frameworks/.gitkeep, docs/.gitkeep |
| 2 | Write install.sh and validate.sh | 534207d | install.sh, validate.sh |

## Deviations from Plan

### Auto-fixed Issues

**1. [Rule 1 - Bug] Null-glob guard in validate.sh for empty suites/**

- **Found during:** Task 2 verification
- **Issue:** `for skill_md in suites/*/*/SKILL.md` with `set -euo pipefail` — when no SKILL.md files exist, bash expands the glob to the literal string `suites/*/*/SKILL.md`. The loop body then runs with that non-existent path, causing `grep` to exit non-zero and the whole script to fail with exit code 2.
- **Fix:** Added `[ -f "${skill_md}" ] || continue` as the first line of the loop body. This is the standard POSIX pattern for null-glob safety.
- **Files modified:** validate.sh
- **Commit:** 534207d (included in Task 2 commit)

## Known Stubs

None — this plan is infrastructure only (no skill content, no data sources, no UI).

## Verification Results

All plan success criteria met:

- 4 suite directories exist in suites/: lp-angel, corporates, startups, vc-operators
- shared/frameworks/ directory exists
- docs/ directory exists
- install.sh is executable, uses ${HOME}, has mkdir -p guard, prints per-skill [OK]/[FAIL] confirmation
- validate.sh is executable, checks name/charset/length/line-count, exits 1 on error
- validate.sh exits 0 on empty suites/ (fixed via Rule 1 null-glob guard)
- bash -n passes for both scripts (no syntax errors)

## Self-Check: PASSED

Files created:
- FOUND: /Users/isaacgbc/lan-skills/suites/lp-angel/.gitkeep
- FOUND: /Users/isaacgbc/lan-skills/suites/corporates/.gitkeep
- FOUND: /Users/isaacgbc/lan-skills/suites/startups/.gitkeep
- FOUND: /Users/isaacgbc/lan-skills/suites/vc-operators/.gitkeep
- FOUND: /Users/isaacgbc/lan-skills/shared/frameworks/.gitkeep
- FOUND: /Users/isaacgbc/lan-skills/docs/.gitkeep
- FOUND: /Users/isaacgbc/lan-skills/install.sh
- FOUND: /Users/isaacgbc/lan-skills/validate.sh

Commits:
- FOUND: 9dda207 (Task 1)
- FOUND: 534207d (Task 2)
