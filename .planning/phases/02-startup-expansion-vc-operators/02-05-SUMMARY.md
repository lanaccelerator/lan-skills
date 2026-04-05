---
phase: 02-startup-expansion-vc-operators
plan: "05"
subsystem: skills
tags: [sales, playbook, b2b, whatsapp, latam, predictable-revenue, challenger-sale]

requires:
  - phase: 01-foundation-startup-core
    provides: venture-model-validator canonical SKILL.md pattern (8-section body, YAML frontmatter, three-component D-17 description)
  - phase: 02-startup-expansion-vc-operators
    plan: "01"
    provides: go-to-market-strategist WhatsApp as Channel 1 pattern for LATAM B2B

provides:
  - sales-playbook-generator SKILL.md (168 lines, WhatsApp-primary, Predictable Revenue + Challenger Sale)
  - sales-playbook-generator TEMPLATES.md (LogiTrack filled example, 8-touch sequence, Challenger Sale objection matrix)
  - references/sales-playbook-framework.md (Predictable Revenue + Challenger Sale + Gong.io data)
  - references/latam-sales-context.md (WhatsApp 85%+ stats, decision-maker title mapping, cycle benchmarks)

affects:
  - 02-06-pricing-strategy-designer (sibling skill — same output pattern)
  - 02-08-fundraising-agent (integrates with sales data from this skill)

tech-stack:
  added: []
  patterns:
    - "WhatsApp-primary prospecting sequence pattern for LATAM B2B skills"
    - "Objection handling matrix with Root Cause column (Challenger Sale methodology)"
    - "LogiTrack as canonical LATAM logistics SaaS example for sales context"

key-files:
  created:
    - suites/startups/sales-playbook-generator/SKILL.md
    - suites/startups/sales-playbook-generator/TEMPLATES.md
    - suites/startups/sales-playbook-generator/references/sales-playbook-framework.md
    - suites/startups/sales-playbook-generator/references/latam-sales-context.md
  modified: []

key-decisions:
  - "LogiTrack (Bogotá fleet SaaS, $8,400 ACV) chosen as TEMPLATES.md example — logistics B2B has clear ICP with named titles (Gerente de Operaciones) and measurable trigger events"
  - "WhatsApp sequenced as Day 3 (after LinkedIn connection) not Day 1 — avoids cold WhatsApp as first touch which is still intrusive without context"
  - "Objection handling matrix uses 5 LATAM-specific objections with Root Cause column — standard US objections don't account for budget cycle behavior or champion dynamics in LATAM"
  - "Budget and seasonal timing section added to latam-sales-context.md (December freeze, Q3 outbound for Q4 close) — gap from plan spec, added as missing critical context"

patterns-established:
  - "WhatsApp-primary: every LATAM B2B prospecting sequence starts LinkedIn → WhatsApp → Email (not email-first)"
  - "Root Cause column in objection matrix: surface objection vs actual buying barrier always documented separately"
  - "Decision-maker title mapping table: Spanish titles always provided alongside English equivalents for LATAM skills"

requirements-completed: [STRT-11]

duration: 5min
completed: 2026-04-05
---

# Phase 2 Plan 05: Sales Playbook Generator Summary

**WhatsApp-primary B2B sales playbook skill using Aaron Ross Predictable Revenue + Challenger Sale frameworks, calibrated for LATAM decision-maker titles and 3–6 month sales cycles**

## Performance

- **Duration:** 5 min
- **Started:** 2026-04-05T04:16:22Z
- **Completed:** 2026-04-05T04:21:33Z
- **Tasks:** 2
- **Files modified:** 4

## Accomplishments

- Created complete sales-playbook-generator skill (STRT-11) with 4 files
- SKILL.md: 168 lines, WhatsApp as mandatory primary LATAM channel, Predictable Revenue + Challenger Sale frameworks, 5-component playbook output with LATAM decision-maker title mapping
- TEMPLATES.md: LogiTrack example with 8-touch WhatsApp-primary sequence, Challenger Sale objection matrix with Root Cause column (13 WhatsApp mentions — WhatsApp prominence verified), demo script with Gong.io 46% talk ratio principle, CRM 6-stage setup
- references/sales-playbook-framework.md: Predictable Revenue SDR/AE split, Challenger Sale teach/tailor/take-control, Gong.io win rate benchmarks, ICP definition template, sequence design principles by ACV range
- references/latam-sales-context.md: WhatsApp 85%+ open rate benchmark, decision-maker title mapping (Gerente General / Director Comercial / Jefe de Sistemas), sales cycle benchmarks by segment, reference account program, budget timing by country

