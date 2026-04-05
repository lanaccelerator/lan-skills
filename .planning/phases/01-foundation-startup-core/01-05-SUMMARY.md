---
phase: 01-foundation-startup-core
plan: 05
subsystem: skills
tags: [kpi-dashboard, data-room, bessemer, openview, yc-metrics, a16z, visible-vc, nfx, stripe-atlas, latam, carta]

# Dependency graph
requires:
  - phase: 01-foundation-startup-core
    provides: validate.sh, install.sh, shared/frameworks/ (editorial-voice.md, yc-metrics.md, latam-benchmarks.md), venture-model-validator SKILL.md pattern

provides:
  - suites/startups/startup-kpi-automator/ — complete skill with SKILL.md, TEMPLATES.md, references/kpi-benchmarks.md, references/latam-context.md
  - suites/startups/data-room-builder/ — complete skill with SKILL.md, TEMPLATES.md, references/folder-structure.md, references/latam-context.md
  - All 5 startup skills complete and passing validate.sh + install.sh
  - Both skills include Tone & Editorial Voice section per QUAL-11
  - Phase 1 complete: ./install.sh installs 5 skills to ${HOME}/.claude/skills/

affects: [Phase 2+ skills, LAN OS /skills route integration (Phase 4)]

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "startup-kpi-automator branches by business model (SaaS/marketplace/e-commerce/fintech) — each model produces distinct KPI set from references/kpi-benchmarks.md"
    - "data-room-builder is the integration skill — asks for /venture-model-validator and /pitch-deck-builder outputs to auto-populate sections"
    - "TEMPLATES.md filled with LATAM company analogues (InvoiceFlow for KPI automator; Alegra-style for data room) not fictitious companies"
    - "Jurisdiction-specific folder (07-latam-legal/) added to data room template for LATAM requirements"
    - "LATAM annotation protocol applied: US benchmark labeled (US-sourced benchmark), LATAM figure labeled (LATAM, Cuantico 2026 / LAVCA 2025)"

key-files:
  created:
    - suites/startups/startup-kpi-automator/SKILL.md
    - suites/startups/startup-kpi-automator/TEMPLATES.md
    - suites/startups/startup-kpi-automator/references/kpi-benchmarks.md
    - suites/startups/startup-kpi-automator/references/latam-context.md
    - suites/startups/data-room-builder/SKILL.md
    - suites/startups/data-room-builder/TEMPLATES.md
    - suites/startups/data-room-builder/references/folder-structure.md
    - suites/startups/data-room-builder/references/latam-context.md
  modified: []

key-decisions:
  - "startup-kpi-automator TEMPLATES.md uses InvoiceFlow (Mexico invoicing SaaS, $180k ARR) as the hypothetical example — real-industry grounding produces higher-quality output targets"
  - "data-room-builder adds 07-latam-legal/ as a standard folder in the template — IP assignment agreements and jurisdiction documents are the #1 LATAM Seed due diligence failure"
  - "data-room-builder integration questions ask for prior skill outputs (/venture-model-validator scorecard, /pitch-deck-builder deck outline) to auto-populate sections — this is the integration skill per D-11"
  - "references/kpi-benchmarks.md covers all 4 business models with distinct stage-gated tables — SaaS is primary but marketplace/e-commerce/fintech each get proper treatment"

requirements-completed: [STRT-04, STRT-05, QUAL-11]

# Metrics
duration: 7min
completed: 2026-04-05
---

# Phase 01 Plan 05: startup-kpi-automator and data-room-builder Summary

**startup-kpi-automator (BVP/OpenView/YC/a16z/Carta, InvoiceFlow B2B SaaS Seed example with 4-model KPI branching) and data-room-builder (Visible.vc/NFX/Stripe Atlas, Alegra-style Colombia Seed data room with IP assignment gap flagging and 07-latam-legal/ jurisdiction folder), completing all 5 startup skills with validate.sh and install.sh passing**

## Performance

- **Duration:** ~7 min
- **Started:** 2026-04-05T03:01:02Z
- **Completed:** 2026-04-05T03:07:48Z
- **Tasks:** 2 of 2
- **Files modified:** 8 created

## Accomplishments

- startup-kpi-automator: 145-line SKILL.md with 4-model branching (SaaS/marketplace/e-commerce/fintech), stage-gated KPI tables in references/kpi-benchmarks.md (Pre-Seed through Series B for SaaS, Seed through Series B for others), filled TEMPLATES.md with InvoiceFlow B2B SaaS Seed example ($15k MRR, 11-row KPI table with current values and Bessemer/YC targets, investor report email template, LATAM context box)
- data-room-builder: 151-line SKILL.md as the integration skill (asks for /venture-model-validator scorecard and /pitch-deck-builder output in Step 1), filled TEMPLATES.md with Alegra-style Colombia Seed $2M raise (complete folder tree with EXISTS/NEEDED/NICE-TO-HAVE status, 15-doc checklist at 53%, 2 BLOCKING items flagged, 3 filled base document templates, Colombia-specific LATAM context)
- references/folder-structure.md: Seed (6 folders, 12 required docs) and Series A (8 folders, 25 required docs) taxonomies with Visible.vc/NFX/Stripe Atlas sources
- references/latam-context.md (data-room): Mexico/Brazil/Colombia/Argentina jurisdiction-specific documents, LATAM family office LP requirements, top-5 LATAM data room gaps ranked by deal-failure frequency
- Both skills: three-component descriptions with correct negative constraints, Tone & Editorial Voice sections (QUAL-11), LATAM context sections citing LAVCA 2025 and Cuantico 2026
- validate.sh: "All SKILL.md files valid." (5 skills pass) — exit 0
- install.sh: "Installed: 5 skills | Failed: 0" — exit 0
- All 5 skills visible in ${HOME}/.claude/skills/
- STRT-04, STRT-05, QUAL-11 requirements satisfied
- Phase 1 complete

