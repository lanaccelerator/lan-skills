---
phase: 03-lp-angel-corporate-suites
plan: "05"
subsystem: suites/corporates
tags:
  - corporates
  - startup-solution-matcher
  - corporate-venture-evaluator
  - cvc
  - procurement
  - innovation-theater
dependency_graph:
  requires:
    - 03-04  # open-innovation-scanner (corporate suite pattern-setter)
  provides:
    - startup-solution-matcher skill (CB Insights/Gartner methodology)
    - corporate-venture-evaluator skill (BCG/GCV Institute CVC framework)
  affects:
    - 03-06  # pilot-program-designer (completes corporates suite)
tech_stack:
  added: []
  patterns:
    - "[RED FLAG] procurement risk callouts for startup shortlisting"
    - "[THEATER] CVC theater detection for FOMO-driven programs"
    - "4-dimension CVC readiness scorecard (/20)"
    - "digital-transformation-context.md distinct subset per skill (D-36 locked)"
key_files:
  created:
    - suites/corporates/startup-solution-matcher/SKILL.md
    - suites/corporates/startup-solution-matcher/references/digital-transformation-context.md
    - suites/corporates/startup-solution-matcher/references/latam-context.md
    - suites/corporates/startup-solution-matcher/TEMPLATES.md
    - suites/corporates/corporate-venture-evaluator/SKILL.md
    - suites/corporates/corporate-venture-evaluator/references/digital-transformation-context.md
    - suites/corporates/corporate-venture-evaluator/references/latam-context.md
    - suites/corporates/corporate-venture-evaluator/TEMPLATES.md
  modified: []
decisions:
  - "startup-solution-matcher digital-transformation-context.md: CB Insights market map + Gartner Hype Cycle + Plug and Play 3-phase evaluation — Technology Evaluation chapter subset"
  - "corporate-venture-evaluator digital-transformation-context.md: BCG 4-model CVC framework + GCV Institute benchmarks + Intel Capital case study — Corporate Venturing chapter subset"
  - "FEMSA/OXXO chosen for startup-solution-matcher TEMPLATES.md — CPG/retail provides computer vision shelf monitoring scenario with LATAM entity procurement trap as primary teaching example"
  - "Grupo Sura (Colombia) chosen for corporate-venture-evaluator TEMPLATES.md — 14/20 READY WITH CONDITIONS verdict demonstrates legal review cost trap and board horizon misalignment as primary teaching examples"
  - "[RED FLAG] procurement flags added to startup-solution-matcher — parallel to [THEATER] flags in open-innovation-scanner; procurement-specific failure modes warrant their own flag prefix"
metrics:
  duration_minutes: 8
  completed_date: "2026-04-05"
  tasks_completed: 2
  files_created: 8
  files_modified: 0
---

# Phase 03 Plan 05: startup-solution-matcher and corporate-venture-evaluator Summary

**One-liner:** Two corporate skills completing the startup evaluation and CVC readiness quadrant — startup-solution-matcher using CB Insights/Gartner/Plug and Play procurement methodology, corporate-venture-evaluator using BCG 4-model framework and GCV Institute benchmarks, both with [THEATER] detection and distinct non-overlapping digital-transformation-context.md subsets (D-36 maintained).

## What Was Built

### Task 1: startup-solution-matcher (4 files)

`suites/corporates/startup-solution-matcher/`

A corporate procurement skill that produces ranked startup shortlists for specific business problems. Core workflow: 7-question input gathering → CB Insights market map methodology → Gartner Hype Cycle positioning → 4-dimension scoring (strategic fit, LATAM availability, integration complexity, enterprise readiness) → shortlist with [RED FLAG] and [THEATER] callouts → Próximos Pasos with mandatory RFI language.

Key differentiation from open-innovation-scanner: this skill is at the procurement stage (you have a defined problem, now find the right startup to solve it), not the exploration stage. Adds [RED FLAG] callouts for procurement-specific failures (no LATAM legal entity, no API docs, pricing not transparent) that are distinct from the [THEATER] callouts for program design failures.

