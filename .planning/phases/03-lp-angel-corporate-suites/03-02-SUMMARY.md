---
phase: 03-lp-angel-corporate-suites
plan: "02"
subsystem: lp-angel suite
tags:
  - lp-angel
  - vc-fund-due-diligence
  - portfolio-construction-advisor
  - ilpa-standards
  - carta-benchmarks
  - power-law
  - latam
dependency_graph:
  requires:
    - 03-01 (angel-investment-analyzer establishes LP/Angel SKILL.md pattern)
    - shared/frameworks/ilpa-standards.md (fee/carry/clawback standards)
    - suites/vc-operators/fund-performance-analyzer/references/fund-benchmarks.md (Carta Q1-2026 data)
  provides:
    - suites/lp-angel/vc-fund-due-diligence/ (GP evaluation for LPs)
    - suites/lp-angel/portfolio-construction-advisor/ (portfolio design for angels/LPs)
  affects:
    - 03-03 onwards (lp-angel suite growing; cross-links to vc-operators/ established as pattern)
tech_stack:
  added: []
  patterns:
    - "Cross-skill reference pattern: vc-fund-due-diligence references fund-benchmarks.md from vc-operators/ without duplication"
    - "5-dimension scorecard with INVEST/PASS/WATCH verdict (established in 03-01, extended here)"
    - "Power law math applied to LATAM angel portfolio sizing with conversion rate adjustment"
    - "ILPA fee/carry benchmark table format for terms analysis"
key_files:
  created:
    - suites/lp-angel/vc-fund-due-diligence/SKILL.md
    - suites/lp-angel/vc-fund-due-diligence/references/due-diligence-criteria.md
    - suites/lp-angel/vc-fund-due-diligence/references/latam-context.md
    - suites/lp-angel/vc-fund-due-diligence/TEMPLATES.md
    - suites/lp-angel/portfolio-construction-advisor/SKILL.md
    - suites/lp-angel/portfolio-construction-advisor/references/construction-frameworks.md
    - suites/lp-angel/portfolio-construction-advisor/references/latam-context.md
    - suites/lp-angel/portfolio-construction-advisor/TEMPLATES.md
  modified: []
decisions:
  - "Pampas Ventures Fund II (Buenos Aires, $60M, 2022 vintage) chosen as vc-fund-due-diligence TEMPLATES.md example — Argentine management base creates LATAM Fit gap (no Brazil), two ILPA term deviations produce WATCH 16/25 verdict showing both RED FLAG system and WATCH-not-INVEST case"
  - "Familia Herrera (Monterrey family office, $3M venture allocation) chosen as portfolio-construction-advisor TEMPLATES.md example — 100% Mexico City B2B SaaS 6-company portfolio demonstrates critical under-diversification, missing Brazil gap, and zero reserve capital — all three construction failures in one case"
  - "Cross-link pattern confirmed: vc-fund-due-diligence SKILL.md references fund-benchmarks.md from suites/vc-operators/ via relative path — data lives in one place (fund-benchmarks.md), both skills read it"
  - "LATAM angel-to-Series A conversion rate (12%) used as key portfolio sizing input — requires 1.8x more companies vs US equivalent to achieve same follow-on probability"
  - "Power law portfolio math uses 25-company minimum for 5x target with ~20% probability of capturing a 10x+ outlier — framed as probability, not guarantee"
metrics:
  duration_seconds: 435
  completed_date: "2026-04-05"
  tasks_completed: 2
  tasks_total: 2
  files_created: 8
  files_modified: 0
---

# Phase 03 Plan 02: VC Fund Due Diligence + Portfolio Construction Advisor Summary

**One-liner:** GP due diligence with ILPA terms analysis (5-dimension scorecard, Carta Q1-2026 vintage benchmarks, WATCH 16/25 on Pampas Ventures) and angel portfolio construction advisor with power law sizing math (12% LATAM conversion rate, Familia Herrera Monterrey family office case).

## What Was Built

Two LP/Angel skills completing the "fund evaluation" and "portfolio building" quadrant of the lp-angel suite.

### vc-fund-due-diligence

A 5-dimension scoring skill for LPs evaluating VC fund managers. Dimensions: Track Record, Portfolio Construction, Terms, Team, LATAM Fit — each scored 1–5 for a total /25. Output includes:
- Terms analysis table comparing GP proposed terms vs ILPA standard with explicit INVEST/PASS/WATCH verdict per term
- Explicit `[RED FLAG]` callouts (DPI threshold, management fee step-down, GP commit level)
- Carta Q1-2026 vintage benchmarks cross-linked from `suites/vc-operators/fund-performance-analyzer/references/fund-benchmarks.md` — no duplication
- LATAM context box with LATAM discount annotation protocol

