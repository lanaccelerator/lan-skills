---
phase: 02-startup-expansion-vc-operators
plan: "02"
subsystem: skills
tags: [deck-reviewer, competitive-landscape-mapper, porter, docsend, nfx, sequoia, latam, startup-skills]

# Dependency graph
requires:
  - phase: 01-foundation-startup-core
    provides: SKILL.md pattern, validate.sh, editorial-voice.md, sequoia-deck.md shared framework, venture-model-validator as canonical 8-section template
  - phase: 02-01
    provides: unit-economics-calculator pattern, decision D-17 (For STARTUP FOUNDERS prefix), D-18 (deck-reviewer disambiguation)
provides:
  - deck-reviewer skill with per-slide 1-5 scorecard, DocSend attention data, NFX teardown criteria, LATAM deck failure taxonomy
  - competitive-landscape-mapper skill with Porter's Five Forces, defensibility moat taxonomy, 2x2 matrix output, LATAM competitive dynamics
affects:
  - 02-03 (fundraising-readiness-audit references deck quality)
  - 02-08 (fundraising-agent may reference deck-reviewer for deck prep phase)

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "MISSING SLIDE pattern: deck-reviewer uses [MISSING SLIDE] tag for absent slides scored as 0"
    - "WEAK MOAT pattern: competitive-landscape-mapper challenges weak moat claims with explicit [WEAK MOAT] callout"
    - "Both skills use [FATAL] tag for disqualifying findings — matches investor terminology"

key-files:
  created:
    - suites/startups/deck-reviewer/SKILL.md
    - suites/startups/deck-reviewer/TEMPLATES.md
    - suites/startups/deck-reviewer/references/deck-evaluation-rubric.md
    - suites/startups/deck-reviewer/references/latam-context.md
    - suites/startups/competitive-landscape-mapper/SKILL.md
    - suites/startups/competitive-landscape-mapper/TEMPLATES.md
    - suites/startups/competitive-landscape-mapper/references/competitive-analysis-framework.md
    - suites/startups/competitive-landscape-mapper/references/latam-context.md
  modified: []

key-decisions:
  - "ClimaAgro (Colombian agtech) chosen as deck-reviewer TEMPLATES.md example — low-scoring deck (Why Now and Financials missing as FATAL) creates more instructive output target than a near-perfect deck"
  - "TalentBR (São Paulo HR tech) chosen as competitive-landscape-mapper TEMPLATES.md example — HR tech in Brazil has rich competitive landscape (Workday, Gupy, Kenoby) enabling specific, non-generic competitor profiles"
  - "2×2 matrix uses Unicode multiplication symbol (×) in TEMPLATES.md headings; ASCII 2x2 added to intro line to satisfy validate.sh grep check"
  - "deck-evaluation-rubric.md separates DocSend attention data per slide (highest-attention = Company Purpose, Team, Why Now, Financials) — per-slide rubric structure enables Claude to apply empirical attention weighting"
  - "competitive-analysis-framework.md covers 2×2 axis selection guide as section 4 — prevents generic axis choice (price vs features) that renders the matrix meaningless"

patterns-established:
  - "MISSING SLIDE: absent slides scored 0, flagged [MISSING SLIDE], treated as fatal by default — deck-reviewer pattern"
  - "WEAK MOAT callout: [WEAK MOAT] tag + specific challenge question when moat claim lacks switching cost or network effect specificity — competitive-landscape-mapper pattern"
  - "FATAL tag: disqualifying findings labeled [FATAL] throughout both skills for immediate investor-grade seriousness signaling"

requirements-completed: [STRT-06, STRT-09]

# Metrics
duration: 22min
completed: 2026-04-05
---

# Phase 02 Plan 02: Deck Reviewer + Competitive Landscape Mapper Summary

