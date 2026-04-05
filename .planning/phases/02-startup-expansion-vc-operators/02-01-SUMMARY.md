---
phase: 02-startup-expansion-vc-operators
plan: "01"
subsystem: skills
tags: [unit-economics, cac, ltv, saas, marketplace, fintech, david-skok, latam-benchmarks]

# Dependency graph
requires: []
provides:
  - unit-economics-calculator skill (SKILL.md, TEMPLATES.md, 2 references/ files)
  - Gross-margin-adjusted LTV formula enforced as canonical pattern for startup skills
  - LATAM CAC payback benchmark (6-12 months vs US 12-18 months) documented in skill
  - PayRoll MX (Mexico City B2B SaaS payroll) filled TEMPLATES.md example
affects:
  - fundraising-readiness-audit (references unit economics thresholds)
  - fundraising-agent (references unit-economics-calculator as one of 5 integrated Phase 1+ skills)
  - deal-memo-writer (VC operator reading founder unit economics)

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "Phase 2 startup skill description pattern: For STARTUP FOUNDERS prefix + negative constraint naming sibling skill"
    - "Unit economics formulas kept in references/ for progressive disclosure; SKILL.md body is pure workflow"
    - "LATAM annotation protocol: US benchmark first with label, LATAM-adjusted second with Cuantico 2026 / LAVCA 2025 label"

key-files:
  created:
    - suites/startups/unit-economics-calculator/SKILL.md
    - suites/startups/unit-economics-calculator/TEMPLATES.md
    - suites/startups/unit-economics-calculator/references/unit-economics-formulas.md
    - suites/startups/unit-economics-calculator/references/latam-context.md
  modified: []

key-decisions:
  - "Gross-margin-adjusted LTV formula (ARPA × Gross Margin % ÷ Monthly Churn Rate) is the canonical definition — revenue-based LTV flagged as RED FLAG anti-pattern directly in both SKILL.md and TEMPLATES.md"
  - "PayRoll MX (Mexico City SME payroll SaaS) used as TEMPLATES.md example — payroll is a recurring-payment vertical that makes all SaaS unit economics concepts concrete"
  - "TEMPLATES.md demonstrates LTV error correction workflow explicitly — user initially gives revenue-based LTV, skill corrects to gross-margin-adjusted in RED FLAG block"
  - "references/latam-context.md includes FX risk section and fundraising stage expectations table connecting unit economics to actual LATAM raise thresholds"

patterns-established:
  - "Phase 2 description pattern: 'For STARTUP FOUNDERS. [Domain]. ALWAYS invoke when [trigger]. NOT for [sibling skill].' applied to unit-economics-calculator"
  - "references/ files are the formula source of truth; SKILL.md workflow section says Read [references/file.md] BEFORE calculating"

requirements-completed: [STRT-07]

# Metrics
duration: 15min
completed: 2026-04-05
---

# Phase 02 Plan 01: Unit Economics Calculator Summary

**Gross-margin-adjusted CAC/LTV/LTV-CAC/payback calculator for SaaS, marketplace, transactional, and fintech models with LATAM annotation protocol and David Skok benchmark sourcing**

## Performance

- **Duration:** 15 min
- **Started:** 2026-04-05T03:47:00Z
- **Completed:** 2026-04-05T04:02:36Z
- **Tasks:** 2
- **Files created:** 4

## Accomplishments

- unit-economics-calculator skill complete with SKILL.md (189 lines, within 500-line limit), TEMPLATES.md, and 2 references/ files
- SKILL.md enforces gross-margin-adjusted LTV as the canonical formula with explicit RED FLAG callout for revenue-based LTV — the most common unit economics error in LATAM pitches
- TEMPLATES.md uses PayRoll MX (Mexico City B2B SaaS payroll, $22k MRR) as the filled example, demonstrating the LTV correction workflow and LATAM annotation protocol with calculated numbers
- references/unit-economics-formulas.md documents all 4 model variants (SaaS, marketplace, transactional, fintech) with David Skok attribution and common error callouts
- references/latam-context.md provides sourced LATAM CAC payback (6-12 months), churn, margin, pricing, and fundraising stage benchmarks with Cuantico 2026 and LAVCA 2025 citations
- validate.sh passes: "All SKILL.md files valid."

## Task Commits

Each task committed atomically:

1. **Task 1: Create unit-economics-calculator SKILL.md** - `6c985b5` (feat)
2. **Task 2: Create TEMPLATES.md and references/** - `7143740` (feat)

## Files Created

- `suites/startups/unit-economics-calculator/SKILL.md` — Skill workflow: input gathering, formula application, output format, LATAM context, tone, Próximos Pasos, sources (189 lines)
- `suites/startups/unit-economics-calculator/TEMPLATES.md` — PayRoll MX filled example with LTV error correction, Unit Economics Dashboard, LATAM Context box, interpretation paragraph, Próximos Pasos
- `suites/startups/unit-economics-calculator/references/unit-economics-formulas.md` — All formulas with David Skok source, 4 model variants, common errors, benchmark table
- `suites/startups/unit-economics-calculator/references/latam-context.md` — LATAM CAC payback, churn, gross margin, pricing, FX, and fundraising stage benchmarks

## Decisions Made

- Gross-margin-adjusted LTV (ARPA × Gross Margin % ÷ Monthly Churn Rate) is the canonical formula; revenue-based LTV is flagged as [RED FLAG] anti-pattern in both SKILL.md and TEMPLATES.md with explicit before/after recalculation
- PayRoll MX chosen as TEMPLATES.md example company — Mexico City B2B SaaS for SME payroll, $22k MRR, 110 customers, Seed stage — provides a concrete recurring-revenue SaaS context where all unit economics concepts apply naturally
- TEMPLATES.md demonstrates the LTV error correction workflow rather than just showing correct output — the error detection is as important as the formula
- references/latam-context.md includes FX risk section and a fundraising stage expectations table that connects unit economics thresholds to actual LATAM raise requirements (local vs international funds differ)

## Deviations from Plan

None — plan executed exactly as written. All formula specifications, company example numbers, benchmark sources, and file structure followed the plan's action descriptions precisely.

## Issues Encountered

None. validate.sh passes on first run.

## User Setup Required

None — skill authoring produces markdown files only, no external service configuration.

## Next Phase Readiness

- unit-economics-calculator complete and validate.sh passing — ready for Phase 02 Plan 02
- PayRoll MX example sets the LATAM SaaS company template pattern for Phase 2 remaining startup skills
- LATAM annotation protocol in references/latam-context.md is reusable as a reference by other Phase 2 skills that need LATAM unit economics context
- No blockers

---
*Phase: 02-startup-expansion-vc-operators*
*Completed: 2026-04-05*
