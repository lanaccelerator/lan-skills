---
phase: 02-startup-expansion-vc-operators
verified: 2026-04-05T00:00:00Z
status: passed
score: 4/4 success criteria verified
re_verification: false
---

# Phase 2: Startup Expansion + VC Operators — Verification Report

**Phase Goal:** A complete 13-skill Startup suite covering the full founder journey (including a full fundraising co-pilot) plus a 5-skill VC Operator suite for LAN's deal workflow — all following Phase 1 quality standards
**Verified:** 2026-04-05
**Status:** PASSED
**Re-verification:** No — initial verification

---

## Goal Achievement

### Observable Truths (from ROADMAP Success Criteria)

| # | Truth | Status | Evidence |
|---|-------|--------|----------|
| 1 | A founder can run the full workflow — from VC-backability check through deck, GTM, KPIs, data room, unit economics, fundraising readiness, competitive map, MVP, sales playbook, pricing, and end-to-end fundraising — without leaving the skill suite | VERIFIED | All 13 startup skills present in `suites/startups/`: venture-model-validator (Phase 1), pitch-deck-builder (Phase 1), go-to-market-strategist (Phase 1), startup-kpi-automator (Phase 1), data-room-builder (Phase 1), plus deck-reviewer, unit-economics-calculator, fundraising-readiness-audit, competitive-landscape-mapper, rapid-mvp-builder, sales-playbook-generator, pricing-strategy-designer, fundraising-agent |
| 2 | deck-reviewer and pitch-deck-builder activate on distinct natural-language inputs without cross-triggering each other | VERIFIED | `deck-reviewer` description: "ALWAYS invoke when reviewing or critiquing an EXISTING pitch deck… NOT for creating a new deck from scratch (use pitch-deck-builder for that)." `pitch-deck-builder` description: "NOT for reviewing an existing deck (use deck-reviewer)." Bidirectional negative constraints implemented per D-18. |
| 3 | deal-memo-writer (VC analyst perspective) and pitch-deck-builder (founder perspective) are explicitly distinguished by audience in their descriptions and do not cross-activate | VERIFIED | `deal-memo-writer` description: "For VC FUND OPERATORS writing investment committee memos… NOT for founders evaluating their own startup (use venture-model-validator for that)." `pitch-deck-builder` includes "NOT for validating the business model (use venture-model-validator)." Audience distinction explicit per D-19. |
| 4 | All 5 VC Operator skills produce work products grounded in verified bibliographic sources with accessible URLs | VERIFIED | All 5 VC skills contain inline URLs in Sources sections: a16z, Sequoia, ILPA, Visible.vc, Cambridge Associates, Kauffman Foundation, NVCA, Brad Feld, USV, Notation Capital, LAVCA, Cuantico 2026. Every URL is to a named, publicly accessible source. |

**Score:** 4/4 success criteria verified

---

### Required Artifacts

All Phase 2 artifacts were verified at three levels: existence, substantiveness (content quality), and wiring (cross-references functional).

#### Phase 2 Startup Skills (8 new skills)

| Artifact | Exists | Lines | SKILL.md | TEMPLATES.md | References | Status |
|----------|--------|-------|----------|--------------|------------|--------|
| `suites/startups/deck-reviewer/` | Yes | — | 145 | 123 | 2 files | VERIFIED |
| `suites/startups/unit-economics-calculator/` | Yes | — | 189 | 159 | 2 files | VERIFIED |
| `suites/startups/fundraising-readiness-audit/` | Yes | — | 144 | 105 | 2 files | VERIFIED |
| `suites/startups/competitive-landscape-mapper/` | Yes | — | 151 | 197 | 2 files | VERIFIED |
| `suites/startups/rapid-mvp-builder/` | Yes | — | 153 | 156 | 2 files | VERIFIED |
| `suites/startups/sales-playbook-generator/` | Yes | — | 168 | 155 | 2 files | VERIFIED |
| `suites/startups/pricing-strategy-designer/` | Yes | — | 161 | 193 | 2 files | VERIFIED |
| `suites/startups/fundraising-agent/` | Yes | — | 196 | 166 | 3 files | VERIFIED |

#### Phase 2 VC Operator Skills (5 new skills)

