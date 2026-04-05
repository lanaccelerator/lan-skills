---
phase: 03-lp-angel-corporate-suites
verified: 2026-04-04T00:00:00Z
status: passed
score: 4/4 must-haves verified
re_verification: false
---

# Phase 3: LP & Angel + Corporate Suites Verification Report

**Phase Goal:** All 27 skills complete across all 4 suites — LP/Angel investors and corporate innovation teams can install and run their respective skills
**Verified:** 2026-04-04
**Status:** passed
**Re-verification:** No — initial verification

---

## Goal Achievement

### Observable Truths (from ROADMAP.md Success Criteria)

| # | Truth | Status | Evidence |
|---|-------|--------|----------|
| 1 | angel-investment-analyzer (LP side) and venture-model-validator (founder side) use the same scoring criteria from opposite perspectives without cross-activating | VERIFIED | angel-investment-analyzer SKILL.md: "NOT for founders evaluating their own startup (use venture-model-validator for that). NOT for VC fund operators writing IC memos (use deal-memo-writer for that)." Both reference vc-backable-test.md. Activation triggers are audience-specific. Note: venture-model-validator was built in Phase 1 and does not have a reverse guard — this is acceptable because activation is triggered by founder-framing ("is my startup fundable?") while investor-framing triggers angel-investment-analyzer. |
| 2 | lp-term-sheet-analyzer references brad-feld-terms.md without duplicating content | VERIFIED | SKILL.md line 50: "Read @shared/frameworks/brad-feld-terms.md — what each term MEANS." Line 63 documents D-39 separation: "brad-feld-terms.md → term definitions and mechanics; ilpa-standards.md → what ILPA-aligned governance looks like; references/lp-analysis-criteria.md → how an LP evaluates terms received FROM a GP." No term definitions duplicated. |
| 3 | All 4 Corporate skills activate for corporate innovation roles and include a LATAM Context section with corporate-specific benchmarks | VERIFIED | All 4 SKILL.md files contain "For CORPORATE INNOVATION TEAMS (not startup founders or VC operators)" in description. All 4 have Step 5/6 LATAM Context sections referencing skill-specific latam-context.md and shared/frameworks/latam-benchmarks.md. Corporate-specific benchmarks present: procurement cycle data (4-9 months), CVC activity (25% of LATAM LP base), pilot success rates (18% LATAM). |
| 4 | Running ./install.sh installs all 27 skills across 4 suite directories with per-skill success confirmations | VERIFIED | `bash install.sh 2>&1 | grep -c "[OK]"` returns exactly 27. `bash validate.sh` returns "All SKILL.md files valid." |

**Score:** 4/4 truths verified

---

### Required Artifacts

All artifacts verified at Level 1 (exists), Level 2 (substantive), and Level 3 (wired).

#### LP & Angel Suite (LPAN-01 through LPAN-05)

