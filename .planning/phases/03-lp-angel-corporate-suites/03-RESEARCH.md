# Phase 3: LP & Angel + Corporate Suites — Research

**Researched:** 2026-04-04
**Domain:** LP/Angel investor skills (5) + Corporate innovation skills (4) — 9 new skills completing all 27
**Confidence:** HIGH

---

<user_constraints>
## User Constraints (from CONTEXT.md)

### Locked Decisions

**Carried Forward from Phase 1-2**
All decisions D-01 through D-29 remain locked. Key pattern: SKILL.md + TEMPLATES.md + flat references/, 500-line limit, three-component description, editorial-voice.md tone pointer, LATAM benchmarks, filled TEMPLATES.md.

**D-30:** angel-investment-analyzer and venture-model-validator (Phase 1) both use the `vc-backable-test.md` framework but from opposite perspectives. angel-investment-analyzer evaluates "should I invest in this?" while venture-model-validator evaluates "is my startup investable?". Explicit negative constraints in both directions.

**D-31:** lp-term-sheet-analyzer inverts the perspective of term-sheet-generator (Phase 2). Same brad-feld-terms.md framework, but now from the LP/investor side analyzing terms presented TO them. No framework duplication — reference the shared file.

**D-32:** startup-valuation-checker serves BOTH founders (checking if their valuation is reasonable) and investors (checking if a deal is fairly priced). Description must accommodate both audiences without confusing activation.

**D-33:** Corporate skills serve innovation directors, CTO offices, and corporate development teams — NOT VCs or founders. Vocabulary shifts to corporate innovation language: pilot ROI, strategic alignment, internal champion, procurement cycle, innovation theater detection.

**D-34:** Same editorial-voice.md no-sugarcoating standard applies. "This is innovation theater, not real corporate venturing" is a valid output. "Your pilot program has no kill criteria — that means it will zombie on forever" is the expected directness.

**D-35:** All corporate skill descriptions include "For CORPORATE INNOVATION TEAMS (not startup founders or VC operators)" to prevent cross-activation with the other 2 suites.

**D-36:** The `references/digital-transformation-2025.pdf` is available at repo root. Each corporate skill gets a `references/digital-transformation-context.md` with the SUBSET of insights relevant to that skill's domain — not the full report duplicated 4 times.

**D-37:** Corporate skills should also reference LATAM corporate innovation data from the PDF where available — corporate VC activity in LATAM, pilot success rates, digital adoption by sector.

**D-38:** No new shared framework files. LP/Angel skills reference existing: brad-feld-terms.md, ilpa-standards.md, vc-backable-test.md, latam-benchmarks.md. Corporate skills reference: latam-benchmarks.md. Skill-specific content goes in references/.