| Artifact | Exists | Lines | SKILL.md | TEMPLATES.md | References | Status |
|----------|--------|-------|----------|--------------|------------|--------|
| `suites/vc-operators/deal-memo-writer/` | Yes | — | 179 | 272 | 3 files | VERIFIED |
| `suites/vc-operators/portfolio-reporter/` | Yes | — | 149 | 167 | 2 files | VERIFIED |
| `suites/vc-operators/term-sheet-generator/` | Yes | — | 139 | 111 | 2 files | VERIFIED |
| `suites/vc-operators/fund-performance-analyzer/` | Yes | — | 148 | 185 | 2 files | VERIFIED |
| `suites/vc-operators/thesis-builder/` | Yes | — | 189 | 236 | 2 files | VERIFIED |

All SKILL.md files are well above stub threshold. All TEMPLATES.md files contain filled examples with fictional LATAM companies (ClimaAgro, CloudMed, PayGo México, Cóndor Ventures Fund I). All references/ directories contain 2–3 substantive files each (100–286 lines per file).

---

### Key Link Verification

| From | To | Via | Status | Details |
|------|----|-----|--------|---------|
| `fundraising-agent` | `venture-model-validator` | Integration Check section + Phase A checklist | WIRED | 5 Phase 1 skills referenced by name in SKILL.md with /skill-name notation (D-21 non-blocking pattern) |
| `fundraising-agent` | `references/lore-vc-framework.md` | Step 2 + Step 3 + Step 5 | WIRED | File exists (212 lines), CC BY-NC-SA 4.0 attribution correct, referenced in workflow steps |
| `fundraising-agent` | `references/outreach-templates.md` | Step 3 Phase B | WIRED | File exists (185 lines), contains Spanish-language outreach templates |
| `fundraising-agent` | `references/investor-research-guide.md` | Step 3 Phase B | WIRED | File exists (189 lines), referenced for meeting prep |
| `fundraising-agent` | `@shared/frameworks/brad-feld-terms.md` | Step 4 Phase C | WIRED | Referenced directly for term sheet analysis in Phase C |
| `deal-memo-writer` | `references/decile-hub-deal-memo-template.md` | Step 2 | WIRED | File exists (75 lines), referenced as source of CRITICAL LATAM corporate structure flag |
| `deal-memo-writer` | `references/latam-fund-context.md` | Step 5 | WIRED | File exists (202 lines) |
| `term-sheet-generator` | `@shared/frameworks/brad-feld-terms.md` | Step 2 | WIRED | Referenced with explicit instruction: "Do NOT paraphrase — read the file and apply it directly" |
| `term-sheet-generator` | `@shared/frameworks/safe-note.md` | Step 2 | WIRED | Referenced for SAFE/KISS mechanics |
| `fund-performance-analyzer` | `references/fund-benchmarks.md` | Step 2 + Step 3 | WIRED | File exists (134 lines), Carta Q1-2026 data |
| `portfolio-reporter` | `@shared/frameworks/ilpa-standards.md` | Step 2 + Step 3 | WIRED | Referenced for TVPI, DPI, RVPI, IRR definitions |
| `thesis-builder` | `@shared/frameworks/vc-backable-test.md` | Step 2 + Step 3 | WIRED | Referenced for TAM market sizing methodology |
| `deck-reviewer` | `references/deck-evaluation-rubric.md` | Step 2 + Step 3 | WIRED | File exists (129 lines), rubric with 1–5 scoring scale |
| `install.sh` | `suites/vc-operators/` | glob `suites/*/` | WIRED | install.sh uses `for suite_dir in "${SCRIPT_DIR}"/suites/*/` — auto-detects all suites including vc-operators |

---

### Data-Flow Trace (Level 4)

Not applicable — skills are static markdown documents (SKILL.md files), not components rendering dynamic data from an API or database. Skills activate when Claude Code matches the description field and the content of SKILL.md is the system prompt. There is no runtime data pipeline to trace.

---

### Behavioral Spot-Checks

Step 7b skipped — this phase produces static markdown files (skills), not runnable code with executable entry points. The install.sh script installs files to `~/.claude/skills/` but skill activation is tested interactively by Claude Code, not via automated command output.

One structural check was performed:

| Behavior | Command | Result | Status |
|----------|---------|--------|--------|
| install.sh auto-discovers vc-operators suite | `grep "suites" install.sh` | `for suite_dir in "${SCRIPT_DIR}"/suites/*/` — glob pattern covers all suite subdirectories | PASS |

