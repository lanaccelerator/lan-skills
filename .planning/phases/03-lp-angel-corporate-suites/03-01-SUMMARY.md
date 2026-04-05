---
phase: 03-lp-angel-corporate-suites
plan: "01"
subsystem: lp-angel-suite
tags: [angel-investing, investor-perspective, latam-context, skill-pattern-setter]
dependency_graph:
  requires: []
  provides: [suites/lp-angel/ pattern, investor-perspective inversion of vc-backable-test.md]
  affects: [03-02, 03-03 — LP/Angel skills use this suite structure]
tech_stack:
  added: []
  patterns: [suite: lp-angel, three-component description, NOT constraint cross-activation guards]
key_files:
  created:
    - suites/lp-angel/angel-investment-analyzer/SKILL.md
    - suites/lp-angel/angel-investment-analyzer/TEMPLATES.md
    - suites/lp-angel/angel-investment-analyzer/references/angel-investment-criteria.md
    - suites/lp-angel/angel-investment-analyzer/references/latam-context.md
  modified: []
decisions:
  - "AgriPay Colombia (Bogotá agtech+fintech, $85k MRR, Seed) chosen as TEMPLATES.md example — Colombian agriculture sector enables FINAGRO, Nequi/Daviplata, and Semana Santa seasonality specificity not available in prior examples"
  - "Investor timing added as 5th criterion instead of Team Differentiation — from the investor's seat, entry timing (too early/too late) replaces the founder-perspective 'why you' question"
  - "WATCH verdict (16/25) chosen over INVEST or PASS — three criteria at 3/5 models the most instructive ambiguous case; PASS would be too binary to demonstrate the WATCH-to-INVEST conversion conditions"
  - "SFC regulatory gap positioned as primary red flag — Colombian fintech operating without Superintendencia Financiera licensing at $85k MRR is the most common kill-shot for LATAM fintech angels"
metrics:
  duration: "4 minutes"
  completed_date: "2026-04-05"
  tasks_completed: 2
  tasks_total: 2
  files_created: 4
  files_modified: 0
---

# Phase 03 Plan 01: angel-investment-analyzer Summary

angel-investment-analyzer skill — investor-perspective deal analysis with INVEST/PASS/WATCH scorecard, LATAM comparables, and SFC-aware Colombian agtech example using AgriPay Colombia.

## What Was Built

The `suites/lp-angel/angel-investment-analyzer/` directory was created and fully populated,
establishing the lp-angel/ suite pattern for all 4 remaining LP/Angel skills.

**SKILL.md (155 lines, suite: lp-angel):**
- Three-component description: domain identification (LP and angel investor due diligence) +
  ALWAYS directive + two explicit NOT constraints (venture-model-validator, deal-memo-writer)
- Inverts the 5 criteria from vc-backable-test.md from founder perspective to investor
  perspective — Return Potential, Moat Durability, Customer Validation, Exit Credibility,
  Investor Timing
- Step 1 collects 6 investor-perspective inputs (deal terms, ownership target, thesis fit)
- References @shared/frameworks/vc-backable-test.md and @shared/frameworks/editorial-voice.md
- Verdict thresholds: INVEST (≥18, no criterion <3), WATCH (14–17, all ≥3), PASS (any <2)
- Próximos Pasos: investor-facing diligence actions within 14 days (not founder advice)

**TEMPLATES.md (223 lines):**
- Fully filled AgriPay Colombia example (Bogotá agtech+fintech, Seed, $85k MRR)
- Angel: Catalina Reyes, $50k check from $500k portfolio
- WATCH verdict (16/25): 3×3/5 + 1×4/5 + 1×3/5 across 5 investor criteria
- Two explicit [RED FLAG] callouts: competitor crowding (Agrapp/FundAgro/TiendaPago) +
  SFC regulatory gap
- LATAM Comparables: Agrapp (Colombia), Konfío (Mexico), Agrostar (Brazil — only verifiable
  LATAM agtech acquisition exit at venture multiples)
- LATAM Context with annotated benchmarks (US-sourced vs LATAM, LAVCA 2025)
- Colombian specificity: FINAGRO, Nequi/Daviplata payment rails, Semana Santa seasonality
- 4 Próximos Pasos with SFC regulatory opinion as primary action

**references/angel-investment-criteria.md (~110 lines):**
- Investor question inversion table: 5 rows mapping founder questions to investor questions
- Scoring rubrics 1–5 for all 5 investor-lens criteria
- INVEST/PASS/WATCH decision rules with explicit threshold conditions
- Common red flag triggers that require [RED FLAG] callout regardless of score

**references/latam-context.md (~100 lines):**
- LATAM angel check benchmarks with US comparison ($25k–$100k vs $100k–$500k)
- Angel-to-Series A conversion: 12% LATAM vs 22% US
- Country-specific application rules: Colombia (SFC, FINAGRO, Nequi/Daviplata), Brazil (BACEN,
  PIX), Mexico (CNBV, OXXO Pay)
- Exit environment table: strategic acquisition most common, IPO rare, ~35–40% write-off rate

## Deviations from Plan

**1. [Rule 2 - Enhancement] Investor Timing replaces Team Differentiation as Criterion 5**
- **Found during:** Task 1 — designing the investor question inversion table
- **Issue:** vc-backable-test.md Criterion 5 is "Team Differentiation (YC Why You)." From the
  investor's seat, evaluating whether the investor is entering at the right moment (too early/
  too late) is more actionable than re-evaluating the founder's team credentials — the angel
  cannot change who the founders are, but can choose when to invest.
- **Fix:** Criterion 5 renamed to "Investor Timing" with investor-specific rubric. Team
  assessment is embedded in Customer Validation Strength (Criterion 3) where team execution
  evidence appears as customer retention and acquisition data.
- **Impact:** Scorecard remains 5 criteria, 25-point scale. No structural change. Team
  quality still assessed; entry timing explicitly evaluated.

None of the plan's specified file structure, content requirements, or verification criteria
were modified. The inversion creates a more actionable investor tool while maintaining the
mirror relationship with venture-model-validator.

## Known Stubs

None. All 4 files contain complete, substantive content. TEMPLATES.md is fully filled with
the AgriPay Colombia example — no placeholders remain.

## Self-Check: PASSED

Files created:
- suites/lp-angel/angel-investment-analyzer/SKILL.md — FOUND
- suites/lp-angel/angel-investment-analyzer/TEMPLATES.md — FOUND
- suites/lp-angel/angel-investment-analyzer/references/angel-investment-criteria.md — FOUND
- suites/lp-angel/angel-investment-analyzer/references/latam-context.md — FOUND

Commits verified:
- e466476 (Task 1: SKILL.md + references/) — FOUND
- 6d1d252 (Task 2: TEMPLATES.md) — FOUND
