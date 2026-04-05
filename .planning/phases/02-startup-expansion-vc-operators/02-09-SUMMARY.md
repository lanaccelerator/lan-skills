---
phase: 02-startup-expansion-vc-operators
plan: "09"
subsystem: skills
tags: [thesis-builder, fundraising-agent, vc-operators, startups, VCOP-05, STRT-13]
dependency_graph:
  requires: ["02-07", "02-08"]
  provides: [VCOP-05, STRT-13]
  affects: [vc-operators suite complete, startups suite complete, Phase 2 complete]
tech_stack:
  added: []
  patterns:
    - 7-section investment thesis document structure (GP/partner voice)
    - 3-phase fundraising orchestration with non-blocking skill integration (D-21)
    - CC BY-NC-SA 4.0 attribution compliance (lore.vc)
    - D-22 9-column investor target list standard
key_files:
  created:
    - suites/vc-operators/thesis-builder/SKILL.md
    - suites/vc-operators/thesis-builder/TEMPLATES.md
    - suites/vc-operators/thesis-builder/references/thesis-framework.md
    - suites/vc-operators/thesis-builder/references/latam-fund-context.md
    - suites/startups/fundraising-agent/SKILL.md
    - suites/startups/fundraising-agent/TEMPLATES.md
    - suites/startups/fundraising-agent/references/lore-vc-framework.md
    - suites/startups/fundraising-agent/references/investor-research-guide.md
    - suites/startups/fundraising-agent/references/outreach-templates.md
  modified: []
decisions:
  - "Cóndor Ventures Fund I used for thesis-builder TEMPLATES.md (consistent with prior VC operator TEMPLATES.md pattern) — Brazil/Mexico SME fintech credit thesis chosen for specificity and illustrative Anti-Portfolio section"
  - "fundraising-agent SKILL.md at 196 lines (well under 400 limit) — all framework depth in 3 references/ files per D-20"
  - "lore-vc-framework.md CC BY-NC-SA 4.0 attribution as literal first line (not in comments) to satisfy the mandatory D-20 attribution requirement and pass automated head -1 check"
  - "CloudMed (Bogotá healthtech SaaS) chosen as fundraising-agent TEMPLATES.md example — Colombia geography and healthtech sector produce distinct regulatory context (SDS, habeas data) from prior LATAM examples"
  - "Investor target list in TEMPLATES.md uses real LATAM VC fund names (Magma Partners, ALLVP, Platanus, 500 Latam, Rokk3r) — named funds produce higher-quality output targets than generic placeholders"
metrics:
  duration: "10 minutes"
  completed: "2026-04-05T04:57:25Z"
  tasks: 2
  files_created: 9
  files_modified: 0
---

# Phase 02 Plan 09: Thesis Builder + Fundraising Agent Summary

**One-liner:** 7-section GP investment thesis builder (USV/a16z frameworks, Cóndor Ventures example) + 3-phase fundraising co-pilot with lore.vc CC BY-NC-SA 4.0 attribution, 9-column investor target list, and 5 non-blocking Phase 1 skill integrations.

## What Was Built

### Task 1: thesis-builder (VCOP-05) — 4 files

Completed the VC operator suite (5th and final skill). The thesis-builder helps GPs
articulate investment theses from the GP/partner perspective using USV, a16z, and Notation
Capital frameworks.

**SKILL.md:** 189 lines. 7-section thesis workflow (Core Hypothesis, Market Thesis, Pattern
Matching, Portfolio Construction, Anti-Portfolio Analysis, Thesis Evolution, Market Sizing).
GP voice throughout. USV network layer model, a16z contrarian belief format, Notation
Capital emerging manager differentiation. Thesis Stress Test section forces GPs to
confront the weakest challenge before LPs do.

