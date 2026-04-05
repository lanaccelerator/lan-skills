---
phase: 03-lp-angel-corporate-suites
plan: "03"
subsystem: lp-angel
tags:
  - lp-term-sheet-analyzer
  - startup-valuation-checker
  - fund-analysis
  - valuation
  - ilpa
  - latam
dependency_graph:
  requires:
    - 03-01 (angel-investment-analyzer — LP/Angel pattern established)
    - shared/frameworks/brad-feld-terms.md
    - shared/frameworks/ilpa-standards.md
    - shared/frameworks/latam-benchmarks.md
    - shared/frameworks/editorial-voice.md
  provides:
    - suites/lp-angel/lp-term-sheet-analyzer (LP-side LPA/term analysis)
    - suites/lp-angel/startup-valuation-checker (dual-audience valuation checker)
  affects:
    - suites/lp-angel/ (completes all 5 LP/Angel skills)
tech_stack:
  added: []
  patterns:
    - "D-39: three-file separation of concerns (definitions | standards | evaluation layer)"
    - "D-32: dual-audience skill with same analysis, different recommendation framing"
    - "LP/Angel pattern: YAML suite: lp-angel, 6 Steps + Tone + Sources, filled TEMPLATES.md"
key_files:
  created:
    - suites/lp-angel/lp-term-sheet-analyzer/SKILL.md
    - suites/lp-angel/lp-term-sheet-analyzer/references/lp-analysis-criteria.md
    - suites/lp-angel/lp-term-sheet-analyzer/references/latam-context.md
    - suites/lp-angel/lp-term-sheet-analyzer/TEMPLATES.md
    - suites/lp-angel/startup-valuation-checker/SKILL.md
    - suites/lp-angel/startup-valuation-checker/references/valuation-methods.md
    - suites/lp-angel/startup-valuation-checker/references/latam-context.md
    - suites/lp-angel/startup-valuation-checker/TEMPLATES.md
  modified: []
decisions:
  - "lp-term-sheet-analyzer TEMPLATES.md uses Cóndor Ventures Fund II (consistent with Phase 2 GP pattern) but from FamilyOffice Andina LP perspective — same fund, opposite chair"
  - "startup-valuation-checker applies Revenue Multiple at both conservative (4×) and aggressive (6×) LATAM Seed bands to show the full range, not a single point estimate"
  - "EduSign Brasil chosen for startup-valuation-checker TEMPLATES.md — e-signature for schools gives a vertical SaaS example distinct from prior horizontal SaaS examples; Brazil geography grounds the LATAM premium discussion"
  - "OVERPRICED verdict for EduSign ($9M ask vs $1.68–5.5M methods range) creates maximally instructive example — shows both how founder should reduce ask and how investor should counter-offer"
metrics:
  duration: "~8 minutes"
  completed_date: "2026-04-05"
  tasks_completed: 2
  files_created: 8
---

# Phase 03 Plan 03: LP Term Sheet Analyzer + Startup Valuation Checker Summary

**One-liner:** LP-side LPA analysis with ILPA-grounded three-file separation of concerns (D-39) and dual-audience startup valuation checker using 5 methods with LATAM-adjusted benchmarks (D-32).

## What Was Built

### Task 1: lp-term-sheet-analyzer (4 files)

`suites/lp-angel/lp-term-sheet-analyzer/`

**SKILL.md** — LP-side fund term analysis. Inverts term-sheet-generator: where that skill
helps a GP draft startup investment terms, this one helps an LP evaluate fund terms received
FROM a GP. YAML frontmatter has `suite: lp-angel` and explicit NOT constraints referencing
both term-sheet-generator and fundraising-agent. Step 2 documents D-39 separation of concerns
across three files with an explicit prohibition on re-defining terms already in brad-feld-terms.md.

**references/lp-analysis-criteria.md** — LP evaluation layer only. Contains scoring criteria
and negotiation priorities for 7 key terms (management fee, carry, hurdle, GP commit, clawback,
key person, no-fault divorce). Zero term definitions — those live in brad-feld-terms.md. The
ACCEPT/NEGOTIATE/PASS decision matrix specifies the exact combination that triggers PASS
(all three structural misalignment signals required).

