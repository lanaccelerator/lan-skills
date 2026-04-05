---
phase: 02-startup-expansion-vc-operators
plan: "06"
subsystem: suites/vc-operators/deal-memo-writer
tags: [vc-operators, ic-memo, deal-memo, latam-fund, investment-committee]
dependency_graph:
  requires: [02-02, 02-03, 02-04, 02-05]
  provides: [deal-memo-writer skill, vc-operators/ suite pattern, latam-fund-context.md reusable reference]
  affects: [02-07-term-sheet-generator, 02-08-portfolio-reporter, 02-09-fund-performance-analyzer]
tech_stack:
  added: []
  patterns: [vc-operators/ skill directory structure, latam-fund-context.md reusable reference pattern, 9-section IC memo format]
key_files:
  created:
    - suites/vc-operators/deal-memo-writer/SKILL.md
    - suites/vc-operators/deal-memo-writer/TEMPLATES.md
    - suites/vc-operators/deal-memo-writer/references/ic-memo-framework.md
    - suites/vc-operators/deal-memo-writer/references/latam-fund-context.md
  modified: []
decisions:
  - "Cóndor Ventures Fund I evaluating PayGo México (B2B fintech Seed) chosen as TEMPLATES.md example — fintech gives CNBV/SOFOM regulatory specifics and OXXO Pay moat that demonstrate LATAM-specific VC operator thinking"
  - "latam-fund-context.md structured as reusable reference — FX risk methodology, country-by-country regulatory table, and exit environment context will carry forward to all 4 remaining vc-operators/ skills unchanged"
  - "SOFOM structure included as closing condition in TEMPLATES.md — reflects real-world Mexican fintech Seed practice (Konfío, Clip, Kueski all used SOFOM before full CNBV license)"
metrics:
  duration: "5 minutes"
  completed_date: "2026-04-05"
  tasks_completed: 2
  tasks_total: 2
  files_created: 4
  files_modified: 0
---

# Phase 02 Plan 06: deal-memo-writer Summary

**One-liner:** IC investment committee memo skill for VC operators — 9-section a16z + Sequoia structure with INVEST/PASS/DEFERRED system, LATAM fund context (FX risk, CNBV/BACEN/SFC regulatory tables), and Cóndor Ventures Fund I evaluating PayGo México as the filled example.

## Tasks Completed

| Task | Name | Commit | Key Files |
|------|------|--------|-----------|
| 1 | Create deal-memo-writer SKILL.md | 8ead00d | suites/vc-operators/deal-memo-writer/SKILL.md |
| 2 | Create TEMPLATES.md and references/ | 4c339ba | TEMPLATES.md, references/ic-memo-framework.md, references/latam-fund-context.md |

## What Was Built

### suites/vc-operators/deal-memo-writer/SKILL.md (176 lines)

The first vc-operators/ skill, establishing the pattern for all 4 remaining VC operator
skills. Key structural choices:

- `suite: vc-operators` (not startups) — establishes the new suite in YAML frontmatter
- D-19 disambiguation: "NOT for founders evaluating their own startup (use
  venture-model-validator for that)" — prevents cross-activation between the VC
  analyst workflow and the founder self-assessment workflow
- 9-section IC memo structure: Executive Summary through Investment Recommendation
- Three-state recommendation system: INVEST / PASS / DEFERRED (with specific conditions)
- LATAM fund context integrated: FX risk mandatory for USD cost + local currency revenue
  deals; LATAM operator experience explicitly assessed (US experience does not qualify)
- References @shared/frameworks/yc-metrics.md for financial benchmarks and
  @shared/frameworks/vc-backable-test.md for market opportunity scoring

### suites/vc-operators/deal-memo-writer/TEMPLATES.md

Complete 9-section IC memo filled from the Cóndor Ventures Fund I GP perspective,
evaluating PayGo México:
- Fund context header: Cóndor Ventures Fund I ($25M, 2022 vintage, Brazil/Mexico B2B
  SaaS, Year 3)
- INVEST recommendation with full proposed terms ($500k SAFE, $12M pre-money, MFN,
  board observer, pro-rata)
- FX risk (MXN/USD) in Risk Register with severity MEDIUM and explicit mitigation
- CNBV fintech license risk at HIGH severity, SOFOM structure as closing condition
- LATAM operator experience CONFIRMED for both founders (ex-Clip México, ex-Kushki)
- All benchmarks labeled: `(US-sourced benchmark, YC / a16z)` and `(LATAM, LAVCA 2025)`

### suites/vc-operators/deal-memo-writer/references/ic-memo-framework.md

9-section IC memo framework sourced from a16z + Sequoia:
- Per-section: purpose, minimum quality threshold, red flag triggers
- Red flags that trigger automatic PASS: no LATAM operator experience, top-down TAM
  only, LTV/CAC < 1:1, "no competition" claim, FX risk absent for LATAM with USD costs
- a16z 6-dimension scoring rubric (Market / Team / Product / Timing / Unit Economics /
  Fit), threshold ≥15/18 for INVEST
- Sequoia narrative elements for IC memo story arc

### suites/vc-operators/deal-memo-writer/references/latam-fund-context.md

Reusable LATAM fund context reference — designed to carry forward unchanged to all
4 remaining vc-operators/ skills:
- FX risk assessment: BRL/USD, MXN/USD, COP/USD volatility tables; severity guide
  (HIGH/MEDIUM/LOW by USD cost exposure percentage)
- Regulatory environment by country: Mexico (CNBV, COFEPRIS, SAT), Brazil (BACEN,
  ANVISA, LGPD), Colombia (SFC, SDS, Habeas Data), Argentina (special case — structure
  separately, USD-indexed contracts required)
- LATAM operator experience standards: what qualifies vs does not qualify, explicit
  IC memo phrasing (CONFIRMED / PARTIAL / NOT CONFIRMED)
- Exit environment: M&A buyer universe (LATAM conglomerates, US tech entering LATAM,
  LATAM unicorns), IPO landscape (B3 viable at $500M+, NYSE/NASDAQ primary path),
  secondary market (minimal), return modeling for $25M LATAM fund

## Verification Results

```
validate.sh: All SKILL.md files valid
D-19 disambiguation: PASS (lines 8-9 of SKILL.md)
suite: vc-operators field: PASS (line 13 of SKILL.md)
Cóndor Ventures in TEMPLATES.md: PASS (lines 11, 19, 21)
FX risk in latam-fund-context.md: PASS
All 12 acceptance criteria: PASS
```

## Deviations from Plan

None — plan executed exactly as written. All 9 plan acceptance criteria verified.

## Known Stubs

None. TEMPLATES.md is fully filled with PayGo México example. All sections have
substantive content. No placeholder text or TODOs in created files.

## Self-Check: PASSED

Files exist:
- [x] suites/vc-operators/deal-memo-writer/SKILL.md — 176 lines
- [x] suites/vc-operators/deal-memo-writer/TEMPLATES.md — created
- [x] suites/vc-operators/deal-memo-writer/references/ic-memo-framework.md — created
- [x] suites/vc-operators/deal-memo-writer/references/latam-fund-context.md — created

Commits exist:
- [x] 8ead00d — feat(02-06): create deal-memo-writer SKILL.md
- [x] 4c339ba — feat(02-06): create deal-memo-writer TEMPLATES.md and references/
