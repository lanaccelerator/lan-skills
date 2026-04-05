---
phase: 03-lp-angel-corporate-suites
plan: "06"
subsystem: suites/corporates/pilot-program-designer
tags:
  - corporate-suite
  - pilot-program
  - kill-criteria
  - phase3-complete
  - 27-skills
dependency_graph:
  requires:
    - 03-04 (open-innovation-scanner — corporate suite pattern)
  provides:
    - pilot-program-designer skill (suites/corporates/pilot-program-designer/)
    - Phase 3 completion: all 27 skills across 4 suites
  affects:
    - README.md (total skill count, Phase 3 catalog entries)
    - install.sh output (27 [OK] confirmations)
    - validate.sh (27 SKILL.md files validated)
tech_stack:
  added: []
  patterns:
    - Corporate vocabulary (pilot ROI, internal champion, innovation theater, kill criteria)
    - "[NO KILL CRITERIA] callout — distinct from [THEATER], mandatory trigger for missing kill criteria"
    - "[THEATER] callout — innovation theater detection pattern from open-innovation-scanner"
    - 5-component pilot design framework (SMART / KPIs / Timeline / Budget / Kill Criteria)
    - Kill criteria table format (metric | success threshold | failure threshold | date | authority)
key_files:
  created:
    - suites/corporates/pilot-program-designer/SKILL.md
    - suites/corporates/pilot-program-designer/TEMPLATES.md
    - suites/corporates/pilot-program-designer/references/digital-transformation-context.md
    - suites/corporates/pilot-program-designer/references/latam-context.md
  modified:
    - README.md (skill count 26→27, Phase 3 catalog entries)
decisions:
  - "pilot-program-designer kill criteria are the centerpiece — [NO KILL CRITERIA] is a separate callout prefix from [THEATER] because killing a zombie pilot is structurally critical enough to warrant its own signal"
  - "Claro Colombia / TechBot IA chosen as TEMPLATES.md example — Colombian telecom gives CRC/SIC regulatory specificity and DIAN e-invoicing context distinct from prior LATAM examples"
  - "corporate-venture-evaluator was found incomplete (directory + references existed, SKILL.md present from parallel 03-05 run) — deviation Rule 3 confirmed it was already resolved; no additional action needed"
metrics:
  duration: "8 minutes"
  completed_date: "2026-04-05"
  tasks_completed: 2
  files_created: 4
  files_modified: 1
---

# Phase 03 Plan 06: Pilot Program Designer + Phase 3 Completion Summary

Delivered pilot-program-designer — the final Corporate skill — completing all 27 skills across 4 suites (Startups x13, VC Operators x5, LP/Angel x5, Corporates x4), with kill criteria as the skill's defining feature and a fully-worked Claro Colombia pilot example.

## What Was Built

### Task 1: pilot-program-designer Skill (4 files)

**SKILL.md** (249 lines, `suite: corporates`)

The skill's defining rule is stated at the top of the body before any workflow steps:
"A pilot without explicit kill criteria is not a pilot. It is a zombie." Every pilot design
must include a Kill Criteria Table with success threshold, failure threshold, decision date,
and decision authority — or trigger a `[NO KILL CRITERIA]` callout that blocks the output.

The `[NO KILL CRITERIA]` callout is structurally distinct from `[THEATER]`: innovation theater
describes patterns that predict failure; the kill criteria callout is a hard gate that prevents
the skill from producing a Pilot Program Document until kill criteria are defined.

**references/digital-transformation-context.md** (Techstars + Wayra + 500 Global methodology)

Key data points: Techstars kills ~40% of pilots at the 6-week gate (this is healthy);
Wayra mandates written kill criteria before pilot approval; BCG LATAM 2024 documents
the average zombie pilot lifetime at 14 months consuming $180k in internal resources.

**references/latam-context.md** (LATAM corporate pilot operational constraints)

