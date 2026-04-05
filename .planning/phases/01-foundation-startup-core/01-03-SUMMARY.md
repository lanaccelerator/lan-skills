---
phase: 01-foundation-startup-core
plan: 03
subsystem: skills
tags: [venture-model-validator, vc-backability, skill-authoring, latam, scorecard]

# Dependency graph
requires:
  - phase: 01-02
    provides: shared/frameworks/ files (vc-backable-test.md, latam-benchmarks.md, editorial-voice.md)
provides:
  - "venture-model-validator skill: complete 5-file skill directory"
  - "SKILL.md with 8-section structure, YAML frontmatter, three-component description"
  - "TEMPLATES.md filled FinTrack example with scorecard, red flags, LATAM context"
  - "references/vc-backable-criteria.md with 5-framework scoring rubric"
  - "references/latam-context.md with LAVCA 2025 + Cuantico 2026 benchmarks"
  - "references/comparable-companies.md with 11 LATAM company examples"
affects:
  - 01-04 (pitch-deck-builder references venture-model output)
  - 01-05 (go-to-market-strategist — same skill pattern established here)

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "8-section SKILL.md structure: input gathering → frameworks → workflow → output format → LATAM context → tone → proximos pasos → sources"
    - "Three-component YAML description: domain identifier + ALWAYS invoke trigger + negative constraint"
    - "TEMPLATES.md filled example pattern: complete output with real hypothetical startup (not empty placeholders)"
    - "US benchmark annotation protocol: (US-sourced benchmark) → (LATAM, LAVCA 2025 / Cuantico 2026)"
    - "Red flag callout format: [RED FLAG] prefix, not softened concerns"
    - "Tone section pointer pattern: @shared/frameworks/editorial-voice.md reference in every skill"

key-files:
  created:
    - suites/startups/venture-model-validator/SKILL.md
    - suites/startups/venture-model-validator/TEMPLATES.md
    - suites/startups/venture-model-validator/references/vc-backable-criteria.md
    - suites/startups/venture-model-validator/references/latam-context.md
    - suites/startups/venture-model-validator/references/comparable-companies.md
  modified: []

key-decisions:
  - "SKILL.md kept at 123 lines (vs 500-line limit) — all detail moved to references/ files; skill body is workflow instructions only"
  - "TEMPLATES.md uses FinTrack (Mexico City B2B SaaS, SME expense management) as hypothetical — plausible LATAM example that exercises all template sections including LATAM context"
  - "Score out of 25 (5 frameworks × 5 points) with any single criterion below 3 being disqualifying — matches vc-backable-test.md shared framework"
  - "comparable-companies.md includes 11 companies across fintech, SaaS, marketplace, proptech, e-commerce to cover venture-model-validator's full use case range"

patterns-established:
  - "Pattern 1: SKILL.md structure — 8 sections in fixed order; content detail lives in references/ not inline"
  - "Pattern 2: TEMPLATES.md completeness — every section filled with real analysis for a named hypothetical startup; no [Insert here] placeholders"
  - "Pattern 3: LATAM annotation protocol — US benchmark → LATAM adjustment, both labeled with source, every time"
  - "Pattern 4: Red flag format — [RED FLAG] prefix callout in its own section; never buried in prose"

requirements-completed: [STRT-01, QUAL-01, QUAL-02, QUAL-03, QUAL-04, QUAL-05, QUAL-06, QUAL-07, QUAL-08, QUAL-09, QUAL-10, QUAL-11]

# Metrics
duration: 8min
completed: 2026-04-05
---

# Phase 01 Plan 03: Venture Model Validator Summary

**venture-model-validator skill: 5-file directory with YC/Thiel/a16z/Sequoia/Gurley scoring rubric, filled FinTrack LATAM example, and LAVCA 2025 + Cuantico 2026 benchmark annotations**

## Performance

- **Duration:** ~8 min
- **Started:** 2026-04-05T02:40:00Z
- **Completed:** 2026-04-05T02:45:42Z
- **Tasks:** 2
- **Files created:** 5

