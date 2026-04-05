---
phase: 01-foundation-startup-core
plan: 04
subsystem: skills
tags: [pitch-deck, gtm, sequoia, weinberg-traction, latam, kawasaki, moore-crossing-the-chasm, whatsapp]

# Dependency graph
requires:
  - phase: 01-foundation-startup-core
    provides: validate.sh, shared/frameworks/ (editorial-voice.md, sequoia-deck.md, latam-benchmarks.md), venture-model-validator SKILL.md pattern

provides:
  - suites/startups/pitch-deck-builder/ — complete skill with SKILL.md, TEMPLATES.md, references/sequoia-deck.md, references/latam-context.md
  - suites/startups/go-to-market-strategist/ — complete skill with SKILL.md, TEMPLATES.md, references/gtm-channels.md, references/latam-context.md
  - Two skills disambiguated from each other via three-component description pattern (D-07)
  - Both skills include Tone & Editorial Voice section per QUAL-11
  - validate.sh passes for all 3 skills

affects: [01-05-startup-kpi-automator, 01-06-data-room-builder, future-phase-integrations]

# Tech tracking
tech-stack:
  added: []
  patterns:
    - "Three-component description: domain + ALWAYS invoke + negative constraint (two sibling skills named explicitly)"
    - "Tone section: pointer-only reference to shared/frameworks/editorial-voice.md, never inline"
    - "TEMPLATES.md filled with LATAM hypothetical example (Alegra for pitch-deck; Konfío for GTM)"
    - "References split: shared/ for cross-skill frameworks, references/ for skill-specific application detail"
    - "LATAM annotation protocol: US benchmark labeled (US-sourced benchmark); LATAM figure labeled (LATAM, LAVCA 2025 / Cuantico 2026)"

key-files:
  created:
    - suites/startups/pitch-deck-builder/SKILL.md
    - suites/startups/pitch-deck-builder/TEMPLATES.md
    - suites/startups/pitch-deck-builder/references/sequoia-deck.md
    - suites/startups/pitch-deck-builder/references/latam-context.md
    - suites/startups/go-to-market-strategist/SKILL.md
    - suites/startups/go-to-market-strategist/TEMPLATES.md
    - suites/startups/go-to-market-strategist/references/gtm-channels.md
    - suites/startups/go-to-market-strategist/references/latam-context.md
  modified: []

key-decisions:
  - "pitch-deck-builder references/sequoia-deck.md is skill-specific application detail (investor intent, failure modes, LATAM variants), NOT a duplicate of shared/frameworks/sequoia-deck.md (raw framework)"
  - "go-to-market-strategist adds WhatsApp as Channel 19 in the gtm-channels.md reference — Weinberg's 2014 book predates WhatsApp for Business; LATAM context makes this critical"
  - "TEMPLATES.md uses real LATAM company names (Alegra, Konfío) as examples with specific data — fake company names would produce lower-quality output targets"
  - "Both SKILL.md files kept under 145 lines — all framework depth lives in references/ files, SKILL.md is pure workflow orchestration"

patterns-established:
  - "Pattern: Skill body = workflow orchestration, references/ = content depth. Never put framework detail in SKILL.md."
  - "Pattern: Every TEMPLATES.md filled example uses a real LATAM company analogue (Alegra for B2B SaaS, Konfío for fintech) to ground the hypothetical in recognizable LATAM context"
  - "Pattern: gtm-channels.md scores all 19 Weinberg channels with LATAM notes — future GTM skills (if any) should extend this file, not duplicate it"

requirements-completed: [STRT-02, STRT-03, QUAL-11]

# Metrics
duration: 12min
completed: 2026-04-05
---

# Phase 01 Plan 04: pitch-deck-builder and go-to-market-strategist Summary

**pitch-deck-builder (Sequoia/Kawasaki/YC, Alegra 10-slide example) and go-to-market-strategist (Moore/Weinberg/YC/a16z, Konfío fintech GTM example) with WhatsApp as LATAM's dominant B2B acquisition channel, both with Tone & Editorial Voice section per QUAL-11**

## Performance

- **Duration:** ~12 min
- **Started:** 2026-04-05T02:46:56Z
- **Completed:** 2026-04-05T02:58:09Z
- **Tasks:** 2 of 2
- **Files modified:** 8 created

