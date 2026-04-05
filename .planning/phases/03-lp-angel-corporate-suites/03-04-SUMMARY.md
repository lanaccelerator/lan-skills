---
phase: 03-lp-angel-corporate-suites
plan: "04"
subsystem: suites/corporates
tags: [corporate-innovation, open-innovation, chesbrough, innovation-theater, latam-corporate]
dependency_graph:
  requires:
    - 03-01 (angel-investment-analyzer — structural SKILL.md pattern)
    - 03-02 (vc-fund-due-diligence — LATAM benchmarks pattern)
    - 03-03 (lp-term-sheet-analyzer — references/ pattern)
  provides:
    - Corporate suite pattern-setter (suite: corporates YAML, corporate vocabulary, [THEATER] callouts)
    - digital-transformation-context.md pattern for Plans 05 and 06
    - LATAM corporate innovation benchmark file (latam-context.md) for Plans 05 and 06
  affects:
    - 03-05 (startup-solution-matcher — inherits corporate vocabulary and [THEATER] pattern)
    - 03-06 (corporate-venture-evaluator — inherits digital-transformation-context.md subset pattern)
tech_stack:
  added: []
  patterns:
    - "suite: corporates YAML pattern established (new audience register)"
    - "Corporate vocabulary mapping (pilot ROI / strategic alignment / innovation theater)"
    - "D-35 pattern: 'For CORPORATE INNOVATION TEAMS (not X, not Y)' in description"
    - "D-36 pattern: skill-specific digital-transformation-context.md with open innovation subset"
    - "[THEATER] callout pattern for innovation theater detection"
key_files:
  created:
    - suites/corporates/open-innovation-scanner/SKILL.md
    - suites/corporates/open-innovation-scanner/TEMPLATES.md
    - suites/corporates/open-innovation-scanner/references/digital-transformation-context.md
    - suites/corporates/open-innovation-scanner/references/latam-context.md
  modified: []
decisions:
  - "Bancolombia Innovation Lab (banking) chosen as TEMPLATES.md example — Colombia geography enables SFC, FINAGRO, Nequi/Daviplata regulatory specificity that is genuinely distinct from all prior startup examples; SME lending automation produces a maximally instructive 4-gap innovation opportunity map"
  - "Two [THEATER] callouts chosen: (1) committee governance vs. named executive sponsor — the most common LATAM corporate innovation failure, (2) unrealistic SFC timeline — LATAM-specific regulatory reality that US-trained innovation directors consistently underestimate"
  - "Gap 4 (legacy Finacle integration) classified as Build-internal with PRIORITY 3 — demonstrates that not every gap is startup-addressable; internal IT gaps belong in the innovation map but not in the startup sourcing pipeline"
  - "latam-context.md structured as reusable reference with LATAM corporate innovation operational benchmarks — designed to carry forward unchanged to Plans 05 and 06 as the canonical LATAM corporate context file"
  - "LATAM Context box includes Nequi spinout case — the most instructive LATAM corporate innovation success story, directly relevant to Bancolombia as the example subject"
metrics:
  duration_minutes: 5
  completed_date: "2026-04-05"
  tasks_completed: 2
  files_created: 4
  files_modified: 0
---

# Phase 03 Plan 04: Open Innovation Scanner Summary

**One-liner:** Corporate innovation opportunity mapping with Chesbrough Outside-In/Inside-Out/Coupled framework, innovation theater detection via [THEATER] callouts, and LATAM procurement-reality-adjusted recommendations — pattern-setter for the corporates/ suite.

---

## What Was Built

The `suites/corporates/open-innovation-scanner/` skill directory, fully populated with 4 files:

1. **SKILL.md** (199 lines) — Corporate suite pattern-setter. Establishes the new audience voice
   (corporate innovation directors), new vocabulary register (pilot ROI / strategic alignment /
   implementation complexity — never VC/founder vocabulary), and the [THEATER] callout pattern.
   Includes the D-35 mandatory description format, D-34 innovation theater detection, and
   D-36 references/ subset pattern.