## Accomplishments

- venture-model-validator SKILL.md: 123 lines, 8-section structure, YAML frontmatter with three-component description, Tone & Editorial Voice section, links to all references/ files
- TEMPLATES.md: filled FinTrack B2B SaaS example with complete scorecard (13/25 score), 3 explicit red flag callouts, comparables table, LATAM context annotations, 5-item Proximos Pasos
- 3 references/ files: scoring rubric (5 frameworks × 5-level scales), LATAM benchmark figures (LAVCA 2025 / Cuantico 2026), 11 LATAM comparable companies with stage/metrics/raise/outcome
- validate.sh passes: "All SKILL.md files valid." with exit 0

## Task Commits

Each task was committed atomically:

1. **Task 1: Write SKILL.md for venture-model-validator** - `76de8d0` (feat)
2. **Task 2: Write TEMPLATES.md and references/ files** - `2004128` (feat)

## Files Created/Modified

- `suites/startups/venture-model-validator/SKILL.md` — Core skill instructions: 8 sections, YAML frontmatter, 5 framework links, LATAM context, tone pointer
- `suites/startups/venture-model-validator/TEMPLATES.md` — Filled FinTrack output example enforcing scorecard structure
- `suites/startups/venture-model-validator/references/vc-backable-criteria.md` — 5-framework scoring rubric with 1–5 scales, red flag triggers, disqualifying conditions
- `suites/startups/venture-model-validator/references/latam-context.md` — LAVCA 2025 + Cuantico 2026 benchmark figures, annotation protocol, sector mix, fundraising stages
- `suites/startups/venture-model-validator/references/comparable-companies.md` — 11 LATAM companies (Nubank, Kavak, Konfío, Alegra, Simetrik, Clip, Bitso, Habi, Rappi, Siigo, Tiendanube) with stage/metrics/raise/outcome

## Decisions Made

- SKILL.md kept at 123 lines — all framework detail in references/, skill body is pure workflow instructions; this is the correct pattern for subsequent skills
- FinTrack hypothetical: Mexico City B2B SaaS for SME expense management — chosen because it scores low enough (13/25) to make red flags meaningful, while being a realistic LATAM startup idea
- Score total is /25 (not /50 as the plan frontmatter mentioned) — aligned with vc-backable-test.md shared framework which uses /25 (5 criteria × 5 max)

## Deviations from Plan

None — plan executed exactly as written. Score total in plan frontmatter references /50 and /25 inconsistently but the TEMPLATES.md uses /25 matching the shared framework definition.

## Issues Encountered

None.

## User Setup Required

None — no external service configuration required.

## Next Phase Readiness

- venture-model-validator is a complete, production-quality skill. Patterns established here (8-section SKILL.md, filled TEMPLATES.md, LATAM annotation, [RED FLAG] format) carry directly to the 4 remaining skills.
- pitch-deck-builder (Plan 04) references venture-model output format — no dependency on files, but the scorecard output is referenced in its workflow
- All 5 shared framework files from Plan 02 are ready and referenced correctly

## Known Stubs

None — all sections filled with real content. TEMPLATES.md uses FinTrack hypothetical with actual analysis, not placeholders.

---

## Self-Check

**Checking files exist:**

- suites/startups/venture-model-validator/SKILL.md — FOUND
- suites/startups/venture-model-validator/TEMPLATES.md — FOUND
- suites/startups/venture-model-validator/references/vc-backable-criteria.md — FOUND
- suites/startups/venture-model-validator/references/latam-context.md — FOUND
- suites/startups/venture-model-validator/references/comparable-companies.md — FOUND

**Checking commits:**

- 76de8d0 (Task 1: SKILL.md) — FOUND
- 2004128 (Task 2: TEMPLATES.md + references/) — FOUND

## Self-Check: PASSED

---

*Phase: 01-foundation-startup-core*
*Completed: 2026-04-05*