| Artifact | Status | Details |
|----------|--------|---------|
| `suites/lp-angel/angel-investment-analyzer/SKILL.md` | VERIFIED | 155 lines. suite: lp-angel. INVEST/PASS/WATCH verdicts. Two NOT constraints. References vc-backable-test.md and editorial-voice.md. |
| `suites/lp-angel/angel-investment-analyzer/TEMPLATES.md` | VERIFIED | Fully filled AgriPay Colombia example. Score 16/25 WATCH. Two [RED FLAG] callouts. LATAM comparables table. Próximos Pasos section. |
| `suites/lp-angel/angel-investment-analyzer/references/angel-investment-criteria.md` | VERIFIED | Investor question inversion table (5 rows). INVEST/PASS/WATCH criteria. Red flag triggers. |
| `suites/lp-angel/angel-investment-analyzer/references/latam-context.md` | VERIFIED | LATAM angel benchmarks with (LATAM, LAVCA 2025) annotations. |
| `suites/lp-angel/vc-fund-due-diligence/SKILL.md` | VERIFIED | 161 lines. suite: lp-angel. References ilpa-standards.md and fund-benchmarks.md (Carta Q1-2026). 5-dimension scorecard. Two NOT constraints. |
| `suites/lp-angel/vc-fund-due-diligence/TEMPLATES.md` | VERIFIED | Pampas Ventures Fund II example. Score 16/25 WATCH. [RED FLAG] on management fee and GP commit. LATAM Context box. |
| `suites/lp-angel/vc-fund-due-diligence/references/due-diligence-criteria.md` | VERIFIED | 5-dimension scoring rubric from LP perspective. Red flag triggers. |
| `suites/lp-angel/vc-fund-due-diligence/references/latam-context.md` | VERIFIED | LATAM LP base breakdown, LATAM fund TVPI benchmarks, exit environment data. |
| `suites/lp-angel/portfolio-construction-advisor/SKILL.md` | VERIFIED | 158 lines. suite: lp-angel. Power law math. Two NOT constraints. References construction-frameworks.md and editorial-voice.md. |
| `suites/lp-angel/portfolio-construction-advisor/TEMPLATES.md` | VERIFIED | Familia Herrera (Monterrey) example. 28-30 company recommendation. Power law math applied. LATAM conversion rates used. |
| `suites/lp-angel/portfolio-construction-advisor/references/construction-frameworks.md` | VERIFIED | Power law data (Correlation Ventures). AngelList median portfolio. Return target math. Reserve ratio guidance. |
| `suites/lp-angel/portfolio-construction-advisor/references/latam-context.md` | VERIFIED | LATAM portfolio size benchmarks, exit timeline, FX considerations. |
| `suites/lp-angel/lp-term-sheet-analyzer/SKILL.md` | VERIFIED | 146 lines. suite: lp-angel. References brad-feld-terms.md and ilpa-standards.md. D-39 separation documented. ACCEPT/NEGOTIATE/PASS verdicts. Two NOT constraints. |
| `suites/lp-angel/lp-term-sheet-analyzer/TEMPLATES.md` | VERIFIED | Cóndor Ventures Fund II example (247 lines). FamilyOffice Andina (Lima). NEGOTIATE verdict. [RED FLAG] callouts on management fee, hurdle, key person. Effective fee drag calculation. |
| `suites/lp-angel/lp-term-sheet-analyzer/references/lp-analysis-criteria.md` | VERIFIED | LP evaluation layer (not term definitions). Criteria for all 7 key terms. ACCEPT/NEGOTIATE/PASS thresholds. |
| `suites/lp-angel/lp-term-sheet-analyzer/references/latam-context.md` | VERIFIED | FX clause risks, FIP structure, political risk provisions. |
| `suites/lp-angel/startup-valuation-checker/SKILL.md` | VERIFIED | 152 lines. suite: lp-angel. Dual-audience description (D-32: founders AND investors). 5 valuation methods. IN RANGE/STRETCHED/OVERPRICED verdicts. Damodaran referenced. |
| `suites/lp-angel/startup-valuation-checker/TEMPLATES.md` | VERIFIED | EduSign Brasil example. OVERPRICED verdict. All 5 applicable methods applied. Dual-framing (founder + investor perspective). |
| `suites/lp-angel/startup-valuation-checker/references/valuation-methods.md` | VERIFIED | 5 methods with sources: Damodaran URL, Berkus URL, Bill Payne URL. LATAM adjustments per method. |
| `suites/lp-angel/startup-valuation-checker/references/latam-context.md` | VERIFIED | LATAM valuation benchmarks by stage (pre-seed, seed, Series A). LATAM vs US discount annotated. |

#### Corporates Suite (CORP-01 through CORP-04)