## Task Commits

1. **Task 1: Create SKILL.md** — `9d90bc6` (feat)
2. **Task 2: Create TEMPLATES.md and references/** — `f3d985e` (feat)

## Files Created/Modified

- `suites/startups/sales-playbook-generator/SKILL.md` — 8-section workflow, WhatsApp-first, Predictable Revenue + Challenger Sale, LATAM context, 168 lines
- `suites/startups/sales-playbook-generator/TEMPLATES.md` — LogiTrack Colombia fleet SaaS example with full playbook components
- `suites/startups/sales-playbook-generator/references/sales-playbook-framework.md` — framework detail with verified source URLs
- `suites/startups/sales-playbook-generator/references/latam-sales-context.md` — WhatsApp stats, Spanish title mapping, cycle benchmarks, seasonal patterns

## Decisions Made

- **LogiTrack example:** Bogotá fleet SaaS with Gerente de Operaciones as buyer — logistics gives a named decision-maker title and measurable trigger events (GPS contract expiry, fleet expansion) that make the ICP template concrete
- **WhatsApp on Day 3, not Day 1:** First WhatsApp touch after LinkedIn connection accepted — prevents cold WhatsApp which is still intrusive without context, while keeping WhatsApp as the primary channel
- **Root Cause column:** Challenger Sale demands diagnosing the actual buying barrier, not just scripting a surface response. The Root Cause column forces this distinction in every objection.
- **Budget timing section added to latam-sales-context.md:** Country-by-country fiscal year and Q3 outbound window added beyond plan spec — critical missing context for founders who lose deals by starting outbound in November when budgets are closing

## Deviations from Plan

### Auto-fixed Issues

None — plan executed as specified with one enhancement:

**1. [Rule 2 - Auto-add] Added budget and seasonal timing section to latam-sales-context.md**
- **Found during:** Task 2 (creating latam-sales-context.md)
- **Issue:** Plan specified 5 sections for latam-sales-context.md. Missing seasonal/fiscal patterns is a gap that causes founders to run outbound at the wrong time (December freeze, Q1 slow start) — a critical operational failure for LATAM sales.
- **Fix:** Added Section 6 (Budget and Timing Patterns) with country-by-country fiscal year, budget approval windows, best outbound windows, and seasonal slowdowns to avoid.
- **Files modified:** references/latam-sales-context.md
- **Committed in:** f3d985e (Task 2 commit)

---

**Total deviations:** 1 auto-added (Rule 2 — missing critical context)
**Impact on plan:** Enhancement to latam-sales-context.md beyond plan spec. Directly enables correct playbook execution timing. No scope creep.

## Issues Encountered

None — validate.sh passed with "All SKILL.md files valid." WhatsApp count in TEMPLATES.md: 13 (target was 5+). Line count: 168 (limit 500).

## User Setup Required

None — no external service configuration required.

## Known Stubs

None — all playbook components are fully populated. LogiTrack example is end-to-end filled with specific numbers, titles, and templates.

## Next Phase Readiness

- sales-playbook-generator complete — 4 files, all criteria verified
- Ready for 02-06 pricing-strategy-designer (sibling startup skill)
- validate.sh passes for full suite

## Self-Check

- [x] `suites/startups/sales-playbook-generator/SKILL.md` — FOUND
- [x] `suites/startups/sales-playbook-generator/TEMPLATES.md` — FOUND
- [x] `suites/startups/sales-playbook-generator/references/sales-playbook-framework.md` — FOUND
- [x] `suites/startups/sales-playbook-generator/references/latam-sales-context.md` — FOUND
- [x] Task 1 commit `9d90bc6` — FOUND
- [x] Task 2 commit `f3d985e` — FOUND

## Self-Check: PASSED

---
*Phase: 02-startup-expansion-vc-operators*
*Completed: 2026-04-05*