## Task Commits

1. **Task 1: startup-kpi-automator** — `6927da9` (feat)
2. **Task 2: data-room-builder + validation** — `8706ab2` (feat)

## Files Created/Modified

- `suites/startups/startup-kpi-automator/SKILL.md` — 145 lines; BVP/OpenView/YC/a16z/Carta framework orchestration with 4-model KPI branching
- `suites/startups/startup-kpi-automator/TEMPLATES.md` — InvoiceFlow B2B SaaS Seed filled example with KPI table, dashboard structure, investor report email, LATAM context box, Próximos Pasos
- `suites/startups/startup-kpi-automator/references/kpi-benchmarks.md` — Stage-gated benchmark tables for SaaS (Pre-Seed through Series B), marketplace, e-commerce, fintech; metric definitions with what counts in calculations
- `suites/startups/startup-kpi-automator/references/latam-context.md` — LATAM CAC payback divergence, NRR as primary PMF signal, growth rate expectations, reporting cadence by LP type, fintech-specific LATAM context
- `suites/startups/data-room-builder/SKILL.md` — 151 lines; integration skill referencing /venture-model-validator and /pitch-deck-builder; Visible.vc/NFX/Stripe Atlas frameworks; 07-latam-legal/ folder instruction
- `suites/startups/data-room-builder/TEMPLATES.md` — Alegra-style Colombia Seed $2M example: filled folder tree, 15-doc checklist (53% complete), 2 BLOCKING items, completeness scorecard, 3 base document templates (exec summary, use of funds, 3-year model structure), Colombia LATAM context box, Próximos Pasos
- `suites/startups/data-room-builder/references/folder-structure.md` — Seed (6 folders/12 required) and Series A (8 folders/25 required) taxonomies; classification guide (REQUIRED/BLOCKING/RECOMMENDED/NICE-TO-HAVE); document format standards
- `suites/startups/data-room-builder/references/latam-context.md` — LATAM Seed VC vs family office LP due diligence; Mexico/Brazil/Colombia/Argentina jurisdiction documents; LATAM data room access tools; top-5 common LATAM data room gaps

## Decisions Made

- startup-kpi-automator TEMPLATES.md uses InvoiceFlow as the hypothetical (Mexico invoicing SaaS, $180k ARR at Seed) — industry-grounded example produces higher-quality output targets than generic placeholders
- data-room-builder adds 07-latam-legal/ as a standard folder in the template — IP assignment agreements are the #1 LATAM Seed due diligence failure and warrant structural emphasis
- data-room-builder Step 1 asks for /venture-model-validator and /pitch-deck-builder outputs explicitly — this is the integration skill per D-11 and the value-add over a standalone data room checklist
- references/kpi-benchmarks.md covers all 4 business models with distinct stage-gated tables — SaaS is primary but marketplace/e-commerce/fintech each get proper treatment with model-appropriate KPIs (GMV/take rate for marketplace, AOV/repeat rate for e-commerce, TPV/default rate for fintech)

## Deviations from Plan

None — plan executed exactly as written. Both skills created with all required files, all acceptance criteria satisfied, validate.sh and install.sh pass for all 5 skills.

## Issues Encountered

None.

## User Setup Required

None — all 5 skills are installed to ${HOME}/.claude/skills/ by install.sh. Run `./install.sh` to re-install after any update.

## Phase 1 Status

Phase 01 (foundation-startup-core) is COMPLETE.

All Phase 1 success criteria satisfied:
1. ./install.sh works on macOS — verified, installed 5 skills with [OK] for each
2. Each skill description activates on natural-language queries per three-component pattern (D-07)
3. Each skill asks for inputs, produces structured output, cites frameworks with URLs, ends with Próximos Pasos
4. Each skill has a filled TEMPLATES.md enforcing output structure with LATAM examples
5. Every skill has a LATAM Context section with LAVCA 2025 + Cuantico 2026 benchmarks
6. Every skill has a Tone & Editorial Voice section enforcing seasoned investor/operator voice (QUAL-11)

## Known Stubs

None — all TEMPLATES.md files contain filled examples with specific data. No placeholder text or empty brackets in the output path.

---
*Phase: 01-foundation-startup-core*
*Completed: 2026-04-05*