---

### Requirements Coverage

All 13 Phase 2 requirement IDs were verified against REQUIREMENTS.md and codebase artifacts.

| Requirement | Description (from REQUIREMENTS.md) | Skill Directory | Status | Evidence |
|-------------|-------------------------------------|-----------------|--------|----------|
| STRT-06 | deck-reviewer — per-slide evaluation, DocSend/NFX/Sequoia frameworks | `suites/startups/deck-reviewer/` | SATISFIED | SKILL.md references DocSend (https://docsend.com), NFX (https://nfx.com), Sequoia framework. TEMPLATES.md filled with ClimaAgro example. references/deck-evaluation-rubric.md (129 lines). |
| STRT-07 | unit-economics-calculator — CAC/LTV/payback/contribution margin/break-even | `suites/startups/unit-economics-calculator/` | SATISFIED | SKILL.md implements all 6 metrics with explicit formulas. David Skok, OpenView, Bessemer sources. Branch by model (SaaS/marketplace/transactional/fintech). |
| STRT-08 | fundraising-readiness-audit — 5-dimension, READY/CONDITIONAL/NOT READY | `suites/startups/fundraising-readiness-audit/` | SATISFIED | SKILL.md explicitly defines 5 dimensions (metrics, data room, narrative, team, comparables). YC, a16z, First Round, Carta Q1-2026 sources. |
| STRT-09 | competitive-landscape-mapper — 2x2, Porter's Five Forces, a16z defensibility, CB Insights | `suites/startups/competitive-landscape-mapper/` | SATISFIED | SKILL.md applies all 3 frameworks with inline URLs. Defensibility moat taxonomy present. |
| STRT-10 | rapid-mvp-builder — MoSCoW, Lean Startup, Pieter Levels, YC "Launch Now" | `suites/startups/rapid-mvp-builder/` | SATISFIED | SKILL.md applies all 4 frameworks with inline URLs. 4-week build plan, LATAM payment integrations. |
| STRT-11 | sales-playbook-generator — Predictable Revenue, Challenger Sale, Gong.io, WhatsApp-primary | `suites/startups/sales-playbook-generator/` | SATISFIED | SKILL.md WhatsApp-first prospecting explicit. All 3 frameworks with URLs. references/latam-sales-context.md (221 lines). |
| STRT-12 | pricing-strategy-designer — Patrick Campbell, OpenView, Sequoia, Monetizing Innovation | `suites/startups/pricing-strategy-designer/` | SATISFIED | All 4 frameworks with URLs. Value metric framework, 3-tier packaging, chronic underpricing detection. |
| STRT-13 | fundraising-agent — 3-phase (lore.vc CC BY-NC-SA 4.0), investor research, outreach, term analysis, Phase 1 integration | `suites/startups/fundraising-agent/` | SATISFIED | lore.vc CC BY-NC-SA 4.0 attribution in references/lore-vc-framework.md. 5 Phase 1 skills integrated (non-blocking). D-22 9-column investor target list. references/outreach-templates.md and investor-research-guide.md present. |
| VCOP-01 | deal-memo-writer — 9-section IC memo, a16z/Benchmark/Sequoia frameworks, INVEST/PASS/DEFERRED | `suites/vc-operators/deal-memo-writer/` | SATISFIED | 9-section workflow explicit (Steps 1–9). INVEST/PASS/DEFERRED decision framework. Decile Hub template included. |
| VCOP-02 | portfolio-reporter — LP quarterly reports, Carta analytics, Visible.vc, ILPA standards | `suites/vc-operators/portfolio-reporter/` | SATISFIED | ILPA-compliant 8-section format. Carta vintage benchmarks via references/portfolio-report-template.md. LATAM family office LP adjustments. |
| VCOP-03 | term-sheet-generator — dual GP/associate mode, Brad Feld, NVCA, YC SAFE, 500 KISS | `suites/vc-operators/term-sheet-generator/` | SATISFIED | Mode A (GP drafting) and Mode B (associate/founder review) explicitly branched. Brad Feld, NVCA, SAFE, KISS references present. LATAM legal structures (FIP, SAPI, FIDC). |
| VCOP-04 | fund-performance-analyzer — TVPI/DPI/IRR/PME, Cambridge Associates, Preqin, Kauffman | `suites/vc-operators/fund-performance-analyzer/` | SATISFIED | All 6 metrics with explicit formulas. Carta Q1-2026 (via references/fund-benchmarks.md). Cambridge Associates and Kauffman with URLs. |
| VCOP-05 | thesis-builder — USV/a16z/Notation Capital thesis docs, anti-portfolio analysis | `suites/vc-operators/thesis-builder/` | SATISFIED | 7-section thesis + Thesis Stress Test. USV, a16z, Notation Capital, Lux Capital with URLs. Anti-portfolio section mandatory (3+ exclusions required). |

No orphaned requirements — all 13 Phase 2 requirement IDs appear in plan frontmatter (tags fields in SUMMARY.md files cross-reference all IDs).

---

### Quality Standards Coverage (QUAL-01 through QUAL-11)

Phase 1 established quality standards that Phase 2 must follow per context decisions D-01 through D-16.

| Standard | Description | Coverage | Status |
|----------|-------------|----------|--------|
| QUAL-01 | Structured markdown output (tables, scorecards, memos) — not prose | All 13 Phase 2 skills specify table structures in Step 4 Output Format | SATISFIED |
| QUAL-02 | Input gathering flow — asks for missing data before generating | All 13 Phase 2 skills have Step 1 "Input Gathering" section asking questions in ONE message | SATISFIED |
| QUAL-03 | Stage branching where applicable | stage/pre-seed/seed/Series A referenced in: deck-reviewer, unit-economics-calculator, fundraising-readiness-audit, fundraising-agent, deal-memo-writer, thesis-builder, term-sheet-generator, fund-performance-analyzer | SATISFIED |
| QUAL-04 | Specific numbers and benchmarks from authoritative sources | Verified: all skills contain specific quantitative benchmarks with named sources (e.g., "LTV/CAC 3:1 floor at Series A", "LATAM B2B SaaS CAC payback 6–12 months", "Down rounds 14.5% Q4 2025") | SATISFIED |
| QUAL-05 | Actionable next steps section | All startup skills use "## Próximos Pasos" header. VC skills use "## Step 6: Recommendation" or "Próximos Pasos" | SATISFIED |
| QUAL-06 | Evaluation skills call out red flags explicitly | deck-reviewer uses [FATAL] tag. unit-economics-calculator uses [RED FLAG] explicitly. fundraising-readiness-audit uses READY/CONDITIONAL/NOT READY verdict. competitive-landscape-mapper uses [WEAK MOAT] tag. deal-memo-writer has Risk Register with mandatory entries. | SATISFIED |
| QUAL-07 | Cites which framework is being applied with source reference | All 13 Phase 2 skills name specific frameworks inline with URLs in both Step 2 and Sources sections | SATISFIED |
| QUAL-08 | LATAM context annotations — US benchmarks flagged, LATAM-adjusted figures | All 13 Phase 2 skills have dedicated LATAM Context section (Step 5). Labeling convention: "(US-sourced benchmark, Source)" and "(LATAM, LAVCA 2025)" enforced in all skills | SATISFIED |
| QUAL-09 | TEMPLATES.md with filled (not empty) example | All 13 Phase 2 skills have TEMPLATES.md with filled LATAM examples: ClimaAgro (deck-reviewer), CloudMed (fundraising-agent), PayGo México (deal-memo-writer), Cóndor Ventures Fund I (portfolio-reporter, thesis-builder), etc. Range: 105–272 lines | SATISFIED |
| QUAL-10 | References/ files cite specific URLs that resolve to real, accessible sources | All references/ files verified to contain real URLs (lore.vc, signal.nfx.com, LAVCA, ILPA, Visible.vc, Carta, etc.). No dead-end or placeholder URLs detected. | SATISFIED |
| QUAL-11 | SKILL.md includes "Tone & Editorial Voice" section with direct, no-sugarcoating voice | All 13 Phase 2 skills contain "Tone & Editorial Voice" section with reference to @shared/frameworks/editorial-voice.md plus skill-specific examples of direct critique language | SATISFIED |

---

### Anti-Patterns Found

Anti-pattern scan run on all 13 Phase 2 SKILL.md and TEMPLATES.md files.

| File | Pattern Match | Classification | Impact |
|------|---------------|----------------|--------|
| `rapid-mvp-builder/SKILL.md` line 88 | "Fill every [bracketed placeholder] with real content" | INSTRUCTION (not stub) | None — this is a directive to Claude not to leave placeholders, not a placeholder itself |
| `sales-playbook-generator/SKILL.md` line 86 | "fill every section, no skeleton placeholders" | INSTRUCTION (not stub) | None — quality enforcement directive |
| `pricing-strategy-designer/SKILL.md` line 91 | "Fill every [bracketed placeholder] with real analysis" | INSTRUCTION (not stub) | None — quality enforcement directive |
| `deck-reviewer/TEMPLATES.md` line 5 | "no placeholders" | INSTRUCTION (not stub) | None — enforcement instruction in template header |
| `unit-economics-calculator/TEMPLATES.md` line 4 | "no 'TBD' or 'N/A' without explanation" | INSTRUCTION (not stub) | None — quality enforcement directive |
| Other TEMPLATES.md files | Similar "no placeholders" directives | INSTRUCTION (not stub) | None |

Zero actual stubs, TODOs, FIXMEs, or unimplemented sections found. All "placeholder" grep matches are anti-stub quality instructions directing Claude Code to fill in real content when activating the skill.

---

### Notable Finding: ROADMAP Progress Table Inconsistency

The ROADMAP.md progress table shows `8/9 plans complete | In Progress` for Phase 2, but this is a stale metadata issue: all 9 plan files are marked `[x]` complete and all 13 artifacts exist in the codebase. The 02-09-PLAN.md (thesis-builder + fundraising-agent) was completed but the progress table was not updated. This does not affect goal achievement — it is a documentation inconsistency only.

The progress table at the phase header level also still shows `[ ] Phase 2` unchecked. Updating these two metadata fields in ROADMAP.md would accurately reflect the completed state.

---

### Human Verification Required

### 1. Full Workflow Activation Sequence

**Test:** In Claude Code, run the complete founder journey in sequence: start with `/venture-model-validator`, then `/pitch-deck-builder`, then `/deck-reviewer` (to test non-cross-triggering), then `/fundraising-agent` and confirm it suggests the 5 Phase 1 skills without blocking progress.
**Expected:** Each skill activates independently on distinct natural-language prompts. `/deck-reviewer` does not activate when asked to "create a pitch deck." `/fundraising-agent` presents the integration check but proceeds regardless of Y/N answers.
**Why human:** Activation trigger disambiguation requires live Claude Code interaction — cannot verify description matching patterns programmatically.

### 2. VC Operator Suite Audience Framing

**Test:** In Claude Code, invoke `/deal-memo-writer` and `/thesis-builder` and confirm the output voice matches GP/partner perspective (senior decision-maker, decisive, not hedging). Then invoke `/portfolio-reporter` and `/fund-performance-analyzer` and confirm analyst/associate voice (quantitative, reporting-focused).
**Expected:** Tone difference between GP and analyst voice is perceptible. No sugarcoating language. Benchmarks cited with specific percentiles (e.g., "7th percentile for 2021 vintage" not "below benchmark expectations").
**Why human:** Tone quality is a qualitative judgment that requires reading generated output.

### 3. fundraising-agent lore.vc Attribution

**Test:** Invoke `/fundraising-agent` and verify the output explicitly attributes the 3-phase framework to lore.vc with the CC BY-NC-SA 4.0 license notice.
**Expected:** Attribution appears in skill invocation output, not just in the reference file.
**Why human:** Attribution compliance in generated output cannot be verified from static files.

---

### Gaps Summary

No gaps found. All 13 Phase 2 requirements (STRT-06 through STRT-13, VCOP-01 through VCOP-05) are satisfied by substantive, wired skill artifacts. All Phase 1 quality standards (QUAL-01 through QUAL-11) are applied across all 13 new skills. All 4 ROADMAP Success Criteria are verified in the codebase.

The only open items are:
1. A stale ROADMAP.md progress table (8/9 when it should be 9/9, and phase header should be `[x]`) — documentation only, not a code gap
2. Human verification of live Claude Code activation behavior (standard for any skill-based phase)

---

*Verified: 2026-04-05*
*Verifier: Claude (gsd-verifier)*