TEMPLATES.md example: Pampas Ventures Fund II (Buenos Aires, $60M, 2022 vintage) evaluated by Fondo Patrimonial UBA — scores 16/25 WATCH with two RED FLAGS (2.5% management fee, no step-down; 0.5% GP commit below ILPA 1%).

### portfolio-construction-advisor

A portfolio design and audit skill for angels and LPs. Covers:
- Optimal portfolio size calculator by return target using Correlation Ventures power law analysis
- Check size and ownership math by stage (pre-seed, seed, Series A) with dilution modeling
- Reserve ratio design (30–40% target, physically separated follow-on capital)
- LATAM portfolio math: 12% angel-to-Series A conversion rate requires ~1.8x more companies vs US equivalent
- 3-year deployment calendar for disciplined capital pacing

TEMPLATES.md example: Familia Herrera (Monterrey, $3M venture allocation) — 6-company, 100% Mexico City SaaS portfolio diagnosed as severely under-diversified (needs 25–30 companies for 5x target), missing Brazil entirely (65% of LATAM exits), and holding zero follow-on reserves.

## Key Design Decisions

| Decision | Rationale |
|----------|-----------|
| Pampas Ventures Fund II scored WATCH 16/25 | Two dimensions score 2/5 (Terms) and 3/5 (LATAM Fit) — demonstrates both RED FLAG system and the WATCH verdict with specific conditions to unlock INVEST |
| Familia Herrera has zero reserve capital | Most common LATAM family office error; framing it as a zero makes the gap vivid and the fix concrete |
| Cross-link to fund-benchmarks.md vs duplicating | Carta Q1-2026 data lives in one file (vc-operators/); both lp-angel skills reference it without copying — ensures single update point |
| 12% LATAM conversion rate as key input | LAVCA 2025 data; materially different from 22% US — changes portfolio size recommendation significantly |
| Power law framed as probability, not guarantee | "~20% chance of a 10x+ outlier at 25 companies" is more honest than asserting diversification guarantees fund-returners |

## Deviations from Plan

None — plan executed exactly as written. All 8 files created with distinct fictional LATAM scenarios, both TEMPLATES.md fully filled (no skeleton placeholders), cross-links to ilpa-standards.md and fund-benchmarks.md present in vc-fund-due-diligence/SKILL.md.

## Known Stubs

None. Both skills have fully populated TEMPLATES.md examples with specific characters (Pampas Ventures, Familia Herrera), quantitative scores, and actionable Próximos Pasos sections.

## Commits

| Task | Commit | Files |
|------|--------|-------|
| Task 1: vc-fund-due-diligence | 5010c5e | SKILL.md, references/due-diligence-criteria.md, references/latam-context.md, TEMPLATES.md |
| Task 2: portfolio-construction-advisor | db0dde8 | SKILL.md, references/construction-frameworks.md, references/latam-context.md, TEMPLATES.md |

## Self-Check: PASSED

Files verified:
- suites/lp-angel/vc-fund-due-diligence/SKILL.md — FOUND
- suites/lp-angel/vc-fund-due-diligence/references/due-diligence-criteria.md — FOUND
- suites/lp-angel/vc-fund-due-diligence/references/latam-context.md — FOUND
- suites/lp-angel/vc-fund-due-diligence/TEMPLATES.md — FOUND
- suites/lp-angel/portfolio-construction-advisor/SKILL.md — FOUND
- suites/lp-angel/portfolio-construction-advisor/references/construction-frameworks.md — FOUND
- suites/lp-angel/portfolio-construction-advisor/references/latam-context.md — FOUND
- suites/lp-angel/portfolio-construction-advisor/TEMPLATES.md — FOUND

Commits verified:
- 5010c5e — FOUND
- db0dde8 — FOUND

Both SKILL.md files contain `suite: lp-angel` — VERIFIED
vc-fund-due-diligence/SKILL.md references ilpa-standards.md and fund-benchmarks.md — VERIFIED
portfolio-construction-advisor/SKILL.md references construction-frameworks.md with power law data — VERIFIED
Both SKILL.md files under 500 lines (161 and 158 lines respectively) — VERIFIED
