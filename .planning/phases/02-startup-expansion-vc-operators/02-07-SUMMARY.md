---
phase: 02-startup-expansion-vc-operators
plan: "07"
subsystem: suites/vc-operators
tags: [portfolio-reporter, fund-performance-analyzer, ilpa, carta-benchmarks, lp-reporting, fund-metrics, vcop-02, vcop-04]
dependency_graph:
  requires: [02-06, shared/frameworks/ilpa-standards.md, shared/frameworks/editorial-voice.md]
  provides: [portfolio-reporter, fund-performance-analyzer]
  affects: [02-08-term-sheet-generator, 02-09-thesis-builder]
tech_stack:
  added: []
  patterns:
    - ILPA-compliant LP quarterly report structure (8-section)
    - Carta Q1-2026 vintage benchmark table with "(US-sourced benchmark, Carta Q1 2026)" labeling
    - LATAM performance discount annotation (30-50% vs US at same vintage)
    - Cóndor Ventures Fund I as consistent fictional fund across all vc-operators TEMPLATES.md files
key_files:
  created:
    - suites/vc-operators/portfolio-reporter/SKILL.md
    - suites/vc-operators/portfolio-reporter/TEMPLATES.md
    - suites/vc-operators/portfolio-reporter/references/portfolio-report-template.md
    - suites/vc-operators/portfolio-reporter/references/latam-fund-context.md
    - suites/vc-operators/fund-performance-analyzer/SKILL.md
    - suites/vc-operators/fund-performance-analyzer/TEMPLATES.md
    - suites/vc-operators/fund-performance-analyzer/references/fund-benchmarks.md
    - suites/vc-operators/fund-performance-analyzer/references/latam-fund-context.md
  modified: []
decisions:
  - "Cóndor Ventures Fund I used consistently across both skills TEMPLATES.md (same fund, same Q3 2025 period, different analytical lens) — cross-skill coherence allows users to see how portfolio-reporter and fund-performance-analyzer serve complementary purposes on identical data"
  - "fund-benchmarks.md is the sole Carta data source — both skills reference this one file to avoid duplication and ensure single point of update when new Carta data is available"
  - "LATAM annotation required in both latam-fund-context.md files with identical standard annotation text — ensures consistent framing across all vc-operators consumers"
metrics:
  duration: "7 minutes"
  completed_date: "2026-04-05"
  tasks_completed: 2
  files_created: 8
  files_modified: 0
---

# Phase 02 Plan 07: Portfolio Reporter + Fund Performance Analyzer Summary

**One-liner:** ILPA-compliant LP quarterly report skill and 6-metric fund performance calculator skill, both using Cóndor Ventures Fund I as example with Carta Q1-2026 vintage benchmarks labeled as US-only data.

## What Was Built

Two VC operator skills (VCOP-02 and VCOP-04) covering complementary reporting workflows:

**portfolio-reporter** — Generates 8-section ILPA-compliant quarterly LP reports. Analyst/associate voice (not GP decision-making). Adapts format for institutional vs family office LP audience. References @shared/frameworks/ilpa-standards.md for metric definitions and ILPA Principle 3 (Transparency) for disclosure standards. TEMPLATES.md uses Cóndor Ventures Fund I Q3 2025 with correctly labeled Carta benchmarks and LATAM note.

**fund-performance-analyzer** — Calculates TVPI, DPI, RVPI, IRR, MOIC, PME with step-by-step formula documentation. Benchmarks fund against Carta Q1-2026 vintage data. Provides attribution analysis (top 3 positions by TVPI contribution), DPI vs RVPI split interpretation, and reserve analysis. TEMPLATES.md uses same Cóndor Ventures Fund I Q3 2025 data for cross-skill coherence.

## Carta Q1-2026 Benchmarks Incorporated

All figures from references/carta-fund-performance-q1-2026.pdf, labeled "(US-sourced benchmark, Carta Q1 2026)":

- 2022 vintage median IRR: 0.7% / 75th pct: 10.9% / 90th pct: ~35%
- 2022 vintage 75th pct TVPI: 1.20×
- 2021 vintage median IRR: 1.4% / 90th pct: 18.2%+
- 2017 vintage median TVPI: 1.89× / 90th pct: 4.03×
- 2018 vintage 90th pct IRR: 35.6% (highest in sample)
- Small fund advantage: 2017 vintage $1M-$10M 90th pct TVPI = 5.54×

LATAM annotation in both latam-fund-context.md files: "No equivalent LATAM fund performance database exists at Carta scale. LATAM performance typically 30–50% below US equivalents at same vintage."

## Commits

| Task | Description | Commit | Files |
|------|-------------|--------|-------|
| 1 | portfolio-reporter (VCOP-02) | bdd08f5 | SKILL.md, TEMPLATES.md, references/portfolio-report-template.md, references/latam-fund-context.md |
| 2 | fund-performance-analyzer (VCOP-04) | d6acc0b | SKILL.md, TEMPLATES.md, references/fund-benchmarks.md, references/latam-fund-context.md |

## Deviations from Plan

None — plan executed exactly as written.

## Known Stubs

None — both TEMPLATES.md files are fully filled with Cóndor Ventures Fund I data. All metrics are calculated with actual formula traces (not placeholders).

## Self-Check

Checking created files and commits exist...

## Self-Check: PASSED

- 8/8 files found on disk
- Commit bdd08f5 (portfolio-reporter): FOUND
- Commit d6acc0b (fund-performance-analyzer): FOUND