Invoice compliance tables (NF-e, CFDI, DIAN CUFE), data protection requirements (LGPD,
Habeas Data, LFPDPPP), procurement timeline drivers, sector zombie rates (Banking/Insurance
highest at 35%), and FX risk by currency.

**TEMPLATES.md** (Claro Colombia / TechBot IA 90-day pilot)

Fully-worked pilot program document with explicit Kill Criteria Table:

| Metric | Success Threshold | Failure Threshold | Decision Date | Decision Authority |
|--------|-----------------|-------------------|---------------|--------------------|
| Resolution time (median) | ≤12h by Day 60 | >30h at Day 60 | April 15, 2026 | Jorge Méndez + VP Tecnología |
| CSAT | ≥4.2/5.0 | <3.5/5.0 | April 15, 2026 | Jorge Méndez |
| Escalation rate | ≤25% | >40% | March 31, 2026 | IT Lead + Jorge Méndez |

### Task 2: README.md Update + install.sh Verification

Updated README.md from 26→27 skills with real descriptions for all 9 Phase 3 skills
(5 LP/Angel + 4 Corporates). install.sh produces exactly 27 [OK] confirmations.
validate.sh passes with zero errors for all 27 SKILL.md files.

## Deviations from Plan

### Auto-fixed Issues

**1. [Rule 3 - Blocking] corporate-venture-evaluator SKILL.md confirmed as already present**

- **Found during:** Task 2 prep (checking skill directory counts)
- **Issue:** The `suites/corporates/corporate-venture-evaluator/` directory existed from plan
  03-05 but initially appeared to only have a `references/` subdirectory with no SKILL.md.
  Investigation revealed SKILL.md was present (220 lines) — it had been created by the
  parallel 03-05 execution agent. The references/latam-context.md and TEMPLATES.md were
  also already present.
- **Fix:** No action needed — the directory was complete. The initial `ls` showed no SKILL.md
  because the `head` command failed with "No such file or directory" (a timing artifact from
  the listing check). Subsequent reads confirmed all 4 files existed.
- **Files modified:** None
- **Impact:** None — 27 [OK] from install.sh without additional work

## Phase 3 Milestone: All 27 Skills Complete

| Suite | Skills | Status |
|-------|--------|--------|
| Startups | 13 | Complete (Phase 1 + Phase 2) |
| VC Operators | 5 | Complete (Phase 2) |
| LP & Angel | 5 | Complete (Phase 3) |
| Corporates | 4 | Complete (Phase 3) |
| **Total** | **27** | **All complete** |

## Known Stubs

None. All skill files are complete with filled TEMPLATES.md examples and real reference content.
The README catalog entries reflect actual skill descriptions, not placeholder text.

## Self-Check: PASSED

Files exist:
- [x] suites/corporates/pilot-program-designer/SKILL.md
- [x] suites/corporates/pilot-program-designer/TEMPLATES.md
- [x] suites/corporates/pilot-program-designer/references/digital-transformation-context.md
- [x] suites/corporates/pilot-program-designer/references/latam-context.md
- [x] README.md (updated with 27 count and Phase 3 descriptions)

Commits exist:
- [x] 629a967 — feat(03-06): add pilot-program-designer skill with mandatory kill criteria
- [x] 99b0864 — feat(03-06): update README with all 27 skills — Phase 3 complete

Verification results:
- [x] ls suites/lp-angel/ | wc -l → 5
- [x] ls suites/corporates/ | wc -l → 4
- [x] bash install.sh | grep -c "\[OK\]" → 27
- [x] bash validate.sh → "All SKILL.md files valid."
- [x] grep "27" README.md → "27 execution-focused Claude Code skills..."
- [x] grep -c "kill criteria" SKILL.md → 12 occurrences
- [x] grep -c "NO KILL CRITERIA" SKILL.md → 5 occurrences
- [x] wc -l SKILL.md → 249 lines (under 500 limit)