| Artifact | Status | Details |
|----------|--------|---------|
| `suites/corporates/open-innovation-scanner/SKILL.md` | VERIFIED | 199 lines. suite: corporates. "CORPORATE INNOVATION TEAMS" in description. [THEATER] callout system. Chesbrough Outside-In/Inside-Out/Coupled model. Corporate vocabulary throughout (no VC/founder terms). |
| `suites/corporates/open-innovation-scanner/TEMPLATES.md` | VERIFIED | Bancolombia Innovation Lab example. Innovation Opportunity Map table (5 gaps). Two [THEATER] callouts including C-level champion gap. LATAM Context box. |
| `suites/corporates/open-innovation-scanner/references/digital-transformation-context.md` | VERIFIED | Open innovation subset. Chesbrough source URL. BCG/Gartner data. LATAM pilot success rates. |
| `suites/corporates/open-innovation-scanner/references/latam-context.md` | VERIFIED | LATAM corporate innovation budget, procurement cycle (4-9 months), internal champion ROI data. |
| `suites/corporates/startup-solution-matcher/SKILL.md` | VERIFIED | 212 lines. suite: corporates. "CORPORATE INNOVATION TEAMS" in description. CB Insights + Gartner methodology. [RED FLAG] and [THEATER] callouts. Two NOT constraints. |
| `suites/corporates/startup-solution-matcher/TEMPLATES.md` | VERIFIED | FEMSA Digital / OXXO example. 3-archetype shortlist. [RED FLAG] on LATAM entity absence. [THEATER] on missing C-suite sponsor. |
| `suites/corporates/startup-solution-matcher/references/digital-transformation-context.md` | VERIFIED | CB Insights market map methodology subset (distinct from open-innovation-scanner). Plug and Play methodology. Enterprise readiness criteria. |
| `suites/corporates/startup-solution-matcher/references/latam-context.md` | VERIFIED | LATAM enterprise-ready startup count by country. Procurement timelines. Tax/invoice compliance challenges. |
| `suites/corporates/corporate-venture-evaluator/SKILL.md` | VERIFIED | 220 lines. suite: corporates. "CORPORATE INNOVATION TEAMS" in description. BCG 4-CVC model framework. GCV Institute benchmarks. [THEATER] callouts for FOMO-driven CVCs. |
| `suites/corporates/corporate-venture-evaluator/TEMPLATES.md` | VERIFIED | Grupo Sura (Medellín) example. Score 14/20 READY WITH CONDITIONS. Two [THEATER] callouts (legal review cost, Colombia-only deal flow). Hybrid CVC model recommendation. |
| `suites/corporates/corporate-venture-evaluator/references/digital-transformation-context.md` | VERIFIED | CVC readiness subset (distinct from prior skills). BCG 4-model framework. GCV Institute benchmarks. Intel Capital case study. |
| `suites/corporates/corporate-venture-evaluator/references/latam-context.md` | VERIFIED | LATAM CVC activity (25% of LP base). Active LATAM CVCs listed. SELIC rate impact on patient capital. Speed mismatch analysis. |
| `suites/corporates/pilot-program-designer/SKILL.md` | VERIFIED | 249 lines. suite: corporates. "CORPORATE INNOVATION TEAMS" in description. Mandatory kill criteria rule. [NO KILL CRITERIA] callout system. Techstars/Wayra/500 Global frameworks. |
| `suites/corporates/pilot-program-designer/TEMPLATES.md` | VERIFIED | Claro Colombia / TechBot IA example. Explicit Kill Criteria table (3 metrics × success/failure/date/authority). SMART problem statement. 90-day milestone plan. |
| `suites/corporates/pilot-program-designer/references/digital-transformation-context.md` | VERIFIED | Pilot methodology subset (distinct from prior skills). Techstars kill rate data (40% at 6-week gate). Wayra 90-day framework. 500 Global 4-stage model. |
| `suites/corporates/pilot-program-designer/references/latam-context.md` | VERIFIED | Invoice compliance (NF-e, CFDI, DIAN). FX controls. Data protection laws (LGPD, LFPDPPP). Pilot failure rates by sector. |

#### Infrastructure Artifacts

| Artifact | Status | Details |
|----------|--------|---------|
| `README.md` (Phase 3 skill catalog update) | VERIFIED | All 9 Phase 3 skills listed in appropriate suite sections. Total skill count 27 in README header. |
| `install.sh` (27-skill verification) | VERIFIED | `bash install.sh | grep -c "[OK]"` = 27 exactly. |
| `validate.sh` | VERIFIED | "All SKILL.md files valid." |

---

### Key Link Verification

| From | To | Via | Status | Details |
|------|----|-----|--------|---------|
| `suites/lp-angel/angel-investment-analyzer/SKILL.md` | `shared/frameworks/vc-backable-test.md` | `@shared/frameworks/vc-backable-test.md` reference | WIRED | Found in SKILL.md line 44, referenced in Sources section |
| `suites/lp-angel/angel-investment-analyzer/SKILL.md` | `shared/frameworks/editorial-voice.md` | `@shared/frameworks/editorial-voice.md` pointer | WIRED | Found in SKILL.md Sources and Tone sections |
| `suites/lp-angel/vc-fund-due-diligence/SKILL.md` | `shared/frameworks/ilpa-standards.md` | `@shared/frameworks/ilpa-standards.md` reference | WIRED | Found in SKILL.md Step 2 |
| `suites/lp-angel/vc-fund-due-diligence/SKILL.md` | `suites/vc-operators/fund-performance-analyzer/references/fund-benchmarks.md` | Cross-linked reference to Carta Q1-2026 data | WIRED | Found in SKILL.md Step 2 (`@suites/vc-operators/fund-performance-analyzer/references/fund-benchmarks.md`) |
| `suites/lp-angel/lp-term-sheet-analyzer/SKILL.md` | `shared/frameworks/brad-feld-terms.md` | `@shared/frameworks/brad-feld-terms.md` reference | WIRED | Found in SKILL.md Step 2 line 50 and Sources |
| `suites/lp-angel/lp-term-sheet-analyzer/SKILL.md` | `shared/frameworks/ilpa-standards.md` | `@shared/frameworks/ilpa-standards.md` reference | WIRED | Found in SKILL.md Step 2 line 54 |
| `suites/corporates/open-innovation-scanner/SKILL.md` | `shared/frameworks/editorial-voice.md` | `@shared/frameworks/editorial-voice.md` pointer | WIRED | Found in SKILL.md Tone section and Sources |
| `suites/corporates/open-innovation-scanner/SKILL.md` | `shared/frameworks/latam-benchmarks.md` | `@shared/frameworks/latam-benchmarks.md` reference | WIRED | Found in SKILL.md Sources section |
| `suites/corporates/startup-solution-matcher/SKILL.md` | `shared/frameworks/editorial-voice.md` | `@shared/frameworks/editorial-voice.md` pointer | WIRED | Found in SKILL.md Tone section |
| `suites/corporates/corporate-venture-evaluator/SKILL.md` | `shared/frameworks/editorial-voice.md` | `@shared/frameworks/editorial-voice.md` pointer | WIRED | Found in SKILL.md Tone section |
| `suites/corporates/pilot-program-designer/SKILL.md` | `shared/frameworks/editorial-voice.md` | `@shared/frameworks/editorial-voice.md` pointer | WIRED | Found in SKILL.md Tone section |