2. **TEMPLATES.md** (238 lines) — Fully filled Bancolombia Innovation Lab example. Dr. Ana
   Gómez (VP Innovación) runs open-innovation-scanner to map how Bancolombia reduces SME
   lending from 21 days to 3 days. Four-gap Innovation Opportunity Map with build/buy/partner/
   license classification, two [THEATER] callouts (committee governance and SFC timeline
   misalignment), LATAM Context box with Nequi case and SFC regulatory reality, and 5
   Próximos Pasos with Day 30/45/60/90 milestones.

3. **references/digital-transformation-context.md** (107 lines) — Open innovation subset.
   Chesbrough three-model framework, BCG 2024 pilot benchmarks (23% strategic impact,
   12% pilot-to-scale rate, 4–6 month LATAM payment timeline), NESTA innovation theater
   definitions, McKinsey NIH syndrome data, Gartner Pace Layers, LAVCA 2025 CVC data.

4. **references/latam-context.md** (120 lines) — LATAM corporate innovation operational
   benchmarks. Procurement timeline table (LATAM 4–9 months vs. US 6–8 weeks), internal
   champion completion rates (3.2× with VP-level), pilot success criteria reality (31%
   LATAM vs. 68% US define criteria before starting), sector digitization levels, FX risk
   methodology, startup sourcing channels, and Bancolombia/Cubo Itaú/Wayra case studies.

---

## Vocabulary Shift Established

The D-33 corporate vocabulary mapping is applied throughout all four files:

| Eliminated (VC/Startup) | Replaced With (Corporate Innovation) |
|-------------------------|---------------------------------------|
| "VC-backable" | "strategically aligned / pilot ROI positive" |
| "PMF" | "validated business case / internal champion confirmed" |
| "red flag" | "innovation theater indicator" |
| "pass on the deal" | "kill the pilot / descope the engagement" |
| "investable" | "pilot-ready / partnership-ready" |

Verified: `grep "VC-backable\|PMF\|investable" SKILL.md` returns 0 matches.

---

## Pattern Inheritance for Plans 05 and 06

**Plan 05 (startup-solution-matcher) inherits:**
- Corporate vocabulary register from SKILL.md
- [THEATER] callout pattern
- latam-context.md can be referenced directly (same operational context applies)

**Plan 06 (corporate-venture-evaluator) inherits:**
- digital-transformation-context.md subset pattern (Plan 06 authors its own subset:
  corporate venture / CVC chapter, not open innovation chapter)
- Suite: corporates YAML pattern
- D-35 description format

---

## Deviations from Plan

None — plan executed exactly as written.

---

## Known Stubs

None. All sections in TEMPLATES.md are fully filled with real analysis. No placeholder text,
no "coming soon" sections, no empty table cells.

---

## Self-Check: PASSED

Files exist:
- [x] suites/corporates/open-innovation-scanner/SKILL.md — 199 lines
- [x] suites/corporates/open-innovation-scanner/TEMPLATES.md — 238 lines
- [x] suites/corporates/open-innovation-scanner/references/digital-transformation-context.md — 107 lines
- [x] suites/corporates/open-innovation-scanner/references/latam-context.md — 120 lines

Commits exist:
- [x] 5b6bc87 — feat(03-04): open-innovation-scanner SKILL.md + references/
- [x] 58c091d — feat(03-04): open-innovation-scanner TEMPLATES.md

Plan verification criteria met:
- [x] suite: corporates in SKILL.md YAML
- [x] "CORPORATE INNOVATION TEAMS" in description (D-35)
- [x] Two NOT constraints in description (D-35)
- [x] [THEATER] callouts in SKILL.md (D-34)
- [x] editorial-voice.md referenced in SKILL.md (D-34)
- [x] latam-benchmarks.md referenced in SKILL.md
- [x] No VC/founder vocabulary in SKILL.md (D-33)
- [x] SKILL.md under 500 lines (199 lines)
- [x] TEMPLATES.md filled with Bancolombia example (not skeleton)
- [x] TEMPLATES.md contains [THEATER] callouts
- [x] TEMPLATES.md contains LATAM context
- [x] Colombian specificity: SFC, FINAGRO, Nequi, Daviplata, Certicámara (38 references)