**TEMPLATES.md:** Cóndor Ventures Fund I complete investment thesis — Brazil/Mexico SME
fintech credit. Distinctive Core Hypothesis ("banks cannot adapt cost structures fast
enough"), filled Anti-Portfolio with 5 explicit exclusions and reasons, Portfolio Construction
table, Thesis Stress Test. Full 7-section example.

**references/thesis-framework.md:** USV layer model (Networks → Markets → Infrastructure →
Applications), a16z thesis writing principles (contrarian, falsifiable, fund-specific
advantage), Notation Capital emerging manager alpha sources, portfolio construction formulas
(reserve ratio, ownership targeting, return math), anti-portfolio analysis framework.

**references/latam-fund-context.md:** LATAM structural shifts (PIX, open banking, CFDI 4.0),
Cuantico 2026 sector/geography data (fintech 61%, Brazil 47%, Mexico 31.5%), DFI LP
requirements (development additionality thesis), family office LP alignment, exit environment
context, LATAM discount annotation standard (30-50% below US at same vintage).

### Task 2: fundraising-agent (STRT-13) — 5 files

Completed the startup suite (13th and final skill). The most complex skill in all of Phase 2.

**SKILL.md:** 196 lines (D-20 constraint: under 400). 3-phase orchestration workflow.
D-21 non-blocking: 5 Phase 1 skill integrations offered as optional ("Y/N — you can
proceed either way") — venture-model-validator, fundraising-readiness-audit, pitch-deck-builder,
data-room-builder, unit-economics-calculator. D-22 9-column investor target list. LATAM
context (3+ months longer timeline, warm intro dependency, currency in USD).

**TEMPLATES.md:** CloudMed (Bogotá healthtech SaaS, $38k MRR) complete 3-phase example.
Integration check table showing 5 Phase 1 skills with status. 9-column investor target
list (first 5 of 25 with real LATAM VC names). Phase B outreach examples. Phase C term
sheet checklist. Process management tracker.

**references/lore-vc-framework.md:** First line = CC BY-NC-SA 4.0 attribution (mandatory
per D-20). Full 3-phase framework summary (Preparation 4-6 weeks, Fundraising 8-12 weeks,
Closing 2-4 weeks) with LATAM adaptation notes per phase.

**references/investor-research-guide.md:** NFX Signal, Crunchbase, LinkedIn, Latitud Scout
research methodology. Per-investor meeting prep brief template. Red flags in investor
research (inactive funds, thesis mismatch, portfolio conflicts). LATAM-specific notes
(LAVCA membership, family office fund identification).

**references/outreach-templates.md:** 7 templates with Email + WhatsApp variants — warm
intro ask (T1), cold email (T2), meeting follow-up same day (T3), Day 7 (T4), Day 14 (T5),
Day 21 breakup (T6), term sheet follow-up (T7). Follow-up cadence summary table.
All templates in Spanish with note to translate for US investors.

## Phase 2 Completion Status

This plan (02-09) completes Phase 2 entirely:

| Suite | Skills | Status |
|-------|--------|--------|
| Startups | 8 skills (STRT-06 through STRT-13) | Complete |
| VC Operators | 5 skills (VCOP-01 through VCOP-05) | Complete |
| **Phase 2 total** | **13 skills** | **Complete** |

Combined with Phase 1 (5 startup skills + infrastructure), Phase 2 delivers 18 total skills.

## Deviations from Plan

None — plan executed exactly as written.

All mandatory constraints satisfied:
- D-20: SKILL.md under 400 lines (196 lines)
- D-21: Non-blocking integrations ("Y/N — you can proceed either way") on all 5 Phase 1 skills
- D-22: Exactly 9-column investor table (Investor Name | Firm | Stage | Sector | Geography | Check Size | Thesis Fit (1-5) | Portfolio Conflicts | Warm Intro Path)
- D-23: GP voice in thesis-builder throughout
- Pitfall 4: CC BY-NC-SA 4.0 attribution as literal first line of lore-vc-framework.md

## Known Stubs

None. All files contain substantive, filled content. No placeholders, TODO markers, or
empty sections. TEMPLATES.md examples use specific metrics, named investors, and complete
workflow outputs.

## Self-Check: PASSED

All 9 created files confirmed present on disk.
Both task commits confirmed in git log:
- `c149974`: feat(02-09): add thesis-builder skill (VCOP-05)
- `cfec092`: feat(02-09): add fundraising-agent skill (STRT-13)