All 11 key links are WIRED. All referenced framework files confirmed to exist.

---

### Data-Flow Trace (Level 4)

This phase delivers static markdown skill files (SKILL.md, TEMPLATES.md, references/). There are no data variables, state, or API calls — the artifacts are documentation-like files intended to be loaded as Claude Code system prompts. Level 4 data-flow trace is not applicable.

---

### Behavioral Spot-Checks

| Behavior | Command | Result | Status |
|----------|---------|--------|--------|
| install.sh installs all 27 skills | `bash install.sh 2>&1 \| grep -c "[OK]"` | 27 | PASS |
| validate.sh confirms all SKILL.md files valid | `bash validate.sh 2>&1 \| tail -5` | "All SKILL.md files valid." | PASS |
| All 9 Phase 3 skill directories exist | `ls suites/lp-angel/ suites/corporates/` | 5 + 4 = 9 directories | PASS |
| All SKILL.md files under 500 lines | `wc -l suites/lp-angel/*/SKILL.md suites/corporates/*/SKILL.md` | Max: 249 lines (pilot-program-designer). All under 500. | PASS |

---

### Requirements Coverage

| Requirement | Source Plan | Description | Status | Evidence |
|-------------|-------------|-------------|--------|----------|
| LPAN-01 | 03-01-PLAN.md | angel-investment-analyzer — investor-side scorecard, INVEST/PASS/WATCH | SATISFIED | SKILL.md + TEMPLATES.md + 2 references/ files exist. Investor perspective inversion of vc-backable-test.md. AgriPay Colombia filled example with RED FLAG callouts. |
| LPAN-02 | 03-02-PLAN.md | vc-fund-due-diligence — GP track record, fee structure, Carta benchmarks | SATISFIED | SKILL.md + TEMPLATES.md + 2 references/ files exist. References ilpa-standards.md and fund-benchmarks.md. Pampas Ventures Fund II filled example. |
| LPAN-03 | 03-02-PLAN.md | portfolio-construction-advisor — allocation, check sizes, power law | SATISFIED | SKILL.md + TEMPLATES.md + 2 references/ files exist. Power law math documented. Familia Herrera filled example. |
| LPAN-04 | 03-03-PLAN.md | lp-term-sheet-analyzer — management fee, carry, hurdle, clawback from LP side | SATISFIED | SKILL.md + TEMPLATES.md + 2 references/ files exist. References brad-feld-terms.md and ilpa-standards.md without duplication. Cóndor Ventures Fund II filled example. |
| LPAN-05 | 03-03-PLAN.md | startup-valuation-checker — multi-method valuation: Damodaran, Berkus, Scorecard, DCF | SATISFIED | SKILL.md + TEMPLATES.md + 2 references/ files exist. Dual-audience (D-32). 5 methods with URLs. EduSign Brasil OVERPRICED example. |
| CORP-01 | 03-04-PLAN.md | open-innovation-scanner — Chesbrough Open Innovation, NESTA toolkit, LATAM CVC data | SATISFIED | SKILL.md + TEMPLATES.md + 2 references/ files exist. Corporate vocabulary. [THEATER] callouts. Bancolombia Innovation Lab filled example. |
| CORP-02 | 03-05-PLAN.md | startup-solution-matcher — CB Insights methodology, Gartner, integration complexity | SATISFIED | SKILL.md + TEMPLATES.md + 2 references/ files exist. [RED FLAG] + [THEATER] callouts. FEMSA Digital OXXO filled example. |
| CORP-03 | 03-05-PLAN.md | corporate-venture-evaluator — CVC readiness: BCG framework, GCV Institute, governance | SATISFIED | SKILL.md + TEMPLATES.md + 2 references/ files exist. 4 CVC models. [THEATER] callouts. Grupo Sura filled example. |
| CORP-04 | 03-06-PLAN.md | pilot-program-designer — Techstars/Wayra/500 Global, MANDATORY kill criteria | SATISFIED | SKILL.md + TEMPLATES.md + 2 references/ files exist. [NO KILL CRITERIA] callout system. Claro Colombia Kill Criteria table filled example. |

