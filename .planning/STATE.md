---
gsd_state_version: 1.0
milestone: v1.0
milestone_name: milestone
status: verifying
stopped_at: Phase 4 context gathered
last_updated: "2026-04-05T06:23:12.906Z"
last_activity: 2026-04-05
progress:
  total_phases: 4
  completed_phases: 3
  total_plans: 20
  completed_plans: 20
  percent: 0
---

# Project State

## Project Reference

See: .planning/PROJECT.md (updated 2026-04-04)

**Core value:** Skills that EXECUTE real VC/startup workflows — actionable outputs (scorecards, decks, memos) grounded in industry-standard frameworks and bibliography, not roleplay
**Current focus:** Phase 03 — lp-angel-corporate-suites

## Current Position

Phase: 4
Plan: Not started
Status: Phase complete — ready for verification
Last activity: 2026-04-05

Progress: [░░░░░░░░░░] 0%

## Performance Metrics

**Velocity:**

- Total plans completed: 0
- Average duration: —
- Total execution time: 0 hours

**By Phase:**

| Phase | Plans | Total | Avg/Plan |
|-------|-------|-------|----------|
| - | - | - | - |

**Recent Trend:**

- Last 5 plans: —
- Trend: —

*Updated after each plan completion*
| Phase 01 P01 | 2 | 2 tasks | 8 files |
| Phase 01 P02 | 558 | 2 tasks | 10 files |
| Phase 01-foundation-startup-core P03 | 8 | 2 tasks | 5 files |
| Phase 01-foundation-startup-core P04 | 12 | 2 tasks | 8 files |
| Phase 01-foundation-startup-core P05 | 7 | 2 tasks | 8 files |
| Phase 02-startup-expansion-vc-operators P01 | 15 | 2 tasks | 4 files |
| Phase 02-startup-expansion-vc-operators P03 | 4 | 2 tasks | 4 files |
| Phase 02-startup-expansion-vc-operators P02 | 22 | 2 tasks | 8 files |
| Phase 02-startup-expansion-vc-operators P05 | 5 | 2 tasks | 4 files |
| Phase 02-startup-expansion-vc-operators P04 | 20 | 2 tasks | 8 files |
| Phase 02-startup-expansion-vc-operators P06 | 5 | 2 tasks | 4 files |
| Phase 02-startup-expansion-vc-operators P08 | 274 | 2 tasks | 4 files |
| Phase 02-startup-expansion-vc-operators P07 | 7 | 2 tasks | 8 files |
| Phase 02-startup-expansion-vc-operators P09 | 10 | 2 tasks | 9 files |
| Phase 03-lp-angel-corporate-suites P01 | 4 | 2 tasks | 4 files |
| Phase 03-lp-angel-corporate-suites P02 | 435 | 2 tasks | 8 files |
| Phase 03-lp-angel-corporate-suites P03 | 8 | 2 tasks | 8 files |
| Phase 03-lp-angel-corporate-suites P04 | 5 | 2 tasks | 4 files |
| Phase 03-lp-angel-corporate-suites P05 | 8 | 2 tasks | 8 files |
| Phase 03-lp-angel-corporate-suites P06 | 8 | 2 tasks | 5 files |

## Accumulated Context

### Decisions

Decisions are logged in PROJECT.md Key Decisions table.
Recent decisions affecting current work:

- [Init]: Start with 5 startup skills (highest immediate demand from LAN portfolio companies) before expanding to other suites
- [Init]: Separate repo (~/lan-skills/) — skills are their own product, independent of LAN OS backend
- [Init]: SKILL.md format over code — prompt engineering, not software; markdown is portable and versionable
- [Init]: Infrastructure guardrails (YAML linter, 500-line limit, TEMPLATES.md requirement) must be established in Phase 1 before any skill content is authored
- [Phase 01]: Use ${HOME} not ~ in install.sh for platform safety (zsh on macOS, bash on Linux/WSL)
- [Phase 01]: Add [ -f ] null-glob guard in validate.sh — bash expands unmatched glob to literal string causing grep to fail with set -euo pipefail
- [Phase 01]: shared/frameworks/editorial-voice.md uses pointer pattern — skills reference this file, never inline the tone spec
- [Phase 01]: latam-benchmarks.md carries exact Cuantico 2026 and LAVCA 2025 figures to prevent hallucination
- [Phase 01]: how-to-create-skills.md documents US vs LATAM annotation protocol inline so contributors see it immediately
- [Phase 01-foundation-startup-core]: SKILL.md kept at 123 lines — all framework detail in references/, skill body is pure workflow instructions
- [Phase 01-foundation-startup-core]: venture-model-validator 8-section pattern established as canonical template for all 5 startup skills
- [Phase 01-foundation-startup-core]: TEMPLATES.md filled with FinTrack hypothetical (Mexico City B2B SaaS) scoring 13/25 — low enough score makes red flags meaningful while staying realistic
- [Phase 01-foundation-startup-core]: pitch-deck-builder references/sequoia-deck.md is skill-specific application detail (investor intent, failure modes, LATAM variants), not a duplicate of shared/frameworks/sequoia-deck.md
- [Phase 01-foundation-startup-core]: WhatsApp added as Channel 19 in gtm-channels.md — Weinberg 2014 taxonomy predates WhatsApp for Business; LATAM B2B context requires this channel explicitly
- [Phase 01-foundation-startup-core]: TEMPLATES.md examples use real LATAM company analogues (Alegra, Konfío) not fictitious companies — produces higher-quality output targets
- [Phase 01-foundation-startup-core]: startup-kpi-automator TEMPLATES.md uses InvoiceFlow (Mexico invoicing SaaS, $180k ARR) as the hypothetical example — industry-grounded examples produce higher-quality output targets than generic placeholders
- [Phase 01-foundation-startup-core]: data-room-builder adds 07-latam-legal/ as a standard folder — IP assignment agreements are the #1 LATAM Seed due diligence failure and warrant structural emphasis in the skill template
- [Phase 02-startup-expansion-vc-operators]: Gross-margin-adjusted LTV (ARPA x Gross Margin % / Monthly Churn Rate) is canonical — revenue-based LTV flagged as RED FLAG anti-pattern
- [Phase 02-startup-expansion-vc-operators]: PayRoll MX (Mexico City SME payroll SaaS) chosen as unit-economics-calculator TEMPLATES.md example
- [Phase 02-startup-expansion-vc-operators]: EduTech MX chosen as fundraising-readiness-audit TEMPLATES.md example — LATAM edtech at lower-quartile Seed metrics produces realistic CONDITIONAL verdict showing all 3 verdict states across 5 dimensions
- [Phase 02-startup-expansion-vc-operators]: latam-comparable-raises.md is skill-specific enrichment over shared latam-benchmarks.md — adds deal tables, process norms, and timing data not in shared file
- [Phase 02-startup-expansion-vc-operators]: ClimaAgro chosen as deck-reviewer TEMPLATES.md example — low-scoring deck with two FATAL flaws models the Conditional Pass verdict more instructively than a near-perfect deck
- [Phase 02-startup-expansion-vc-operators]: TalentBR chosen as competitive-landscape-mapper TEMPLATES.md example — Brazilian HR tech has rich real competitive landscape (Workday, Gupy, Kenoby) enabling specific non-generic competitor profiles
- [Phase 02-startup-expansion-vc-operators]: LogiTrack (Bogota fleet SaaS) chosen as sales-playbook-generator TEMPLATES.md example — logistics gives named decision-maker title (Gerente de Operaciones) and measurable trigger events
- [Phase 02-startup-expansion-vc-operators]: WhatsApp sequenced Day 3 (after LinkedIn connection) not Day 1 to avoid cold WhatsApp as first intrusive touch while keeping it as primary channel
- [Phase 02-startup-expansion-vc-operators]: WasteConnect (São Paulo B2B marketplace) chosen as rapid-mvp-builder example — Brazil geography enables PIX as must-have in MoSCoW table, demonstrating LATAM payment integration requirements
- [Phase 02-startup-expansion-vc-operators]: DocuFlux (Buenos Aires contract SaaS at $1,200 ARR) chosen as pricing-strategy-designer example — early-revenue underpricing models chronic LATAM underpricing syndrome and Starter/Growth/Enterprise restructuring
- [Phase 02-startup-expansion-vc-operators]: Cóndor Ventures Fund I evaluating PayGo México chosen as TEMPLATES.md example — fintech gives CNBV/SOFOM regulatory specifics and OXXO Pay moat demonstrating LATAM-specific VC operator thinking
- [Phase 02-startup-expansion-vc-operators]: latam-fund-context.md structured as reusable reference in deal-memo-writer/references/ — FX risk methodology, country-by-country regulatory tables, and exit environment context designed to carry forward unchanged to all 4 remaining vc-operators/ skills
- [Phase 02-startup-expansion-vc-operators]: LogiPay Colombia chosen as Mode A TEMPLATES.md example — Colombian SAS structure provides distinct legal context from prior Cóndor Ventures examples
- [Phase 02-startup-expansion-vc-operators]: term-sheet-draft-guide.md is application layer only (market standards, Hold/Give criteria, red flags, SAFE vs. priced guide) — zero brad-feld-terms.md definition duplication
- [Phase 02-startup-expansion-vc-operators]: latam-fund-context.md in term-sheet-generator/references/ covers legal vehicles and family office governance norms; deal-memo-writer version covers FX risk and regulatory tables — complementary, non-overlapping
- [Phase 02-startup-expansion-vc-operators]: Cóndor Ventures Fund I used consistently across both portfolio-reporter and fund-performance-analyzer TEMPLATES.md (same fund, same Q3 2025 period) for cross-skill coherence
- [Phase 02-startup-expansion-vc-operators]: fund-benchmarks.md is the sole Carta Q1-2026 data source — both skills reference this single file to avoid duplication and ensure single point of update
- [Phase 02-startup-expansion-vc-operators]: LATAM discount annotation (30-50% below US at same vintage) standardized in both latam-fund-context.md files with identical wording for consistent framing
- [Phase 02-startup-expansion-vc-operators]: Cóndor Ventures Fund I used for thesis-builder TEMPLATES.md (consistent with prior VC operator pattern) — Brazil/Mexico SME fintech credit thesis chosen for specificity
- [Phase 02-startup-expansion-vc-operators]: CloudMed (Bogotá healthtech SaaS) chosen as fundraising-agent TEMPLATES.md example — Colombia geography and healthtech sector produce distinct regulatory context from prior LATAM examples
- [Phase 03]: AgriPay Colombia (Bogotá agtech+fintech, $85k MRR, Seed) chosen as TEMPLATES.md example — Colombian agriculture enables FINAGRO, Nequi/Daviplata, and Semana Santa specificity
- [Phase 03]: Investor Timing replaces Team Differentiation as Criterion 5 in angel-investment-analyzer — from investor seat, entry timing is more actionable than re-evaluating founders
- [Phase 03]: WATCH verdict (16/25) chosen for AgriPay TEMPLATES.md — three criteria at 3/5 models the most instructive ambiguous case; PASS too binary to demonstrate WATCH-to-INVEST conversion
- [Phase 03]: Pampas Ventures Fund II (WATCH 16/25) chosen as vc-fund-due-diligence TEMPLATES.md example — two ILPA term deviations and no Brazil presence produce instructive WATCH verdict
- [Phase 03]: Familia Herrera Monterrey family office chosen as portfolio-construction-advisor TEMPLATES.md example — 100% Mexico, zero Brazil, zero reserves demonstrates all three critical construction failures
- [Phase 03]: Cross-link pattern: vc-fund-due-diligence references fund-benchmarks.md from vc-operators/ via relative path — single source for Carta Q1-2026 data
- [Phase 03-lp-angel-corporate-suites]: lp-term-sheet-analyzer TEMPLATES.md uses Cóndor Ventures Fund II (consistent with Phase 2 GP pattern) from FamilyOffice Andina LP perspective — same fund, opposite chair, maintaining cross-skill coherence
- [Phase 03-lp-angel-corporate-suites]: EduSign Brasil chosen for startup-valuation-checker TEMPLATES.md — OVERPRICED verdict (9M ask vs 1.68–5.5M methods range) creates maximally instructive example showing both founder reduction path and investor counter-offer
- [Phase 03-lp-angel-corporate-suites]: Bancolombia Innovation Lab chosen as open-innovation-scanner TEMPLATES.md example — SME lending produces 4-gap map with SFC/FINAGRO regulatory specificity distinct from all prior examples
- [Phase 03-lp-angel-corporate-suites]: latam-context.md in open-innovation-scanner/references/ carries LATAM corporate procurement benchmarks and case studies — designed as reusable reference for Plans 05 and 06
- [Phase 03-lp-angel-corporate-suites]: startup-solution-matcher TEMPLATES.md: FEMSA/OXXO computer vision shelf monitoring — CPG/retail procurement trap with LATAM entity as primary teaching example
- [Phase 03-lp-angel-corporate-suites]: Grupo Sura (Colombia) chosen for corporate-venture-evaluator TEMPLATES.md — 14/20 READY WITH CONDITIONS verdict demonstrates legal review cost trap and board horizon misalignment
- [Phase 03-lp-angel-corporate-suites]: [RED FLAG] procurement flags added to startup-solution-matcher — procurement-specific failure modes distinct from [THEATER] flags
- [Phase 03-lp-angel-corporate-suites]: digital-transformation-context.md distinct subsets: startup-solution-matcher gets CB Insights/Gartner/Plug and Play; corporate-venture-evaluator gets BCG/GCV Institute/Intel Capital (D-36 maintained)
- [Phase 03-lp-angel-corporate-suites]: [NO KILL CRITERIA] is a distinct callout from [THEATER] — killing zombies is structurally critical enough to warrant its own signal in pilot-program-designer
- [Phase 03-lp-angel-corporate-suites]: Claro Colombia/TechBot IA chosen as pilot-program-designer TEMPLATES.md example — Colombian telecom gives CRC/SIC regulatory specificity and DIAN e-invoicing context

### Pending Todos

None yet.

### Quick Tasks Completed

| # | Description | Date | Commit | Directory |
|---|-------------|------|--------|-----------|
| 260405-4en | Publish lan-skills to ecosystem — verify README, install.sh, add package.json, verify SKILL.md frontmatter, prepare PRs | 2026-04-05 | 6f67904 | [260405-4en](./quick/260405-4en-publish-lan-skills-to-ecosystem-verify-r/) |

### Blockers/Concerns

- Phase 3 (VC Operators): Term sheet and fund performance analysis require precise financial calculation templates. Brad Feld "Venture Deals" term taxonomy and ILPA waterfall mechanics need verified references before authoring
- Phase 4 (LP & Angel): ILPA model LPA content and clawback/waterfall mechanics are legally specific — bibliography verification pass recommended before authoring
- Phase 4 (LAN OS integration): skills-catalog.ts generation and /api/ai/skill route are real code requiring engineering planning for BYOK routing

## Session Continuity

Last session: 2026-04-05T07:10:23.172Z
Stopped at: Quick task 260405-4en complete — ecosystem publish
Resume file: .planning/phases/04-lan-os-integration/04-CONTEXT.md
