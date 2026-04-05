---
phase: 01-foundation-startup-core
plan: 02
subsystem: shared-frameworks
tags: [frameworks, bibliography, editorial-voice, latam-benchmarks, readme, contributor-guide]
dependency_graph:
  requires: [01-01]
  provides: [shared/frameworks/, README.md, docs/how-to-create-skills.md]
  affects: [01-03, 01-04, 01-05, 01-06, 01-07]
tech_stack:
  added: []
  patterns: [shared-framework-files, three-component-description, latam-annotation-protocol]
key_files:
  created:
    - shared/frameworks/sequoia-deck.md
    - shared/frameworks/brad-feld-terms.md
    - shared/frameworks/yc-metrics.md
    - shared/frameworks/safe-note.md
    - shared/frameworks/vc-backable-test.md
    - shared/frameworks/ilpa-standards.md
    - shared/frameworks/latam-benchmarks.md
    - shared/frameworks/editorial-voice.md
    - README.md
    - docs/how-to-create-skills.md
  modified: []
decisions:
  - "shared/frameworks/editorial-voice.md uses pointer pattern — skills reference this file, never inline the tone spec"
  - "latam-benchmarks.md carries exact Cuantico 2026 and LAVCA 2025 figures (not approximations) to prevent hallucination"
  - "How-to-create-skills.md documents the annotation protocol for US vs LATAM benchmarks inline — not by reference — so contributors see it immediately"
metrics:
  duration_seconds: 558
  completed_date: "2026-04-05"
  tasks_completed: 2
  files_created: 10
---

# Phase 01 Plan 02: Shared Frameworks + README + Contributor Guide Summary

**One-liner:** 8 canonical framework files (Sequoia deck, Brad Feld terms, YC metrics, SAFE note, VC backability, ILPA standards, LATAM benchmarks, editorial voice) plus README with 26-skill catalog and full contributor guide.

## What Was Built

### Task 1: 8 Shared Framework Files

All 8 files created in `shared/frameworks/`:

| File | Framework | Key Content |
|------|-----------|-------------|
| `sequoia-deck.md` | Sequoia 10-slide pitch structure | Slide-by-slide execution standards, must-have data, DocSend benchmarks |
| `brad-feld-terms.md` | Venture Deals term taxonomy | Economic terms (valuation, liquidation preference, anti-dilution), control terms (board, drag-along, protective provisions) by stage |
| `yc-metrics.md` | YC metrics + a16z 16 Metrics | SaaS KPIs with stage benchmarks, marketplace metrics, LATAM SaaS adjustments |
| `safe-note.md` | YC SAFE variants | 4 SAFE types, key terms, LATAM cap benchmarks, conversion mechanics worked example |
| `vc-backable-test.md` | YC/Thiel/a16z/Sequoia/Gurley | Unified 5-criterion scorecard (market, monopoly, PMF, timing, team), each scored 1–5 |
| `ilpa-standards.md` | ILPA reporting standards | TVPI/DPI/IRR/RVPI definitions, LP governance, fee transparency standards |
| `latam-benchmarks.md` | LAVCA 2025 + Cuantico 2026 | Exact 2025 actuals: $4.126B across 681 rounds, +13.8% YoY, annotation protocol for US vs LATAM |
| `editorial-voice.md` | Tone enforcement | Banned phrases, good output examples, voice models (PG, Khosla, Rabois, Leone), calibration rules |

### Task 2: README.md + Contributor Guide

**README.md:**
- Install instructions (3-step: clone → ./install.sh → restart Claude Code)
- Skill catalog: all 26 skills across 4 suites with Phase 2/3 placeholders
- All 5 Phase 1 startup skills listed with exact three-component descriptions
- Pre-commit validation instruction (`./validate.sh`)
- Contributing link

**docs/how-to-create-skills.md:**
- 11 sections covering full skill authoring workflow
- YAML frontmatter spec with validation rules and failure modes
- Three-component description pattern with working examples and rationale
- Standard SKILL.md body structure (7 mandatory sections in order)
- TEMPLATES.md requirement with filled example rationale
- LATAM Context requirement with annotation protocol and verified source URLs
- Tone & Editorial Voice requirement with rationale (NOT optional section)
- Validation before commit — validate.sh steps
- Activation testing — 5-phrasing test methodology with cross-trigger example
- Anti-patterns section (6 documented failure patterns)
- Shared frameworks rule: 2+ skills = shared/frameworks/, 1 skill = references/

## Verification Results

All 9 plan verification checks passed:

1. `ls shared/frameworks/ | wc -l` → 8
2. `grep "Source:" latam-benchmarks.md` → LAVCA URL present
3. `grep "4.126B" latam-benchmarks.md` → exact figure present
4. `grep "Banned Phrases|Great start" editorial-voice.md` → present
5. `grep "unicorn|therapy" editorial-voice.md` → present
6. `grep "## Install" README.md` → present
7. `grep "venture-model-validator" README.md` → present with full description
8. `grep "ALWAYS invoke when" how-to-create-skills.md` → present
9. `grep "editorial-voice" how-to-create-skills.md` → present

## Deviations from Plan

None — plan executed exactly as written.

The editorial-voice.md content followed the spec from the `<interfaces>` block exactly, including the exact banned phrase list, the headline rule ("The user came here for truth, not therapy"), and all four voice models. No editorial additions.

## Commits

| Task | Commit | Files |
|------|--------|-------|
| Task 1: 8 framework files | b03ecf0 | 8 files in shared/frameworks/ |
| Task 2: README + contributor guide | 9e2bb3e | README.md, docs/how-to-create-skills.md |

## Known Stubs

None. All 10 files are complete with substantive content. The Phase 2/3 skill placeholders in README.md are intentional (marked "Coming in Phase 2/3") and do not prevent this plan's goal — building shared frameworks and repo documentation — from being achieved.

## Self-Check: PASSED
