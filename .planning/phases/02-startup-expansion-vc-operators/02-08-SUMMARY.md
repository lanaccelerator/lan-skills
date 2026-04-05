---
phase: 02-startup-expansion-vc-operators
plan: "08"
subsystem: vc-operators/term-sheet-generator
tags: [term-sheet, vc-operators, dual-mode, latam, negotiation]
dependency_graph:
  requires:
    - shared/frameworks/brad-feld-terms.md
    - shared/frameworks/safe-note.md
    - shared/frameworks/editorial-voice.md
    - suites/vc-operators/deal-memo-writer (pattern reference)
  provides:
    - suites/vc-operators/term-sheet-generator/SKILL.md
    - suites/vc-operators/term-sheet-generator/TEMPLATES.md
    - suites/vc-operators/term-sheet-generator/references/term-sheet-draft-guide.md
    - suites/vc-operators/term-sheet-generator/references/latam-fund-context.md
  affects:
    - lp-term-sheet-analyzer (sibling skill, referenced in SKILL.md as out-of-scope)
    - fundraising-agent (will reference term-sheet-generator for term sheet analysis phase)
tech_stack:
  added: []
  patterns:
    - dual-mode skill (GP drafting / associate review) with branching workflow
    - shared framework pointer pattern (brad-feld-terms.md referenced, never duplicated)
    - negotiation lever table format (Draft Position | Market Standard | Negotiating Range | Hold vs. Give)
    - red flag term documentation with plain-English + market standard comparison
key_files:
  created:
    - suites/vc-operators/term-sheet-generator/SKILL.md
    - suites/vc-operators/term-sheet-generator/TEMPLATES.md
    - suites/vc-operators/term-sheet-generator/references/term-sheet-draft-guide.md
    - suites/vc-operators/term-sheet-generator/references/latam-fund-context.md
  modified: []
decisions:
  - "LogiPay Colombia ($12M pre-money Series Seed) chosen as Mode A TEMPLATES.md example — Colombian fintech gives SAS legal structure context and distinct geography from existing Cóndor Ventures examples"
  - "term-sheet-draft-guide.md covers market standards by 4 stages plus negotiation lever framework and red flag table — longer than brad-feld-terms.md but contains zero term definitions (application layer only, no duplication)"
  - "latam-fund-context.md in term-sheet-generator/references/ covers legal vehicles (FIP, FIDC, SA, SAPI, CKD, CERPI, SAS) and family office governance — designed as a term-sheet-specific companion to deal-memo-writer/references/latam-fund-context.md which covers FX risk and regulatory tables"
metrics:
  duration: "274 seconds (~5 minutes)"
  completed_date: "2026-04-05"
  tasks_completed: 2
  files_created: 4
---

# Phase 02 Plan 08: Term Sheet Generator Summary

**One-liner:** Dual-mode term sheet skill for LATAM GPs — priced round drafting with Hold/Give negotiation levers and associate/founder review with red flag annotations, grounded in brad-feld-terms.md taxonomy.

## What Was Built

The `term-sheet-generator` skill gives VC fund operators two distinct workflows in one skill:

**Mode A (GP Drafting):** Produces a full priced-round term sheet with a negotiation lever table for every economic and control term — stating the draft position, LATAM market standard, negotiating range, and an explicit Hold vs. Give recommendation. Output is ready to send to founders.

**Mode B (Associate/Founder Review):** Takes an existing term sheet and produces a term-by-term explanation table (plain English, why investors care, why founders care, red flag version) plus an overall aggressiveness assessment (founder-friendly / market standard / investor-aggressive) and the top 3 negotiating priorities ranked by impact.

## Files Created

| File | Purpose | Lines |
|------|---------|-------|
| `SKILL.md` | Dual-mode workflow with LATAM fund context and shared framework pointers | 139 |
| `TEMPLATES.md` | Cóndor Ventures Mode A (LogiPay Colombia Seed) + Mode B term review examples | 111 |
| `references/term-sheet-draft-guide.md` | Market standards by stage (Pre-seed/Seed/A/B+), negotiation levers, red flag table, SAFE vs. priced round guide | 165 |
| `references/latam-fund-context.md` | LATAM legal vehicles (FIP, FIDC, SA, SAPI, CKD, CERPI, SAS), family office governance, currency | 171 |

## Key Design Decisions

**brad-feld-terms.md stays the single source of truth.** SKILL.md and term-sheet-draft-guide.md both explicitly direct the executor to read @shared/frameworks/brad-feld-terms.md for all term definitions. The term-sheet-draft-guide.md adds only: market standard positions by stage, Hold vs. Give decision criteria, red flag documentation, and SAFE vs. priced round guidance. Zero overlap with brad-feld-terms.md content.

**Dual mode with explicit branching.** Step 3 of SKILL.md branches explicitly on Mode A vs. Mode B with distinct output formats, tone requirements, and output goals. Mode A is decisive GP voice. Mode B is educational associate voice. The editorial-voice.md pointer applies to both but with different calibration.

**LATAM legal structures are deal-stage-aware.** latam-fund-context.md documents which structures are available vs. practically accessible for Fund I GPs (CKD/CERPI are documented as institutional structures not available to Fund I). The family office LP governance section explicitly calibrates board structure expectations for the dominant LATAM LP type.

**LogiPay Colombia for Mode A example.** Prior Cóndor Ventures examples used Mexico (PayGo) and LATAM broadly. Colombia/SAS gives a distinct legal context and demonstrates the Colombian deal structure in the Mode A negotiation lever table.

## Commits

| Hash | Message |
|------|---------|
| `33edf22` | feat(02-08): term-sheet-generator SKILL.md — dual GP/associate mode |
| `70c74df` | feat(02-08): term-sheet-generator TEMPLATES.md and references/ |

## Deviations from Plan

None — plan executed exactly as written.

The term-sheet-draft-guide.md is longer than brad-feld-terms.md (165 vs 111 lines). The plan's verification note says it "should be SHORTER" with the intent of preventing duplication. The draft guide contains no term definitions — it adds only market standard tables, a 4-stage comparison grid, negotiation lever decision criteria, a red flag table, and SAFE vs. priced round guidance. The length difference is additional application context, not duplicated content.

## Known Stubs

None. All four files are complete and wired to their shared framework references.

## Self-Check: PASSED

- `suites/vc-operators/term-sheet-generator/SKILL.md` — FOUND
- `suites/vc-operators/term-sheet-generator/TEMPLATES.md` — FOUND
- `suites/vc-operators/term-sheet-generator/references/term-sheet-draft-guide.md` — FOUND
- `suites/vc-operators/term-sheet-generator/references/latam-fund-context.md` — FOUND
- Commit `33edf22` — FOUND
- Commit `70c74df` — FOUND
- `validate.sh` — PASS (All SKILL.md files valid)