**references/latam-context.md** — LATAM LP concerns: FX clause evaluation, LATAM family
office LP rights (unknowingly waived), Brazilian FIP vs. Cayman LP legal vehicle differences,
political risk provisions for Argentina/Venezuela, and emerging manager acceptable deviations.

**TEMPLATES.md** — Fully filled: FamilyOffice Andina (Lima) analyzing Cóndor Ventures Fund II
(Andean fintech/agtech, $60M fund, 2026 vintage). Two RED FLAGs (2.5% management fee + no
step-down). NEGOTIATE verdict with 5 specific negotiation asks including ILPA model LP side
letter as baseline. Effective fee drag calculation: $7.5M in fees = 12.5% of committed capital.

### Task 2: startup-valuation-checker (4 files)

`suites/lp-angel/startup-valuation-checker/`

**SKILL.md** — Dual-audience valuation reasonableness checker per D-32. Description
explicitly names both founder and investor use cases without creating ambiguity. Five methods
applied in stage-appropriate order (Berkus pre-revenue only, DCF Series A+ only). Triangulation
rule: 3+ methods agree within 30% = IN RANGE; ask >2× any method = OVERPRICED.

**references/valuation-methods.md** — Five-method reference with LATAM-adjusted parameters.
Revenue Multiple uses Damodaran data with LATAM discount table by sector and stage. Berkus
Method applies $250k/factor LATAM cap (vs. $500k US) with LAVCA 2025 rationale. Scorecard
uses $4M/$8M LATAM regional averages (vs. ~$10M/$20M US). DCF documents LATAM discount rate
(25–35%) and terminal value sensitivity warning. Full source URLs for each method.

**references/latam-context.md** — Pre-money benchmarks by stage (LATAM vs US with sources),
revenue multiples by sector, country-specific adjustments (Brazil at median, Argentina -25–40%),
growth rate thresholds for valuation defense, common LATAM valuation red flags.

**TEMPLATES.md** — EduSign Brasil (São Paulo, e-signature SaaS, $420k ARR, 18% MoM, asking
$9M Seed). 3 applicable methods (Revenue Multiple ×2, Comparables, Scorecard). Range: $1.68M–$5.5M
vs. $9M ask = OVERPRICED at 2.6× median. Dual framing: Founder section gives 2 paths (reduce ask
now vs. wait for $700k ARR); Investor section gives counter-offer ($5.5M) and walk conditions
(if founder insists on >$8M → walk at 13% ownership).

## Success Criteria Verification

- [x] lp-term-sheet-analyzer inverts term-sheet-generator perspective — LP analyzing terms received vs GP drafting terms
- [x] lp-term-sheet-analyzer references brad-feld-terms.md and ilpa-standards.md without duplicating content (D-39)
- [x] startup-valuation-checker serves both founders and investors with audience-framed recommendations (D-32)
- [x] Both skills have `suite: lp-angel` in YAML frontmatter
- [x] Both TEMPLATES.md files fully filled with distinct LATAM fictional scenarios
- [x] All 5 LP/Angel skills now exist in suites/lp-angel/

## Commits

- `1db6691` — feat(03-03): lp-term-sheet-analyzer SKILL.md + references/ + TEMPLATES.md
- `a190aa1` — feat(03-03): startup-valuation-checker SKILL.md + references/ + TEMPLATES.md

## Deviations from Plan

None — plan executed exactly as written. D-39 and D-32 constraints were honored without
requiring any deviation. The three-file separation for lp-term-sheet-analyzer was implemented
with explicit "do NOT re-define terms" language in the skill body, ensuring the LP evaluation
layer does not duplicate brad-feld-terms.md content.

## Known Stubs

None — all templates contain fully worked LATAM examples with real calculations, specific
company names, and explicit verdicts. No placeholder text, TODO items, or empty sections.

## Self-Check: PASSED