## Accomplishments

- pitch-deck-builder: 132-line SKILL.md with stage-branching (Kawasaki for pre-seed, Sequoia for Seed, Sequoia + YC diligence for Series A), 10-slide Alegra B2B SaaS template with filled [DATA NEEDED] flags, slide-by-slide sequoia-deck.md reference with LATAM variants per slide
- go-to-market-strategist: 142-line SKILL.md with Moore beachhead + Weinberg 19-channel scoring + YC GTM principles + a16z sales motion, Konfío fintech GTM template with WhatsApp as top channel, full 90-day plan table
- Both skills: three-component descriptions with correct negative constraints (deck-reviewer, venture-model-validator for pitch; pitch-deck-builder, unit-economics-calculator for GTM), Tone & Editorial Voice sections (QUAL-11), LATAM context sections citing LAVCA 2025 and Cuantico 2026
- validate.sh passes for all 3 skills (venture-model-validator + both new skills)
- STRT-02, STRT-03, QUAL-11 requirements satisfied

## Task Commits

1. **Task 1: pitch-deck-builder** - `6950b3a` (feat)
2. **Task 2: go-to-market-strategist** - `b90b971` (feat)

## Files Created/Modified

- `suites/startups/pitch-deck-builder/SKILL.md` — 132 lines; Sequoia/Kawasaki/YC framework orchestration with stage-branching
- `suites/startups/pitch-deck-builder/TEMPLATES.md` — 10-slide Alegra B2B SaaS Seed example with filled talking points, data status, and common errors
- `suites/startups/pitch-deck-builder/references/sequoia-deck.md` — Slide-by-slide investor intent, required data, failure modes, Kawasaki pre-seed variants, and LATAM benchmarks per slide
- `suites/startups/pitch-deck-builder/references/latam-context.md` — LATAM investor expectations by stage, market sizing methodology, 5 common LATAM deck mistakes, stage benchmark table (LAVCA 2025 + Cuantico 2026)
- `suites/startups/go-to-market-strategist/SKILL.md` — 142 lines; Moore/Weinberg/YC/a16z framework orchestration with 10-step workflow
- `suites/startups/go-to-market-strategist/TEMPLATES.md` — Konfío-style B2B fintech GTM with beachhead definition, full 19-channel scorecard, top 3 channel acquisition plans, unit economics table, 90-day plan
- `suites/startups/go-to-market-strategist/references/gtm-channels.md` — All 19 Weinberg channels with best-for, LATAM notes, stage suitability, CAC ranges; WhatsApp added as Channel 19 for LATAM context
- `suites/startups/go-to-market-strategist/references/latam-context.md` — Channel performance tables (WhatsApp vs email vs LinkedIn), sales cycle length by segment, LATAM sales motion principles, CAC benchmarks by channel, GTM risks

## Decisions Made

- pitch-deck-builder's `references/sequoia-deck.md` provides skill-specific application detail (investor intent, failure modes, Kawasaki pre-seed variants) while `shared/frameworks/sequoia-deck.md` provides the raw framework structure — the two files are complementary, not duplicative
- WhatsApp added as Channel 19 in gtm-channels.md: Weinberg's 2014 taxonomy predates WhatsApp for Business; for LATAM GTM the channel is operationally distinct and scores 3/3 for B2B SME segment
- TEMPLATES.md examples use real LATAM company analogues (Alegra, Konfío) not fictitious companies — this produces higher-quality target outputs because Claude can reference known company context
- Both skills kept under 145 lines by keeping all framework depth in references/ — SKILL.md remains pure workflow orchestration per the pattern established in venture-model-validator

## Deviations from Plan

None — plan executed exactly as written. Both skills created with all required files, all acceptance criteria satisfied, validate.sh passes.

## Issues Encountered

None.

## User Setup Required

None — no external service configuration required.

## Next Phase Readiness

- pitch-deck-builder and go-to-market-strategist are complete and immediately usable
- 3 of 5 startup skills complete (venture-model-validator, pitch-deck-builder, go-to-market-strategist)
- Plan 05 (startup-kpi-automator) is the next skill in the D-11 build order
- data-room-builder (Plan 05 or later) will reference outputs from all prior skills; no blocking dependencies

---
*Phase: 01-foundation-startup-core*
*Completed: 2026-04-05*
