---
phase: 02-startup-expansion-vc-operators
plan: "03"
subsystem: skill-authoring
tags: [fundraising, readiness-audit, stage-gating, latam-benchmarks, carta-q1-2026]

# Dependency graph
requires:
  - phase: 01-foundation-startup-core
    provides: validate.sh enforcement, SKILL.md pattern, editorial-voice.md, latam-benchmarks.md, yc-metrics.md
  - phase: 02-01
    provides: unit-economics-calculator (named negative constraint in description)
provides:
  - fundraising-readiness-audit SKILL.md with 5-dimension readiness assessment
  - TEMPLATES.md with EduTech MX filled example and CONDITIONAL verdict
  - references/readiness-rubric.md with stage thresholds for all 4 fundraising stages
  - references/latam-comparable-raises.md with LAVCA 2025 and Carta Q1 2026 benchmarks
affects: [fundraising-agent, pitch-deck-builder, data-room-builder]

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "5-dimension readiness scorecard (READY/CONDITIONAL/NOT READY per dimension)"
    - "Stage-gated thresholds: pre-seed / seed / Series A / Series B with explicit metric floors"
    - "Benchmark annotation protocol: (US-sourced benchmark, Carta Q1 2026) and (LATAM, LAVCA 2025)"

key-files:
  created:
    - suites/startups/fundraising-readiness-audit/SKILL.md
    - suites/startups/fundraising-readiness-audit/TEMPLATES.md
    - suites/startups/fundraising-readiness-audit/references/readiness-rubric.md
    - suites/startups/fundraising-readiness-audit/references/latam-comparable-raises.md
  modified: []

key-decisions:
  - "EduTech MX (Mexico City K-12 SaaS) chosen as TEMPLATES.md example — edtech is LATAM-credible and creates a realistic CONDITIONAL verdict showing all 3 verdict states (NOT READY, CONDITIONAL, READY) across 5 dimensions"
  - "Down rounds figure (14.5%) attributed to Carta Q1 2026 not LAVCA — corrected annotation after initial draft"
  - "readiness-rubric.md includes explicit section for Series B despite it being rare in LATAM — completeness prevents skill from appearing wrong if user targets growth stage"

patterns-established:
  - "readiness-rubric.md pattern: each stage has 5 sub-sections (metrics/data room/narrative/team/comparables) with READY/CONDITIONAL/NOT READY decision criteria"
  - "latam-comparable-raises.md is skill-specific enrichment over latam-benchmarks.md — includes deal tables, process norms, and timing benchmarks not in shared file"

requirements-completed: [STRT-08]

# Metrics
duration: 4min
completed: 2026-04-05
---

# Phase 02 Plan 03: Fundraising Readiness Audit Summary

**5-dimension fundraising readiness audit with stage-gated thresholds, EduTech MX CONDITIONAL verdict example, and Carta Q1 2026 + LAVCA 2025 benchmark sourcing**

## Performance

- **Duration:** 4 min
- **Started:** 2026-04-05T04:05:03Z
- **Completed:** 2026-04-05T04:09:00Z
- **Tasks:** 2 of 2
- **Files modified:** 4

## Accomplishments

- SKILL.md: 5-dimension readiness assessment (metrics threshold, data room, narrative clarity, team gaps, comparable raises) with stage-gated thresholds and three-state verdict system (READY/CONDITIONAL/NOT READY)
- TEMPLATES.md: EduTech MX example with realistic CONDITIONAL verdict — 2 of 5 dimensions CONDITIONAL, 1 NOT READY, 1 READY — plus correctly labeled Carta Q1 2026 and LAVCA 2025 benchmarks
- references/readiness-rubric.md: All 4 fundraising stages with explicit metric floors, data room minimums, narrative checklists, and team gap criteria
- references/latam-comparable-raises.md: LATAM raise table by stage, comparable company examples for edtech and B2B SaaS, Q4 2025 market context, LATAM process norms

## Task Commits

1. **Task 1: fundraising-readiness-audit SKILL.md** — `5095744` (feat)
2. **Task 2: TEMPLATES.md and references/** — `c32257a` (feat)

## Files Created/Modified

- `suites/startups/fundraising-readiness-audit/SKILL.md` — 144-line skill with 5-dimension workflow, stage gating, LATAM context, editorial voice pointer
- `suites/startups/fundraising-readiness-audit/TEMPLATES.md` — EduTech MX scorecard with CONDITIONAL overall verdict, comparable raises table, LATAM context box
- `suites/startups/fundraising-readiness-audit/references/readiness-rubric.md` — Stage-by-stage thresholds for pre-seed, seed, Series A, Series B with decision criteria per dimension
- `suites/startups/fundraising-readiness-audit/references/latam-comparable-raises.md` — LATAM raise benchmarks with timing data, comparable deal tables (edtech + B2B SaaS), Q4 2025 market context

## Decisions Made

- EduTech MX chosen as example: realistic LATAM edtech company at lower-quartile Seed metrics, producing a genuinely useful CONDITIONAL verdict that shows what a real blocker list looks like
- Corrected down rounds annotation from LAVCA 2025 to Carta Q1 2026 during inline review — the 14.5% figure is a Carta-sourced US benchmark, not LATAM-specific
- Series B thresholds included in readiness-rubric.md despite low LATAM frequency — skill must not error when a founder with $1M+ MRR targets growth-stage fundraising

## Deviations from Plan

**1. [Rule 1 - Bug] Corrected benchmark attribution for down rounds figure**
- **Found during:** Task 2 verification (grep output review)
- **Issue:** TEMPLATES.md line 78 attributed "14.5% down rounds" to `(LATAM, LAVCA 2025)` when the plan spec explicitly states this figure is "(US-sourced benchmark, Carta Q1 2026)"
- **Fix:** Updated annotation from LAVCA 2025 to Carta Q1 2026
- **Files modified:** suites/startups/fundraising-readiness-audit/TEMPLATES.md
- **Committed in:** c32257a (Task 2 commit)

---

**Total deviations:** 1 auto-fixed (Rule 1 — incorrect benchmark attribution)
**Impact on plan:** Minor correction. No scope change. Benchmark attribution is critical for skill credibility — Carta and LAVCA figures must not be swapped.

## Issues Encountered

- Carta Q1 2026 PDF could not be read (poppler-utils not installed). All required Carta figures (20.6% graduation rate, 1.9 years median time, 14.5% down rounds) were available in 02-RESEARCH.md which extracted them from the PDF during the research phase. No data gap.

## Known Stubs

None. All data in TEMPLATES.md is sourced from latam-benchmarks.md, RESEARCH.md, and the readiness-rubric.md. No placeholder figures.

## Next Phase Readiness

- fundraising-readiness-audit skill directory is complete with 4 files, passes validate.sh
- fundraising-agent (STRT-13, later in phase) will reference this skill as a sibling
- data-room-builder (Phase 1) is referenced in readiness-rubric.md for Series A data room minimum

---
*Phase: 02-startup-expansion-vc-operators*
*Completed: 2026-04-05*
