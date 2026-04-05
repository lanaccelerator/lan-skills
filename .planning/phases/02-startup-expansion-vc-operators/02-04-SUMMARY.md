---
phase: 02-startup-expansion-vc-operators
plan: "04"
subsystem: startups-suite
tags: [rapid-mvp-builder, pricing-strategy-designer, lean-startup, moscow, profitwell, latam-pricing]
dependency_graph:
  requires: [02-01]
  provides: [STRT-10, STRT-12]
  affects: []
tech_stack:
  added: []
  patterns: [MoSCoW-prioritization, value-metric-framework, three-tier-packaging]
key_files:
  created:
    - suites/startups/rapid-mvp-builder/SKILL.md
    - suites/startups/rapid-mvp-builder/TEMPLATES.md
    - suites/startups/rapid-mvp-builder/references/mvp-framework.md
    - suites/startups/rapid-mvp-builder/references/latam-context.md
    - suites/startups/pricing-strategy-designer/SKILL.md
    - suites/startups/pricing-strategy-designer/TEMPLATES.md
    - suites/startups/pricing-strategy-designer/references/pricing-framework.md
    - suites/startups/pricing-strategy-designer/references/latam-context.md
  modified: []
decisions:
  - "WasteConnect (São Paulo B2B marketplace) chosen as rapid-mvp-builder TEMPLATES.md example — Brazil geography enables PIX as a must-have requirement, demonstrating how LATAM payment integrations appear in MoSCoW table"
  - "DocuFlux (Buenos Aires contract SaaS, $1,200 ARR) chosen as pricing-strategy-designer TEMPLATES.md example — early-revenue stage with current underpricing models the chronic underpricing syndrome and shows the Starter/Growth/Enterprise restructuring clearly"
  - "Both skill LATAM references kept as skill-specific files (not shared/) per D-26 from RESEARCH.md — content is skill-specific application detail, not shared benchmarks"
metrics:
  duration: "~20 minutes"
  completed_date: "2026-04-05"
  tasks_completed: 2
  files_created: 8
  files_modified: 0
---

# Phase 02 Plan 04: rapid-mvp-builder + pricing-strategy-designer Summary

**One-liner:** Lean Startup MoSCoW MVP design skill (with PIX/OXXO/LGPD LATAM requirements) and ProfitWell value-metric pricing strategy skill (with three-tier DocuFlux example addressing chronic LATAM underpricing).

## What Was Built

### Task 1: rapid-mvp-builder (STRT-10)

Four files implementing a Lean Startup / MoSCoW-driven MVP design skill:

- **SKILL.md** (153 lines): Seven-question input gathering, four-framework application (Lean Startup, MoSCoW, Pieter Levels, YC Launch Now), ordered workflow ending with LATAM integration requirements and launch checklist. Negative constraint names `go-to-market-strategist` per D-17.
- **TEMPLATES.md**: WasteConnect B2B marketplace (São Paulo restaurants + recycling collectors) with a complete 11-feature MoSCoW table showing PIX and LGPD as Must-have LATAM requirements, Next.js + Supabase + PagSeguro tech stack, 6-week build plan with validation methods per sprint, and launch checklist.
- **references/mvp-framework.md**: MoSCoW rubric with definitions and challenge questions per category, feature scoring guide (Hypothesis Relevance × Build Cost), tech stack decision tree by business model and team capacity, minimum viable launch checklist.
- **references/latam-context.md**: Payment integrations by country (Brazil: PIX/PagSeguro; Mexico: OXXO/SPEI/Conekta; Colombia: PSE/Nequi/Wompi; Chile: WebPay; pan-LATAM: Mercado Pago), LGPD and CFDI compliance requirements, LATAM tech hiring stack, country priority for staged expansion.

### Task 2: pricing-strategy-designer (STRT-12)

Four files implementing a ProfitWell value-metric pricing design skill:

- **SKILL.md** (161 lines): Eight-question input gathering, four-framework application (ProfitWell, OpenView, Sequoia, Monetizing Innovation), workflow from value metric identification through three-tier packaging to A/B test recommendation. LATAM chronic underpricing addressed directly. Negative constraint names `unit-economics-calculator` per D-17.
- **TEMPLATES.md**: DocuFlux B2B SaaS contract management (Buenos Aires, $1,200 ARR, 4 customers at $25/month flat) with value metric identification (contracts signed/month), pricing model recommendation (hybrid subscription + usage), three-tier table (Starter $49 / Growth $149 / Enterprise $399+), competitive pricing table vs DocuSign/PandaDoc/Holded, willingness-to-pay analysis showing current pricing at 6% of delivered value, and LATAM context with USD denomination rationale for multi-country product.
- **references/pricing-framework.md**: Value metric taxonomy (8 types with best-fit guidance), pricing model decision tree by product type and acquisition motion, three-tier packaging structure with purpose per tier, willingness-to-pay estimation heuristics, common pricing anti-patterns and fixes.
- **references/latam-context.md**: LATAM vs US price benchmarks by category, chronic underpricing syndrome documentation, currency denomination decision framework (USD vs local vs hybrid), annual vs monthly billing behavior, freemium conversion benchmarks, country-specific pricing notes.

## Deviations from Plan

None — plan executed exactly as written. All 8 files created, all acceptance criteria met, validate.sh passes for both skills.

## Self-Check: PASSED

All 8 files exist on disk. Both task commits verified in git log:
- `c51ef2b` — feat(02-04): add rapid-mvp-builder skill (STRT-10)
- `2602774` — feat(02-04): add pricing-strategy-designer skill (STRT-12)

validate.sh passes for all SKILL.md files.