**TEMPLATES.md:** FEMSA Digital evaluating computer vision shelf monitoring for OXXO stores. Three archetypes: AI-native CV startups (Focal Systems/Trigo — no LATAM entity [RED FLAG]), LATAM-native IoT (enterprise readiness too low [RED FLAG]), and Qualcomm partner build (over budget). [THEATER] callout for missing C-Suite sponsor in a 20,000-store deployment context.

**digital-transformation-context.md subset:** CB Insights market map methodology + Gartner Hype Cycle + Plug and Play 3-phase matching + enterprise readiness criteria + LATAM pilot data. NOT Chesbrough/open innovation. NOT BCG CVC models.

### Task 2: corporate-venture-evaluator (4 files)

`suites/corporates/corporate-venture-evaluator/`

A CVC readiness assessment skill for corporate development teams. Core workflow: 7-question input gathering → 4-dimension readiness scorecard (Strategic Fit / Financial Return Expectations / Organizational Readiness / Deal Flow Access) → /20 score → readiness classification (READY / READY WITH CONDITIONS / NOT READY / THEATER) → optimal model recommendation (captive / LP / accelerator partner / balance sheet) → governance design → 3-year milestones → Próximos Pasos.

Key [THEATER] patterns: FOMO-driven CVC ("our CEO wants one because Softbank has one"), M&A legal review applied to startup investments ($150-200k per deal makes economics impossible below $5M check size), return expectation < 5 years, capital < $10M committed, no external VC on IC.

**TEMPLATES.md:** Grupo Sura (Medellín, Colombia — $4B revenue insurance/banking conglomerate) evaluating $30M insurtech/wealthtech CVC. Score: 14/20 READY WITH CONDITIONS. Strategic Fit 5/5 (insurtech directly disrupts core business), Financial Returns 3/5 (board expects 5-year horizon — too short), Organizational Readiness 3/5 (M&A experience ≠ VC experience), Deal Flow 3/5 (thin Colombia ecosystem). [THEATER] on $180k legal review per deal and Colombia-only deal flow. Recommended: LP + captive hybrid.

**digital-transformation-context.md subset:** BCG 4-model CVC framework + GCV Institute global benchmarks + Intel Capital LATAM case study + IC governance design templates. NOT Chesbrough. NOT CB Insights market maps.

## Deviations from Plan

None — plan executed exactly as written.

D-36 (non-overlapping digital-transformation-context.md) maintained across all 3 corporate skills:
- open-innovation-scanner: Chesbrough Open Innovation / NESTA subset
- startup-solution-matcher: CB Insights / Gartner / Plug and Play technology evaluation subset
- corporate-venture-evaluator: BCG / GCV Institute / Intel Capital corporate venturing subset

Each file has explicit scope declarations ("NOT this skill's scope: [other skills]") to prevent future duplication.

## Verification Results

- `ls suites/corporates/` shows: corporate-venture-evaluator, open-innovation-scanner, pilot-program-designer, startup-solution-matcher
- Both SKILL.md files contain `suite: corporates` and `CORPORATE INNOVATION TEAMS`
- `grep "VC-backable|PMF|investable"` — 0 matches in both new SKILL.md files
- SKILL.md line counts: startup-solution-matcher 212 lines, corporate-venture-evaluator 220 lines (both under 500 limit)
- TEMPLATES.md examples: FEMSA/OXXO (Mexico, retail/CPG) and Grupo Sura (Colombia, financial services) — distinct LATAM scenarios

## Commits

| Task | Name | Commit |
|------|------|--------|
| 1 | startup-solution-matcher | e84273b |
| 2 | corporate-venture-evaluator | 2670180 |

## Known Stubs

None. Both TEMPLATES.md files are fully worked fictional examples with complete analysis.

## Self-Check: PASSED