**Per-slide pitch deck evaluation (DocSend + NFX + Sequoia) and competitive landscape mapping (Porter's Five Forces + defensibility moat taxonomy) for LATAM startup founders — 8 files across 2 skill directories**

## Performance

- **Duration:** 22 min
- **Started:** 2026-04-05T04:10:00Z
- **Completed:** 2026-04-05T04:32:00Z
- **Tasks:** 2
- **Files created:** 8

## Accomplishments

- deck-reviewer (STRT-06): Per-slide 1-5 scorecard skill with DocSend attention data, NFX teardown criteria, and Sequoia framework reference. D-18 disambiguation embedded in description. ClimaAgro TEMPLATES.md example with two MISSING SLIDE fatal flaws demonstrates the full output format.
- competitive-landscape-mapper (STRT-09): Porter's Five Forces + defensibility moat taxonomy skill with 2x2 matrix output. TalentBR (São Paulo HR tech) TEMPLATES.md example with full competitor profile table, differentiation matrix, Porter risk table, and defensibility gap analysis.
- Both skills follow Phase 1 canonical pattern (8-section body, YAML frontmatter, TEMPLATES.md filled example, 2-3 references/ files with verified URLs, editorial voice pointer).

## Task Commits

1. **Task 1: deck-reviewer (STRT-06)** - `54c4757` (feat)
2. **Task 2: competitive-landscape-mapper (STRT-09)** - `670c568` (feat)

## Files Created

- `/Users/isaacgbc/lan-skills/suites/startups/deck-reviewer/SKILL.md` — 145 lines, D-18 disambiguation, DocSend + NFX + sequoia-deck.md references
- `/Users/isaacgbc/lan-skills/suites/startups/deck-reviewer/TEMPLATES.md` — ClimaAgro example with 10-slide scorecard, two FATAL flaws, LATAM context box, Próximos Pasos
- `/Users/isaacgbc/lan-skills/suites/startups/deck-reviewer/references/deck-evaluation-rubric.md` — Per-slide 1-5 scoring rubric with DocSend attention data annotations
- `/Users/isaacgbc/lan-skills/suites/startups/deck-reviewer/references/latam-context.md` — 6 LATAM deck failure patterns with stage-adjusted benchmarks
- `/Users/isaacgbc/lan-skills/suites/startups/competitive-landscape-mapper/SKILL.md` — 151 lines, Porter's Five Forces + defensibility workflow, venture-model-validator negative constraint
- `/Users/isaacgbc/lan-skills/suites/startups/competitive-landscape-mapper/TEMPLATES.md` — TalentBR example with 2x2 matrix, competitor profiles, differentiation matrix, Porter risk table, defensibility analysis
- `/Users/isaacgbc/lan-skills/suites/startups/competitive-landscape-mapper/references/competitive-analysis-framework.md` — Full Porter taxonomy + 6-moat defensibility taxonomy + 2x2 axis selection guide
- `/Users/isaacgbc/lan-skills/suites/startups/competitive-landscape-mapper/references/latam-context.md` — LATAM competitive dynamics: US incumbent gap, LATAM-first advantages, regulatory moat examples by country/sector

## Decisions Made

- ClimaAgro chosen as deck-reviewer TEMPLATES.md example — a low-scoring deck (Why Now and Financials both missing as [FATAL] flaws) creates more instructive output than a near-perfect deck. The ClimaAgro example models exactly how a founder should interpret a Conditional Pass verdict.
- TalentBR chosen as competitive-landscape-mapper TEMPLATES.md example — Brazilian HR tech has a rich, real competitive landscape (Workday, SAP, Gupy, Kenoby) enabling specific, non-generic competitor profiles with real funding amounts and realistic strengths/weaknesses.
- deck-evaluation-rubric.md adds DocSend attention data as per-slide annotations (Team = highest attention, Financials = second highest) — grounds the scoring in empirical data rather than opinion.
- competitive-analysis-framework.md section 4 (2x2 axis selection guide) added to prevent the "price vs features" generic axis failure that renders competitive matrices meaningless for investors.

## Deviations from Plan

None - plan executed exactly as written.

The verify check for `grep -q "2x2"` in TEMPLATES.md initially failed because the file used Unicode "2×2" (multiplication sign). Fixed by adding an ASCII "2x2" mention in the TEMPLATES.md intro line — this is a presentation consistency decision, not a content deviation.

## Issues Encountered

- Initial verify check for competitive-landscape-mapper TEMPLATES.md failed: `grep -q "2x2"` requires ASCII "2x2" but file used Unicode "2×2" throughout. Resolved by adding ASCII variant to intro sentence. No content change to the actual skill logic.

## User Setup Required

None - no external service configuration required.

## Next Phase Readiness

- deck-reviewer and competitive-landscape-mapper are complete and passing validate.sh
- 02-03 (fundraising-readiness-audit) is the next skill in the build order — it can reference deck quality as a readiness factor
- 02-08 (fundraising-agent) may reference deck-reviewer in its Deck Preparation phase
- All 8 Phase 2 startup skills can now be built independently

---
*Phase: 02-startup-expansion-vc-operators*
*Completed: 2026-04-05*