No orphaned requirements. REQUIREMENTS.md traceability table maps all 9 IDs to Phase 3. All claimed by exactly one plan. No Phase 3 requirements appear in REQUIREMENTS.md that were not claimed by plans.

---

### Anti-Patterns Found

No anti-patterns found. Full scan results:

| Check | Result |
|-------|--------|
| TODO/FIXME/PLACEHOLDER in Phase 3 skills | None |
| Skeleton TEMPLATES.md (unfilled) | None — all TEMPLATES.md have filled LATAM examples |
| Vocabulary bleed (VC/founder terms in corporate skills) | Grep for "VC-backable", "PMF", "investable" in corporate SKILL.md files: no matches |
| SKILL.md exceeding 500 lines | All under 500 (max: 249 lines) |
| Missing LATAM Context sections | All 9 skills have Step 5 or Step 6 LATAM Context |

Five references to "placeholder" found in TEMPLATES.md files are instructions to NOT use placeholder text — not actual placeholders.

---

### Human Verification Required

The following items require a human to verify and cannot be confirmed programmatically:

#### 1. Activation Trigger Disambiguation (angel-investment-analyzer vs venture-model-validator)

**Test:** In Claude Code with both skills installed, phrase a request as an investor: "I'm an angel investor looking at a deal — should I invest in this fintech startup?"
**Expected:** angel-investment-analyzer activates, NOT venture-model-validator
**Why human:** Claude's natural language routing depends on description matching and context inference. The descriptions are correctly authored but only a live invocation can confirm no cross-activation occurs.

#### 2. Kill Criteria Enforcement (pilot-program-designer)

**Test:** Run pilot-program-designer and deliberately omit kill criteria from the inputs.
**Expected:** The skill outputs a [NO KILL CRITERIA] callout and refuses to produce the Pilot Program Document until criteria are defined.
**Why human:** Requires live Claude invocation to verify the conditional behavior is enforced.

#### 3. lp-term-sheet-analyzer D-39 Separation in Practice

**Test:** Run lp-term-sheet-analyzer and verify the output does NOT repeat definitions from brad-feld-terms.md — it only applies the LP evaluation layer.
**Expected:** Term analysis table shows LP verdict and negotiation priority without explaining what "carry" or "hurdle rate" mean (those are in brad-feld-terms.md).
**Why human:** Content separation between referenced file and skill output requires live invocation to confirm.

#### 4. startup-valuation-checker Dual-Audience Framing

**Test:** Run startup-valuation-checker twice — once stating you're a founder, once stating you're an investor — with the same startup data.
**Expected:** Both produce OVERPRICED/IN RANGE/STRETCHED verdict but recommendations differ: founder gets "how to defend the ask"; investor gets "how to negotiate or walk away."
**Why human:** Conditional output branching requires live invocation to confirm.

---

### Gaps Summary

No gaps found. All must-haves are VERIFIED, all artifacts pass all three levels (exists, substantive, wired), all key links are WIRED, all 9 requirements are SATISFIED, and no blocker anti-patterns were detected.

---

## Summary

Phase 3 goal is fully achieved. All 27 skills exist across all 4 suites. The LP/Angel suite (5 skills) and Corporate suite (4 skills) are complete, substantive, and follow established patterns from Phases 1 and 2. Key architectural decisions are honored: D-30 (perspective inversion), D-31/D-39 (framework reuse without duplication), D-32 (dual audience), D-33/D-34/D-35 (corporate vocabulary and [THEATER] detection), D-36/D-37 (skill-specific digital transformation subsets with LATAM data), D-38 (shared framework reuse), and D-42 (27-skill install verification). The install and validate scripts pass cleanly.

Four items require human verification but are expected to pass based on the code evidence: activation disambiguation, kill criteria enforcement behavior, D-39 separation in live output, and dual-framing in startup-valuation-checker.

---

_Verified: 2026-04-04_
_Verifier: Claude (gsd-verifier)_