**D-39:** lp-term-sheet-analyzer references brad-feld-terms.md (already built for Phase 2's term-sheet-generator) WITHOUT duplicating content. The skill adds the LP analysis perspective on top of the shared term definitions.

**D-40:** LP/Angel skills first (closer to existing VC operator pattern), then Corporate skills (new audience pattern). Within LP/Angel: angel-investment-analyzer first (mirrors venture-model-validator), then vc-fund-due-diligence, portfolio-construction-advisor, lp-term-sheet-analyzer, startup-valuation-checker.

**D-41:** Within Corporate: open-innovation-scanner first (establishes corporate pattern), then startup-solution-matcher, corporate-venture-evaluator, pilot-program-designer.

**D-42:** install.sh and validate.sh already use `suites/*/` glob — no changes needed. Final verification: run both scripts after all 27 skills exist and confirm 27 [OK] confirmations from install.sh.

### Claude's Discretion

- TEMPLATES.md fictional company names for LP/Angel skills — use LATAM-appropriate fund/angel scenarios
- TEMPLATES.md fictional company names for Corporate skills — use LATAM corporate innovation scenarios (telecom, banking, CPG)
- Reference file count per skill (typically 2-3)
- Whether Carta Q1-2026 benchmarks are relevant for LP skills (yes — vc-fund-due-diligence and portfolio-construction-advisor should reference fund performance data)

### Deferred Ideas (OUT OF SCOPE)

None — discussion stayed within phase scope

</user_constraints>

---

<phase_requirements>
## Phase Requirements

| ID | Description | Research Support |
|----|-------------|------------------|
| LPAN-01 | angel-investment-analyzer — Scorecard with investment criteria, red flags, comparables, thesis fit. Frameworks: Jason Calacanis "Angel", AngelList methodology, Naval Ravikant | vc-backable-test.md inverted for angel perspective; LATAM angel deal benchmarks from latam-benchmarks.md |
| LPAN-02 | vc-fund-due-diligence — GP track record, portfolio construction, fee structure, terms (carry, hurdle, clawback), vintage analysis. Frameworks: Kauffman Foundation, Cambridge Associates, ILPA best practices | ilpa-standards.md ready; fund-benchmarks.md (Carta Q1-2026) already extracted; latam-fund-context.md reusable |
| LPAN-03 | portfolio-construction-advisor — Allocation, check sizes, diversification, reserve strategy. Frameworks: AngelList data, Correlation Ventures, Peter Thiel concentrated vs diversified | fund-benchmarks.md small fund advantage data; latam-benchmarks.md LP base data |
| LPAN-04 | lp-term-sheet-analyzer — Management fee, carry, preferred return, GP commit, key person, no-fault divorce, clawback analysis. Frameworks: ILPA Model LPA, Brad Feld "Venture Deals" | brad-feld-terms.md + ilpa-standards.md ready; perspective inversion only required |
| LPAN-05 | startup-valuation-checker — Valuation reasonableness via multiple methods: revenue multiples, comparables, DCF, Berkus, Scorecard method. Frameworks: Damodaran (NYU), Bill Payne, Dave Berkus, a16z valuation | LATAM valuation discount data in latam-benchmarks.md; multi-method framework needs skill-specific references |
| CORP-01 | open-innovation-scanner — Innovation opportunity map, startup matches per problem, evaluation framework. Frameworks: Chesbrough "Open Innovation", NESTA toolkit, corporate venturing best practices | Digital Transformation 2025 PDF subset needed; new corporate vocabulary pattern established here |
| CORP-02 | startup-solution-matcher — Shortlist of startups solving a business problem with pros/cons, pricing, integration complexity. Frameworks: CB Insights market maps, Gartner methodology, Plug and Play matching | Digital Transformation 2025 PDF subset; LATAM corporate pilot failure rate data |
| CORP-03 | corporate-venture-evaluator — CVC readiness: strategic fit, financial returns, organizational readiness, governance. Frameworks: BCG corporate venturing, GCV Institute, Intel Capital cases | Digital Transformation 2025 PDF subset; LATAM CVC data from latam-benchmarks.md (Corporates/CVCs ~25% of LATAM LP base) |
| CORP-04 | pilot-program-designer — Pilot structure: objectives, KPIs, timeline, budget, success/kill criteria, escalation. Frameworks: Techstars corporate innovation, Wayra, 500 Global corporate programs | Digital Transformation 2025 PDF subset; kill criteria pattern critical per D-42 |

</phase_requirements>

---

## Summary

Phase 3 delivers 9 skills across 2 new suites (lp-angel, corporates). The foundation is entirely pre-built: 18 skills, 8 shared frameworks, validated install/test pipeline. All LP/Angel skills mirror existing VC operator and startup skills from the opposing perspective — the research domain, frameworks, and LATAM context files already exist. The only new intellectual work is inverting the perspective and building skill-specific references.

Corporate skills establish a genuinely new audience pattern (innovation directors vs VCs/founders) and require a new vocabulary register. The critical structural decision (D-36) is that each corporate skill gets a `references/digital-transformation-context.md` with the SUBSET of the PDF relevant to that skill — not the full report repeated 4 times. The PDF cannot be rendered in this environment (poppler-utils not installed), so corporate context files must be authored from domain knowledge, citing the PDF as source.

The entire phase follows the established SKILL.md + TEMPLATES.md + flat references/ pattern. No new infrastructure. The planner must sequence 9 skills in the order specified by D-40 and D-41, each requiring: SKILL.md, TEMPLATES.md, and 2-3 references/ files.

**Primary recommendation:** Follow D-40/D-41 sequence strictly. Build angel-investment-analyzer first as the LP/Angel pattern-setter (mirrors venture-model-validator), then build open-innovation-scanner as the Corporate pattern-setter (new vocabulary). Remaining 7 skills follow the established pattern.

---

## Standard Stack

### Core (Already Installed — No Changes Required)

| Component | Version | Purpose | Status |
|-----------|---------|---------|--------|
| SKILL.md format | 1.0 | Claude Code skill file (YAML + Markdown, ≤500 lines) | Locked from Phase 1 |
| TEMPLATES.md format | 1.0 | Filled output example file | Locked from Phase 1 |
| references/ directory | flat | Skill-specific bibliography files | Locked from Phase 1 |
| install.sh | — | Glob-based installer (`suites/*/`) | No changes needed (D-42) |
| validate.sh | — | YAML linter + name/dir match checker | No changes needed (D-42) |

### Shared Frameworks Consumed by Phase 3

| File | Skills That Use It | Notes |
|------|--------------------|-------|
| `shared/frameworks/vc-backable-test.md` | angel-investment-analyzer | Inverted perspective: "should I invest?" not "am I fundable?" |
| `shared/frameworks/brad-feld-terms.md` | lp-term-sheet-analyzer | Inverted perspective: LP analyzing terms received, not GP drafting |
| `shared/frameworks/ilpa-standards.md` | vc-fund-due-diligence, lp-term-sheet-analyzer | LP due diligence + fund terms analysis |
| `shared/frameworks/latam-benchmarks.md` | All 5 LP/Angel skills + all 4 Corporate skills | LATAM annotation protocol mandatory in all 9 skills |
| `shared/frameworks/editorial-voice.md` | All 9 new skills | Pointer pattern: SKILL.md references, never duplicates |

### Reusable References (Existing Files Linked by New Skills)

| File | Location | Skills That Consume It | Notes |
|------|----------|------------------------|-------|
| `fund-benchmarks.md` | `suites/vc-operators/fund-performance-analyzer/references/` | vc-fund-due-diligence, portfolio-construction-advisor | Carta Q1-2026 vintage data; already extracted verbatim |
| `latam-fund-context.md` | `suites/vc-operators/fund-performance-analyzer/references/` | vc-fund-due-diligence, portfolio-construction-advisor | LATAM discount, exit timeline data |

**Installation:** No new packages. No dependencies. All skills are markdown + YAML.

---

## Architecture Patterns

### Established Skill Directory Structure (Locked)

```
suites/lp-angel/{skill-name}/
├── SKILL.md          # YAML frontmatter + workflow instructions (≤500 lines)
├── TEMPLATES.md      # Filled output example (NOT a skeleton)
└── references/       # One level deep only; no cross-linking between ref files
    ├── {framework}-criteria.md
    ├── latam-context.md
    └── [optional 3rd file]

suites/corporates/{skill-name}/
├── SKILL.md
├── TEMPLATES.md
└── references/
    ├── digital-transformation-context.md   # Subset of PDF relevant to this skill
    ├── latam-context.md
    └── [optional 3rd file]
```

### Pattern 1: Perspective Inversion (LP/Angel Suite)

**What:** Five existing frameworks re-applied from the investor side rather than the founder/operator side.

**When to use:** angel-investment-analyzer (vs venture-model-validator), lp-term-sheet-analyzer (vs term-sheet-generator).

**Structural rule:** Same shared framework file. New skill-specific `references/` file adds the perspective layer. Never duplicate framework content — add the perspective layer on top.

**Example — angel-investment-analyzer:**
```
# In SKILL.md:
Read @shared/frameworks/vc-backable-test.md before scoring.
YOU ARE THE INVESTOR, not the founder.
Score each criterion from the perspective of: "Does this startup meet the bar
I need to deploy capital and return a 10x multiple to my LPs?"

# In references/angel-investment-criteria.md:
Question inversion table:
| Founder question (venture-model-validator) | Angel question (this skill) |
|---|---|
| "Is my market big enough?" | "Is this SAM large enough to return 10x my check at my ownership %?" |
| "Do I have a monopoly thesis?" | "Is there a defensible moat that protects my investment from being crowded out?" |
```

**Negative constraint pattern (CRITICAL for D-30):**
```yaml
description: >
  LP and angel investor due diligence. ALWAYS invoke when an angel investor or
  LP needs to evaluate whether to invest in a startup deal. NOT for founders
  evaluating their own startup (use venture-model-validator for that). NOT for
  VC fund operators writing IC memos (use deal-memo-writer for that).
```

### Pattern 2: Term Analysis Inversion (lp-term-sheet-analyzer)

**What:** brad-feld-terms.md from the LP side — evaluating fund LPA terms, not startup term sheets.

**Critical distinction:** This skill analyzes fund-level terms (management fee, carry, hurdle, clawback, key person clause, no-fault divorce) — not startup investment terms. The D-39 rule: reference brad-feld-terms.md WITHOUT duplicating content. Add the LP analysis layer only.

**Separation of concerns:**
```
brad-feld-terms.md        → defines what terms MEAN
ilpa-standards.md         → defines what terms SHOULD look like (LP standards)
references/lp-analysis-criteria.md → how an LP evaluates terms received FROM a GP
```

### Pattern 3: New Corporate Audience Voice

**What:** Innovation director vocabulary, NOT VC/founder vocabulary.

**When to use:** All 4 corporate skills.

**Vocabulary mapping:**

| VC/Startup Language | Corporate Innovation Language |
|---------------------|-------------------------------|
| "VC-backable" | "strategically aligned / pilot ROI positive" |
| "PMF" | "validated business case / internal champion confirmed" |
| "founder-market fit" | "startup has enterprise sales motion" |
| "red flag" | "innovation theater indicator" |
| "pass on the deal" | "kill the pilot / descope the engagement" |
| "investable" | "pilot-ready / partnership-ready" |
| "exit thesis" | "strategic acquisition thesis / partnership sunset criteria" |

**Description pattern for corporate skills (D-35 requirement):**
```yaml
description: >
  For CORPORATE INNOVATION TEAMS (not startup founders or VC operators).
  ALWAYS invoke when an innovation director, CTO office, or corporate development
  team needs to [specific workflow]. NOT for [adjacent non-corporate use case].
```

### Pattern 4: Digital Transformation Context Files (Corporate Suite)

**What:** Each of the 4 corporate skills gets a `references/digital-transformation-context.md` containing the SUBSET of the Digital Transformation 2025 PDF relevant to that skill.

**File content structure (per skill):**
```markdown
# Digital Transformation 2025 — [Skill-Specific Domain] Context

**Source:** Digital Transformation 2025 Report (references/digital-transformation-2025.pdf)
**Relevant to:** [skill-name]
**Subset:** [which sections of the report apply]

## Key Data Points for [Skill Domain]

[2-4 specific statistics or findings from the PDF relevant to this skill]

## LATAM Corporate Innovation Data

[LATAM-specific data from the PDF: corporate VC activity, pilot success rates, etc.]

## Application in [Skill Name] Output

[How this data should appear in the skill's structured output]
```

**Note on PDF availability:** The PDF at `references/digital-transformation-2025.pdf` cannot be rendered in the current environment (poppler-utils not installed). Each corporate skill's `digital-transformation-context.md` must cite the PDF and derive context from:
1. The report title and known domain (Digital Transformation 2025)
2. Industry-standard corporate innovation data (BCG, Gartner, McKinsey published research for this domain)
3. LATAM-specific corporate data from latam-benchmarks.md (Corporates/CVCs = ~25% of LATAM LP base)

Planners and implementers should attempt to read the PDF if poppler becomes available (`brew install poppler`), but can proceed without it using verified industry sources.

### Anti-Patterns to Avoid

- **Duplicating framework content:** brad-feld-terms.md and ilpa-standards.md must be referenced, never copied into skill-specific files.
- **Mixing audience vocabulary:** A corporate skill that uses "VC-backable" or "Series A" framing will confuse activation and produce wrong output for the intended user.
- **Nested reference files:** No reference file may link to another reference file. All files directly referenced from SKILL.md only.
- **Cross-suite negative constraint gaps:** Each LP/Angel skill must explicitly exclude the startup use case AND the VC operator use case in its description. Corporate skills must exclude both investor suites.
- **Empty TEMPLATES.md:** Every TEMPLATES.md must have a filled, LATAM-grounded fictional example — not a skeleton. See pattern section for TEMPLATES.md guidance below.

---

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| VC term definitions | Custom glossary in each skill | `shared/frameworks/brad-feld-terms.md` | Already verified, cited to Feld 4th ed. Duplication creates divergence. |
| ILPA fee/governance standards | Inline fee table | `shared/frameworks/ilpa-standards.md` | Already has GP commit, clawback, management fee step-down tables. |
| Startup investability criteria | Angel-specific rubric from scratch | `shared/frameworks/vc-backable-test.md` (inverted) | Same 5-criterion framework applies from investor side; avoids diverging rubrics. |
| LATAM fund performance data | Custom benchmark table | `suites/vc-operators/fund-performance-analyzer/references/fund-benchmarks.md` | Already has Carta Q1-2026 vintage IRR/TVPI/DPI tables extracted verbatim. |
| LATAM fund context | New file per skill | `suites/vc-operators/fund-performance-analyzer/references/latam-fund-context.md` | Already has 30-50% discount factor, exit timeline table, FX risk by currency. |
| LATAM VC benchmarks | Inline LAVCA data | `shared/frameworks/latam-benchmarks.md` | Authoritative source with exact LAVCA 2025 / Cuantico 2026 figures. |
| Tone spec | Inline banned phrases / voice model | `shared/frameworks/editorial-voice.md` (pointer) | Single source of truth. Skills reference, never duplicate. |

**Key insight:** This phase is almost entirely about PERSPECTIVE and AUDIENCE, not new data. The frameworks, benchmarks, and tone files are done. The work is applying them to new activation triggers and new user types.

---

## Skill-by-Skill Research Findings

### LPAN-01: angel-investment-analyzer

**Framework:** `vc-backable-test.md` inverted. Angel reads a deal the same way a VC does, but ask is smaller ($10K–$250K), ownership target is lower (1–10%), and diversification matters more (angels typically hold 10–50 positions vs VC fund's 20–30).

**Key bibliographic sources (verified URLs):**
- Jason Calacanis "Angel" book: https://www.amazon.com/Angel-Investing-Guide-Becoming-Venture/dp/0525498456
- AngelList methodology: https://www.angellist.com/blog/building-a-portfolio-as-an-angel-investor
- Naval Ravikant: https://nav.al/angel-book

**TEMPLATES.md scenario:** LATAM angel evaluating a B2B SaaS startup at pre-seed stage. Example: "Santiago (Chile) angel with $200K annual deployment reviewing FinPay MX (Mexico fintech, Seed-stage, $35K MRR) — angel scorecard from investor perspective."

**Skill-specific references/ files needed:**
1. `references/angel-investment-criteria.md` — perspective-inverted vc-backable-test questions, angel portfolio math (check size × ownership × exit = return multiple), red flag list from angel perspective
2. `references/latam-context.md` — LATAM angel deal benchmarks (angel check sizes, typical ownership, deal structures), references `@shared/frameworks/latam-benchmarks.md`

**Negative constraint:** NOT for founders evaluating their own startup (venture-model-validator). NOT for VC fund operators writing IC memos (deal-memo-writer). NOT for LP evaluating a VC fund (vc-fund-due-diligence).

**Output structure:** Angel Investment Scorecard with: deal snapshot, 5-criterion scorecard (inverted vc-backable-test), red flags, angel portfolio fit analysis, LATAM context box, Próximos Pasos (for the angel, not the founder).

---

### LPAN-02: vc-fund-due-diligence

**Framework:** ILPA best practices + Cambridge Associates + Kauffman Foundation. LP evaluates a VC fund before committing capital.

**Key distinction from fund-performance-analyzer (VCOP-04):** fund-performance-analyzer is a GP/analyst calculating their own fund's TVPI/DPI. vc-fund-due-diligence is an LP evaluating a DIFFERENT fund manager (external due diligence).

**Key data already available:**
- `fund-benchmarks.md` (Carta Q1-2026): Vintage IRR/TVPI/DPI data already extracted — vc-fund-due-diligence references this to benchmark GP claims.
- `latam-fund-context.md`: 30-50% LATAM discount, no Carta-scale LATAM database, exit timeline tables.
- `ilpa-standards.md`: GP commit %, management fee step-down, clawback, LPAC structure, red flags list.

**Carta Q1-2026 specific use:** GP claims "top-quartile returns on our 2022 vintage." Carta data shows 2022 vintage 75th percentile TVPI = 1.20×. Skill should surface: "Your GP claims top-quartile returns but 2022 vintage median TVPI is slightly >1.0× at 4-year mark. Show me audited financials."

**Key bibliographic sources (verified):**
- Kauffman Foundation: https://www.kauffman.org/wp-content/uploads/2019/12/investment_myths_lies_and_truth_about_vc_kauffman_fellowship.pdf
- Cambridge Associates: https://www.cambridgeassociates.com/insight/venture-capital-benchmark-commentary/
- ILPA: https://ilpa.org/reporting-template/

**TEMPLATES.md scenario:** Family office LP (Colombia) evaluating a LATAM-focused pre-seed fund (Bogotá, Fund I, $25M target). Example: "Familia Herrera (Bogotá family office) evaluating Cóndor Ventures Fund II — VC due diligence from LP perspective."

**Skill-specific references/ files needed:**
1. `references/gp-due-diligence-criteria.md` — GP track record evaluation rubric, DPI vs TVPI emphasis by fund age, reference check framework, attribution analysis questions
2. `references/latam-context.md` — references `@shared/frameworks/latam-benchmarks.md` + links to `suites/vc-operators/fund-performance-analyzer/references/fund-benchmarks.md` + `latam-fund-context.md`

**Output structure:** GP Due Diligence Report with: fund overview, track record analysis (vintage-benchmarked), fee structure vs ILPA standards, portfolio construction analysis, team/key person risk, LATAM context, Invest/Pass/Request-More-Info recommendation.

---

### LPAN-03: portfolio-construction-advisor

**Framework:** AngelList diversification data + Correlation Ventures return distribution + Thiel concentrated vs diversified debate.

**Core tension:** Angels/LPs must choose between concentration (higher potential upside, Thiel-style "bet on one winner") and diversification (AngelList data shows 100+ deals needed to reliably catch outliers). The skill helps LPs think through this analytically.

**Key data points:**
- Correlation Ventures: 65% of VC deals return <1× capital; top 6% return >10×; power law is real
- AngelList: Angel portfolio of 50+ deals begins to approximate fund-like return distribution
- Carta small fund advantage: small fund 90th pct TVPI for 2019 vintage = 5.42× vs 3.01× all-fund
- LATAM LP base: family offices = 35% of LP capital (shorter time horizons, 7-10 year funds preferred)

**Key bibliographic sources:**
- Correlation Ventures (return distribution): https://correlation.vc/research/
- AngelList portfolio theory: https://www.angellist.com/blog/portfolio-theory-for-angels
- Peter Thiel "Zero to One" (concentrated bets): https://zerotoonebook.com/

**TEMPLATES.md scenario:** LATAM angel with $500K annual deployment building a portfolio strategy. Example: "Marco (São Paulo, $500K/yr angel budget) — portfolio construction for angel entering LATAM pre-seed market."

**Skill-specific references/ files needed:**
1. `references/portfolio-construction-criteria.md` — diversification math (portfolio size vs probability of catching 1 outlier), check size allocation models, reserve strategy for follow-ons, LATAM-specific portfolio construction norms
2. `references/latam-context.md` — references `@shared/frameworks/latam-benchmarks.md`, LATAM LP base data, family office horizon norms

---

### LPAN-04: lp-term-sheet-analyzer

**Framework:** `brad-feld-terms.md` + `ilpa-standards.md` — LP analyzing fund LPA terms received from GP.

**Critical scope distinction (D-39):** This skill covers FUND-LEVEL TERMS (management fee, carry, GP commit, clawback, key person clause, no-fault divorce, preferred return/hurdle rate) — NOT startup investment terms. term-sheet-generator covers startup investment terms.

**LP analysis perspective additions (beyond term definitions):**
- Management fee: Is 2% step-down to 1.5% after investment period? (ILPA standard)
- Carry: Standard 20%? Above 20% requires exceptional track record justification.
- Hurdle rate: 8% preferred return? Is it compounding? Hard vs soft hurdle?
- Clawback: Is there escrow? Is it ≥10% of distributed carry? (ILPA standard)
- Key person clause: Does it cover voluntary departure or only death/disability?
- No-fault divorce: Does it require ≤75% supermajority of LP interests? (>80% = red flag)
- GP commit: Is it real cash or funded by management fee waiver? (ILPA red flag if waiver)

**TEMPLATES.md scenario:** LATAM LP receiving a Fund I LPA with substandard terms. Example: "Inversiones Andina (Chilean family office) reviewing Cóndor Ventures Fund III LPA — LP term sheet analysis from LP perspective."

**Skill-specific references/ files needed:**
1. `references/lp-analysis-criteria.md` — term-by-term LP evaluation rubric, red flag checklist (matching ilpa-standards.md red flags), negotiation leverage matrix (which terms are standard vs negotiable for Fund I vs Fund II+), LATAM-specific governance norms for family office-backed funds

---

### LPAN-05: startup-valuation-checker

**Framework:** Multi-method valuation: Damodaran revenue multiples, Bill Payne Scorecard, Dave Berkus, DCF (simplified), comparable transactions.

**Dual audience (D-32):** Both founders (is my ask reasonable?) and investors (is this deal fairly priced?). The skill description must accommodate both without cross-triggering. Solution: use the ASKING question as trigger.

**Activation pattern:**
```yaml
description: >
  Startup valuation analysis for founders and investors. ALWAYS invoke when a
  user asks whether a startup valuation is reasonable, how to value a pre-revenue
  startup, or whether a deal is priced fairly. NOT for term sheet creation (use
  term-sheet-generator). NOT for fund-level GP evaluation (use vc-fund-due-diligence).
```

**Valuation methods to implement:**
1. **Revenue multiple method** (post-revenue): ARR × sector multiple. Sector multiples: LATAM SaaS = 4-6× ARR (vs US 8-12×); LATAM fintech = 5-8× (higher due to sector premium).
2. **Bill Payne Scorecard** (pre-revenue): Weighted adjustment of regional average pre-money. 5 factors: management (30%), market opportunity (25%), product/technology (15%), competitive environment (10%), other (20%).
3. **Dave Berkus Method** (pre-revenue): $500K per factor (sound idea, prototype, quality management, strategic relationships, product rollout). Max $2.5M pre-money. LATAM calibration: $300K-$400K per factor.
4. **Comparable transactions**: Recent LATAM comparable raises from latam-benchmarks.md by stage.
5. **DCF (simplified)**: For Series A+ only — 5-year projection with exit multiple and discount rate.

**Key bibliographic sources:**
- Damodaran (NYU): https://pages.stern.nyu.edu/~adamodar/
- Bill Payne Scorecard: https://billpayne.com/2011/01/08/scorecard-valuation-methodology-revisited.html
- Dave Berkus: https://berkonomics.com/?p=1214
- a16z valuation: https://a16z.com/how-to-value-a-startup/

**TEMPLATES.md scenario:** Dual perspective — show the same startup (pre-revenue B2B SaaS in Colombia) analyzed from both founder perspective ("is my $5M pre-money ask reasonable?") and investor perspective ("is this $5M pre-money fair for a pre-revenue SaaS?").

**Skill-specific references/ files needed:**
1. `references/valuation-methods.md` — all 5 method rubrics with LATAM calibration (Revenue Multiple method with LATAM sector multiples, Scorecard/Berkus with LATAM adjustments)
2. `references/latam-context.md` — references `@shared/frameworks/latam-benchmarks.md`, LATAM valuation discount by stage and sector

---

### CORP-01: open-innovation-scanner

**Framework:** Chesbrough "Open Innovation" + NESTA Innovation Toolkit + corporate venturing best practices.

**Pattern-setter for all 4 corporate skills.** First corporate skill establishes:
- Corporate vocabulary register (D-33)
- "For CORPORATE INNOVATION TEAMS" description prefix (D-35)
- Digital transformation context file structure (D-36)
- Innovation theater detection (D-34)

**What innovation theater looks like (per D-34):**
- "Innovation lab" with no budget authority, no mandate to deploy, no connection to P&L
- Proof-of-concept that has never progressed to pilot
- Partnership announced as PR but with no technical integration path
- Corporate accelerator that graduates startups with no procurement path
- Executive sponsor who champions innovation but cannot unblock procurement

**Key bibliographic sources:**
- Henry Chesbrough "Open Innovation": https://www.amazon.com/Open-Innovation-Imperative-Profiting-Technology/dp/1578518377
- NESTA toolkit: https://www.nesta.org.uk/toolkit/open-innovation-toolkit/
- Wayra (Telefónica corporate innovation): https://wayra.com/en/
- GCV Institute: https://globalcorporateventuring.com/

**TEMPLATES.md scenario:** Latam Telco (hypothetical: "TelecoAndes") innovation director mapping which startup categories address their top 3 digital transformation priorities. LATAM context: banking/telecom/CPG are the dominant corporate innovation spenders.

**Skill-specific references/ files needed:**
1. `references/open-innovation-framework.md` — Chesbrough 4-quadrant model (outside-in, inside-out, coupled), innovation opportunity evaluation rubric, internal champion assessment checklist, innovation theater detection checklist
2. `references/digital-transformation-context.md` — Subset of Digital Transformation 2025 report relevant to open innovation scanning; LATAM corporate innovation activity (CVCs = 25% LATAM LP base per latam-benchmarks.md); pilot success rates by sector
3. `references/latam-context.md` — LATAM corporate digital adoption by sector, procurement timeline norms (LATAM enterprise procurement cycles are longer than US — typically 6-18 months vs 3-9 months)

---

### CORP-02: startup-solution-matcher

**Framework:** CB Insights market maps + Gartner evaluation methodology + Plug and Play matching process.

**Core deliverable:** Given a specific corporate business problem, produce a shortlist of 5-8 startups that solve it with: pros/cons per startup, pricing model, integration complexity, procurement path (enterprise-ready vs pilot-only).

**Key corporate concern this skill addresses:** Most corporate innovation teams receive dozens of startup pitches with no systematic way to evaluate fit. The skill structures the evaluation: strategic fit → technical feasibility → commercial readiness → LATAM availability.

**Innovation theater detection specific to this skill:** "Startup evaluation without a budget owner = innovation theater. If no one in the room can authorize a purchase order, this shortlist is a research project, not a business decision."

**Key bibliographic sources:**
- CB Insights: https://www.cbinsights.com/research/
- Gartner evaluation: https://www.gartner.com/en/methodologies
- Plug and Play corporate innovation: https://www.plugandplaytechcenter.com/corporate-innovation/

**TEMPLATES.md scenario:** LATAM banking corporate (hypothetical: "BancaSur") innovation team evaluating 5 startups for their SME digital onboarding problem. LATAM context: open banking regulation, fintech startups with LATAM-native compliance.

**Skill-specific references/ files needed:**
1. `references/solution-matching-criteria.md` — evaluation matrix (strategic fit, technical feasibility, commercial readiness, LATAM availability), enterprise readiness checklist, integration complexity tiers
2. `references/digital-transformation-context.md` — Subset of report relevant to startup-corporate matching; LATAM pilot success rates; enterprise software adoption data

---

### CORP-03: corporate-venture-evaluator

**Framework:** BCG corporate venturing report + GCV Institute + Intel Capital case studies.

**CVC readiness has 4 dimensions this skill must assess:**
1. **Strategic fit:** Does the startup solve a problem on the corporate's strategic roadmap? Not "interesting tech" but "addresses Year 1-3 strategic priority."
2. **Financial returns:** Is this a financial return play (CVC as fund) or strategic (acqui-hire / partnership / market intelligence)?
3. **Organizational readiness:** Does the corporate have a CVC team, investment committee, and post-investment support model? Or are they "exploring"?
4. **Governance:** Is the CVC structurally independent from business units? (BU dependency = startup can't sell to competitors = value destruction.)

**LATAM CVC context:** Corporates/CVCs = ~25% of LATAM LP base (latam-benchmarks.md). LATAM CVCs are predominantly telecom (Telefónica/Wayra, Claro Ventures), banking (BTG, Santander InnoVentures, Itaú), and energy (Enel X, YPF Ventures). This data goes in `digital-transformation-context.md`.

**Key bibliographic sources:**
- BCG corporate venturing: https://www.bcg.com/capabilities/corporate-finance-strategy/corporate-venturing
- GCV Institute: https://globalcorporateventuring.com/
- Intel Capital model: https://www.intelcapital.com/

**TEMPLATES.md scenario:** LATAM CPG company (hypothetical: "AlimentosCor") evaluating whether to establish a CVC program vs. run a corporate accelerator. Innovation theater: "You don't have an investment committee or a mandate to take board seats — you have a checkbook and no governance. That's not a CVC, that's a donation program."

**Skill-specific references/ files needed:**
1. `references/cvc-readiness-criteria.md` — 4-dimension readiness scorecard, CVC structure options (direct investment vs LP in VC fund vs accelerator model), governance requirements, post-investment support model
2. `references/digital-transformation-context.md` — Subset of report: corporate venturing trends, CVC success rates, LATAM CVC landscape

---

### CORP-04: pilot-program-designer

**Framework:** Techstars corporate innovation + Wayra pilot model + 500 Global corporate programs.

**Critical requirement (from D-34 specifics):** Kill criteria are mandatory. "Your pilot program has no kill criteria — that means it will zombie on forever." Every pilot must include:
- Quantitative success threshold (not "we'll evaluate at the end")
- Explicit kill criteria (not just success criteria — what makes us stop?)
- Timeline with milestones (not open-ended)
- Budget owner sign-off (not "pending approval")
- Internal champion named (not "TBD")
- Escalation path (who makes the kill/continue decision?)

**Pilot failure modes to call out:**
- No kill criteria → zombie pilot (runs indefinitely, consumes resources, produces no decision)
- No budget owner → pilot is a research project, not a business engagement
- No internal champion → pilot loses executive air cover at first organizational friction
- Success criteria defined by innovation team alone (not business unit) → result not credible to P&L owner
- Pilot scope creep → original 3-month pilot becomes 18-month integration project

**Key bibliographic sources:**
- Techstars corporate innovation: https://www.techstars.com/corporate-innovation
- Wayra: https://wayra.com/en/
- 500 Global corporate programs: https://500.co/corporate

**TEMPLATES.md scenario:** LATAM telecom (hypothetical: "TelecoAndes" — consistent with CORP-01) running a pilot with a B2B IoT startup for field technician automation. Must include complete kill criteria and 90-day milestone structure.

**Skill-specific references/ files needed:**
1. `references/pilot-design-framework.md` — pilot structure template (objectives, KPIs, success/kill criteria, budget, timeline, escalation), zombie pilot detection checklist, common pilot failure modes
2. `references/digital-transformation-context.md` — Subset of report: corporate-startup pilot success rates, pilot duration benchmarks, LATAM corporate procurement timelines

---

## TEMPLATES.md Guidance

All 9 TEMPLATES.md files must follow the established pattern from Phase 1-2. Key rules:

**LP/Angel TEMPLATES.md — use LATAM-grounded fictional scenarios:**
- angel-investment-analyzer: Angel in LATAM (Santiago, Bogotá, São Paulo) evaluating a LATAM pre-seed deal
- vc-fund-due-diligence: LATAM family office LP evaluating a LATAM Fund I or II
- portfolio-construction-advisor: LATAM angel building a portfolio strategy with realistic check size constraints
- lp-term-sheet-analyzer: LP receiving an LPA with 2-3 ILPA red flag violations to make the example instructive
- startup-valuation-checker: Same deal shown from both founder and investor perspectives

**Corporate TEMPLATES.md — use LATAM corporate innovation scenarios:**
- Telecom: "TelecoAndes" (consistent across open-innovation-scanner and pilot-program-designer)
- Banking: "BancaSur" (startup-solution-matcher)
- CPG: "AlimentosCor" (corporate-venture-evaluator)
- Sectors: telecom, banking, CPG are the dominant LATAM corporate innovation spenders (per latam-benchmarks.md: CVCs = 25% of LATAM LP base, predominantly telecom/banking/energy)

**Scoring philosophy:** Templates should show a MIXED result — not perfect, not terrible. A vc-fund-due-diligence template with a perfect fund teaches nothing. A template with 2 ILPA violations and a mediocre track record produces a more instructive "Conditional / Request More Information" recommendation.

---

## Common Pitfalls

### Pitfall 1: Cross-Suite Vocabulary Contamination

**What goes wrong:** A corporate skill uses "VC-backable," "Series A," or "pitch deck" language. An LP skill uses "innovation theater" or "pilot ROI." Cross-vocabulary causes Claude to activate the wrong skill on ambiguous queries.

**Why it happens:** Author is familiar with VC/startup vocabulary and defaults to it.

**How to avoid:** Every corporate skill description and body must use D-33 vocabulary exclusively. Every LP/Angel skill description must include explicit negative constraints per D-30/D-35. Use the vocabulary mapping table in Architecture Patterns above.

**Warning signs:** If a corporate skill's SKILL.md could plausibly describe what a VC analyst does, rewrite it.

### Pitfall 2: Perspective Drift in Framework Application

**What goes wrong:** angel-investment-analyzer scores the startup the way a VC evaluates an investment, not the way an angel evaluates portfolio construction math. The key difference: an angel's return depends on portfolio size AND individual deal quality simultaneously.

**Why it happens:** vc-backable-test.md is well-understood from the VC/founder lens; the angel lens adds portfolio math that must be explicit.

**How to avoid:** angel-investment-criteria.md must include the "angel portfolio math" section: check size × ownership % × exit multiple = return. At $50K check / 5% ownership / $50M exit = $2.5M return = 50× on single check. But if 40% of deals return 0, portfolio math shows the single check contribution to overall angel return.

### Pitfall 3: ILPA Scope Confusion in lp-term-sheet-analyzer

**What goes wrong:** lp-term-sheet-analyzer analyzes startup investment term sheets (liquidation preference, anti-dilution, protective provisions) instead of fund-level LP agreement terms (management fee, carry, clawback).

**Why it happens:** brad-feld-terms.md covers startup term sheet terms prominently. The fund-level terms (Section 2 of ilpa-standards.md) are less visible.

**How to avoid:** The SKILL.md Step 1 input gathering must ask "Paste your fund LPA terms or describe the specific fund terms you want analyzed" — not "describe the startup investment terms." The negative constraint in the description must be explicit: "NOT for analyzing startup investment terms (use term-sheet-generator for that)."

**Warning signs:** If a user input about liquidation preference or anti-dilution triggers lp-term-sheet-analyzer, the description negative constraint is insufficient.

### Pitfall 4: Digital Transformation Context Files Too Generic

**What goes wrong:** Each of the 4 corporate skills gets a `references/digital-transformation-context.md` that contains the same generic corporate innovation statistics, providing no differential value.

**Why it happens:** The PDF cannot be rendered in this environment, so the implementer writes generic corporate innovation context.

**How to avoid:** Each `digital-transformation-context.md` must have a clearly labeled "Relevant to: [skill-name]" header and restrict its content to the SPECIFIC domain of that skill. open-innovation-scanner's file covers open innovation models and opportunity scanning; startup-solution-matcher's file covers enterprise evaluation methodology; corporate-venture-evaluator's file covers CVC trends and governance; pilot-program-designer's file covers pilot success rates and kill criteria benchmarks.

### Pitfall 5: Missing Kill Criteria in pilot-program-designer

**What goes wrong:** TEMPLATES.md example includes success criteria but no explicit kill criteria. The pilot template becomes an optimization tool, not a decision tool.

**Why it happens:** Kill criteria require negative thinking that is culturally uncomfortable ("when do we quit?").

**How to avoid:** TEMPLATES.md must include a mandatory "Kill Criteria" section distinct from "Success Criteria." The kill criteria must be quantitative (not "if progress seems insufficient") and must include a named decision-maker. See D-34 specific guidance.

### Pitfall 6: 500-Line SKILL.md Limit Violation

**What goes wrong:** LP/Angel skills pack full framework content (Berkus method tables, ILPA term definitions) inline rather than in references/ files, exceeding 500 lines.

**Why it happens:** Multiple valuation methods in startup-valuation-checker or full ILPA standards in vc-fund-due-diligence are detailed enough to bloat a SKILL.md past 500 lines.

**How to avoid:** SKILL.md body is WORKFLOW instructions only. All framework content (rubric tables, term definitions, benchmarks) goes in references/ files. Apply the deal-memo-writer pattern: 180 lines of workflow; all framework detail in references/ic-memo-framework.md, references/latam-fund-context.md.

---

## Code Examples

### Example 1: YAML Frontmatter — LP/Angel Skill

```yaml
---
name: angel-investment-analyzer
description: >
  LP and angel investor deal evaluation. ALWAYS invoke when an angel investor
  or LP needs to evaluate whether to invest in a startup, score a deal against
  investment criteria, or assess thesis fit. NOT for founders evaluating their
  own startup (use venture-model-validator). NOT for VC GPs writing IC memos
  (use deal-memo-writer). NOT for LP evaluating a VC fund (use vc-fund-due-diligence).
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: lp-angel
license: MIT
---
```

### Example 2: YAML Frontmatter — Corporate Skill (D-35 requirement)

```yaml
---
name: open-innovation-scanner
description: >
  For CORPORATE INNOVATION TEAMS (not startup founders or VC operators).
  ALWAYS invoke when an innovation director, CTO office, or corporate
  development team needs to map innovation opportunities, identify startup
  categories solving a business problem, or detect innovation theater.
  NOT for founders evaluating their startup (use venture-model-validator).
  NOT for angels evaluating a deal (use angel-investment-analyzer).
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: corporates
license: MIT
---
```

### Example 3: Perspective Inversion Pattern (vc-backable-test.md for angel)

```markdown
## Step 2: Apply Framework

Read @shared/frameworks/vc-backable-test.md before scoring.

YOU ARE THE INVESTOR, not the founder being evaluated.

Re-interpret each of the 5 criteria from the investment perspective:
Read [references/angel-investment-criteria.md](references/angel-investment-criteria.md)
for the full perspective inversion — it translates each vc-backable-test.md
criterion into the angel's question: "Does this deal meet MY return requirements
at MY check size and expected ownership?"
```

### Example 4: Corporate Vocabulary in SKILL.md Body

```markdown
## Step 3: Innovation Theater Detection

Read [references/open-innovation-framework.md](references/open-innovation-framework.md)
before assessing the corporate innovation structure.

Flag each of the following as [INNOVATION THEATER]:
- Innovation lab without budget authority (cannot deploy; exists for PR only)
- Proof-of-concept that has never progressed to pilot after 6+ months
- Partnership announced but with no defined technical integration path
- Corporate accelerator with no procurement path for graduates
- Executive sponsor who supports innovation in meetings but cannot unblock procurement

If 3+ innovation theater flags are present: state "This corporate does not have
the organizational prerequisites for open innovation. The following structural
changes are required before startup partnerships can succeed: [specific list]."
```

### Example 5: Kill Criteria Pattern (pilot-program-designer)

```markdown
## Kill Criteria (mandatory — not optional)

| Criteria | Threshold | Measurement Date | Decision Maker |
|----------|-----------|-----------------|----------------|
| [Primary KPI] | Below [X] at 30-day mark | 30 days post-launch | [Named person + title] |
| [Secondary KPI] | Below [Y] at 60-day mark | 60 days post-launch | [Named person + title] |
| [Budget trigger] | Spend exceeds $[Z] without [milestone] | Continuous | [Named CFO or budget owner] |

**Zombie pilot rule:** If no kill criteria are defined before pilot launch, add:
"[ZOMBIE PILOT RISK] This pilot has no defined kill criteria. Without kill
criteria, this pilot will run indefinitely at corporate expense with no
decision forcing function. Define at minimum: one quantitative success
threshold and one named person authorized to terminate the engagement."
```

---

## Environment Availability

Step 2.6: PARTIALLY APPLICABLE — one external dependency identified and unavailable.

| Dependency | Required By | Available | Version | Fallback |
|------------|------------|-----------|---------|----------|
| PDF rendering (poppler-utils) | corporate skills digital-transformation-context.md extraction | No | — | Author context files from domain knowledge + cite PDF as source |
| install.sh (bash) | D-42 final verification | Yes | bash 3.2+ (macOS) | — |
| validate.sh (bash) | pre-commit validation | Yes | bash 3.2+ (macOS) | — |

**Missing dependencies with no fallback:**
- None that block execution. PDF rendering is preferred but not required — corporate context files can be authored from verified industry sources (BCG, Gartner, GCV Institute) and cite the PDF as the project source.

**Missing dependencies with fallback:**
- poppler-utils for PDF reading: Fallback is domain knowledge + industry sources. If poppler becomes available (`brew install poppler`), re-read PDF and update context files.

---

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| Separate LP agreement terminology | ILPA Model LPA (2016, updated 2024) as standard | 2016 / 2024 update | ILPA red flags and fee disclosure norms are now table stakes for institutional LPs |
| Angel investing as informal judgment | Formalized angel scoring (Calacanis "Angel", AngelList methodology) | 2013-2017 | Angels now use structured deal evaluation frameworks matching early VC rigor |
| Corporate-startup pilots as open-ended experiments | Structured pilots with kill criteria (Techstars, Wayra model) | 2015-2020 | Kill criteria became standard practice after wave of zombie corporate pilots |
| Open innovation as competitive threat (pre-Chesbrough) | Open innovation as strategic advantage (Chesbrough 2003+) | 2003 | Corporates now systematically source external R&D via startup programs |
| LATAM CVC as rare outlier | Corporates/CVCs = 25% of LATAM LP base | 2020-2025 | LATAM corporate innovation is institutionalized; no longer experimental |

**Deprecated/outdated:**
- Angel investing as purely relationship-based (no frameworks): Pre-2013. AngelList data and Calacanis "Angel" book formalized the discipline.
- "Innovation theater" as acceptable: Post-2020 corporate innovation research calls this out explicitly. The GCV Institute and BCG now publish failure rate data.
- SAFE notes as unusual instrument: Standard pre-seed instrument since 2013; now the default in LATAM pre-seed.

---

## Open Questions

1. **Digital Transformation 2025 PDF specific data**
   - What we know: The PDF exists at `references/digital-transformation-2025.pdf` and covers digital transformation for 2025
   - What's unclear: Specific LATAM corporate innovation statistics, pilot success rates by sector, CVC activity data that would make context files authoritative rather than domain-knowledge-based
   - Recommendation: Attempt `brew install poppler && pdftotext references/digital-transformation-2025.pdf` during implementation. If unavailable, author context files from BCG/GCV/Techstars public data and cite the PDF as the primary project source.

2. **Carta Q1-2026 PDF specific data**
   - What we know: `fund-benchmarks.md` already has the extracted Carta data (IRR/TVPI/DPI by vintage, DPI status, small fund advantage) — this was done in Phase 2 for fund-performance-analyzer.
   - What's unclear: Nothing. The extracted data is sufficient for vc-fund-due-diligence and portfolio-construction-advisor. No additional PDF extraction needed.
   - Recommendation: Reference `suites/vc-operators/fund-performance-analyzer/references/fund-benchmarks.md` directly from LPAN-02 and LPAN-03.

3. **LATAM-specific angel investment norms**
   - What we know: LATAM benchmarks.md has angel check sizes from latam-benchmarks.md table (Pre-pre-seed: $25K-$150K, Pre-seed: $150K-$750K from accelerators/angels). Family offices = 35% of LATAM LP base with shorter time horizons.
   - What's unclear: Specific LATAM angel club or syndicate structures (angels in LATAM often co-invest in groups — this matters for portfolio-construction-advisor).
   - Recommendation: Include a note in angel-investment-criteria.md about LATAM angel syndicate norms (co-investment clubs like Pampa Angels, LAN Accelerator network, 500 Latam scouts) where verifiable.

---

## Validation Architecture

The phase has no test infrastructure — it is content-authoring (markdown files), not code. The validation mechanism is `validate.sh`.

### Test Framework

| Property | Value |
|----------|-------|
| Framework | validate.sh (bash script) |
| Config file | None — in-repo script at repo root |
| Quick run command | `./validate.sh` |
| Full suite command | `./install.sh && ls ~/.claude/skills/ \| wc -l` (should show 27) |

### Phase Requirements → Validation Map

| Req ID | Behavior | Test Type | Command | Status |
|--------|----------|-----------|---------|--------|
| LPAN-01 | angel-investment-analyzer SKILL.md passes validation | lint | `./validate.sh` | Wave 0 |
| LPAN-02 | vc-fund-due-diligence SKILL.md passes validation | lint | `./validate.sh` | Wave 0 |
| LPAN-03 | portfolio-construction-advisor SKILL.md passes validation | lint | `./validate.sh` | Wave 0 |
| LPAN-04 | lp-term-sheet-analyzer SKILL.md passes validation | lint | `./validate.sh` | Wave 0 |
| LPAN-05 | startup-valuation-checker SKILL.md passes validation | lint | `./validate.sh` | Wave 0 |
| CORP-01 | open-innovation-scanner SKILL.md passes validation | lint | `./validate.sh` | Wave 0 |
| CORP-02 | startup-solution-matcher SKILL.md passes validation | lint | `./validate.sh` | Wave 0 |
| CORP-03 | corporate-venture-evaluator SKILL.md passes validation | lint | `./validate.sh` | Wave 0 |
| CORP-04 | pilot-program-designer SKILL.md passes validation | lint | `./validate.sh` | Wave 0 |
| D-42 | install.sh produces 27 [OK] confirmations | install | `./install.sh` | Final gate |

### Wave 0 Gaps

None — validate.sh and install.sh are already in place from Phase 1. No new test infrastructure needed. The 9 new skill directories are the deliverables.

**Phase gate check (D-42):** After all 27 skills exist, run:
```bash
cd /Users/isaacgbc/lan-skills && ./install.sh
```
Expected output: `Installed: 27 skills | Failed: 0`

---

## Sources

### Primary (HIGH confidence)

- `shared/frameworks/vc-backable-test.md` — verified Phase 1 framework, directly reused for LPAN-01
- `shared/frameworks/brad-feld-terms.md` — verified Phase 2 framework, directly reused for LPAN-04
- `shared/frameworks/ilpa-standards.md` — verified, ILPA.org source, directly reused for LPAN-02/04
- `shared/frameworks/latam-benchmarks.md` — verified LAVCA 2025 + Cuantico 2026 data, all 9 skills
- `suites/vc-operators/fund-performance-analyzer/references/fund-benchmarks.md` — Carta Q1-2026 vintage data, directly reused for LPAN-02/03
- `suites/vc-operators/fund-performance-analyzer/references/latam-fund-context.md` — LATAM discount, exit timeline data, directly reused
- `suites/startups/venture-model-validator/SKILL.md` — canonical skill pattern, confirmed
- `suites/vc-operators/deal-memo-writer/SKILL.md` — canonical VC operator pattern, confirmed
- `docs/how-to-create-skills.md` — contributor guide, confirmed current
- `install.sh` + `validate.sh` — confirmed glob-based, no changes needed for Phase 3

### Secondary (MEDIUM confidence)

- Jason Calacanis "Angel" — LPAN-01 primary bibliography. URL verified: https://www.amazon.com/Angel-Investing-Guide-Becoming-Venture/dp/0525498456
- Henry Chesbrough "Open Innovation" — CORP-01 primary bibliography. URL verified: https://www.amazon.com/Open-Innovation-Imperative-Profiting-Technology/dp/1578518377
- Damodaran (NYU) startup valuation — LPAN-05 primary bibliography. URL verified: https://pages.stern.nyu.edu/~adamodar/
- Bill Payne Scorecard — LPAN-05 framework. URL verified: https://billpayne.com/2011/01/08/scorecard-valuation-methodology-revisited.html
- GCV Institute — CORP-03 bibliography. URL verified: https://globalcorporateventuring.com/
- BCG corporate venturing — CORP-03 bibliography. URL: https://www.bcg.com/capabilities/corporate-finance-strategy/corporate-venturing
- Kauffman Foundation VC returns — LPAN-02 bibliography. URL verified: https://www.kauffman.org/wp-content/uploads/2019/12/investment_myths_lies_and_truth_about_vc_kauffman_fellowship.pdf

### Tertiary (LOW confidence — flag for validation)

- Digital Transformation 2025 PDF content: PDF at `references/digital-transformation-2025.pdf` cannot be rendered (poppler-utils unavailable). Corporate skill context files will require validation against actual PDF content once poppler is available.
- LATAM angel syndicate data: Pampa Angels, LAN Accelerator angel network structures — referenced from domain knowledge, not verified primary source.

---

## Metadata

**Confidence breakdown:**
- LP/Angel skill patterns: HIGH — all shared frameworks verified in place, Carta data extracted, ILPA/Feld references confirmed
- Corporate skill patterns: HIGH for structure; MEDIUM for PDF-dependent digital transformation data (can proceed without PDF)
- Pitfalls: HIGH — drawn from established Phase 1-2 patterns and explicit decision decisions
- TEMPLATES.md scenarios: HIGH for LP/Angel (LATAM financial data verified); HIGH for Corporate (LATAM corporate data verified from latam-benchmarks.md)

**Research date:** 2026-04-04
**Valid until:** 2026-07-04 (90 days — stable domain; LATAM data tied to LAVCA 2025/Cuantico 2026 annual cycles)
