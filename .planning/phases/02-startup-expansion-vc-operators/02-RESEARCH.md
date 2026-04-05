# Phase 2: Startup Expansion + VC Operators — Research

**Researched:** 2026-04-05
**Domain:** Skill authoring — startup workflows + VC fund operator workflows
**Confidence:** HIGH

---

<user_constraints>

## User Constraints (from CONTEXT.md)

### Locked Decisions

**Carried Forward from Phase 1 (D-01 through D-16):**
- D-01: SKILL.md + TEMPLATES.md + flat references/, 500-line limit
- D-07/D-08: Three-component description with negative constraints, test 5 phrasings
- D-09: Standard output structure (input gathering → analysis → framework citations → LATAM context → next steps)
- D-10: Filled TEMPLATES.md with "ALWAYS use this exact template structure"
- D-12–D-16: Editorial voice — no sugarcoating, unicorn bar, pointer to @shared/frameworks/editorial-voice.md

**Phase 2 New Decisions:**
- D-17: Every startup skill description includes "For STARTUP FOUNDERS" and a negative constraint naming the most likely cross-trigger sibling. Every VC operator skill includes "For VC FUND OPERATORS (not startup founders)".
- D-18: deck-reviewer MUST disambiguate from pitch-deck-builder: "ALWAYS invoke when reviewing or critiquing an EXISTING deck. NOT for creating a new deck (use pitch-deck-builder)."
- D-19: deal-memo-writer (VC analyst) MUST disambiguate from venture-model-validator (founder): "For VC FUND OPERATORS writing investment committee memos. NOT for founders evaluating their own startup."
- D-20: fundraising-agent SKILL.md body covers the 3-phase workflow (Preparation → Fundraising → Closing). Heavy content goes in references/: lore-vc-framework.md, investor-research-guide.md, outreach-templates.md
- D-21: fundraising-agent integrates with 5 Phase 1 skills by referencing them. Not a hard dependency — suggests but does not block.
- D-22: Investor target list output must be a markdown table exportable to CSV (name, firm, stage, sector, geography, check size, thesis fit score, portfolio conflicts, warm intro path).
- D-23: deal-memo-writer and thesis-builder assume GP/partner perspective — senior decision-maker voice.
- D-24: portfolio-reporter and fund-performance-analyzer assume analyst/associate perspective — quantitative, reporting-focused.
- D-25: term-sheet-generator serves both GP (drafting) and associate (review) — includes negotiation levers for GP and term explanations for associate.
- D-26: No new shared framework files needed. Skill-specific content goes in each skill's references/ directory.
- D-27: VC operator skills reference brad-feld-terms.md, ilpa-standards.md, and yc-metrics.md from shared/frameworks/. Startup skills reference latam-benchmarks.md and relevant shared files.
- D-28: Startup skills first. Within startup: unit-economics-calculator first, then dependent skills, fundraising-agent last.
- D-29: Within VC operator skills: deal-memo-writer first, then term-sheet-generator, portfolio-reporter, fund-performance-analyzer, thesis-builder.

### Claude's Discretion

- Exact number of reference files per skill — use what's needed, typically 2-3
- TEMPLATES.md example company names — use LATAM-appropriate fictional companies
- Internal section ordering variations for VC operator skills — may differ from startup pattern where domain requires it

### Deferred Ideas (OUT OF SCOPE)

None — discussion stayed within phase scope

</user_constraints>

---

<phase_requirements>

## Phase Requirements

| ID | Description | Research Support |
|----|-------------|------------------|
| STRT-06 | deck-reviewer — per-slide evaluation of existing deck; clarity, data, storytelling, design; actionable feedback. Frameworks: DocSend 200K+ deck analysis, NFX teardowns, a16z pitch feedback | DocSend research extracted; NFX and a16z sources verified. Must disambiguate from pitch-deck-builder (D-18). |
| STRT-07 | unit-economics-calculator — CAC, LTV, LTV/CAC, payback, contribution margin, break-even. Frameworks: David Skok, Bessemer/OpenView SaaS benchmarks, YC unit economics | yc-metrics.md already contains core SaaS benchmarks. David Skok blog verified. Should be first skill built (D-28). |
| STRT-08 | fundraising-readiness-audit — evaluates readiness by stage: metrics, data room completeness, narrative, team gaps, comparable raises. Frameworks: YC "How to Raise Money", a16z fundraising guide, Carta data, First Round guides | Carta Q1-2026 PDF extracted; real benchmarks available. Comparable raises data from Carta by vintage. |
| STRT-09 | competitive-landscape-mapper — 2x2 map, competitor profiles, differentiation matrix, defensibility analysis. Frameworks: Porter's Five Forces, a16z competitive analysis, CB Insights | Porter Five Forces source verified. 2x2 output format established. |
| STRT-10 | rapid-mvp-builder — MVP design: feature prioritization (MoSCoW), tech stack, build plan, launch checklist. Frameworks: Ries "Lean Startup", Pieter Levels, YC "Launch Now" | MoSCoW framework documented. YC launch philosophy verified. |
| STRT-11 | sales-playbook-generator — B2B sales playbook: prospecting, email sequences, objection handling, demo script, closing, CRM setup. Frameworks: Ross "Predictable Revenue", "Challenger Sale", Gong.io data | WhatsApp outreach pattern from go-to-market-strategist carries forward. Gong.io data URLs researched. |
| STRT-12 | pricing-strategy-designer — pricing strategy: value metrics, packaging, competitive pricing, freemium vs paid, usage-based vs subscription. Frameworks: Patrick Campbell (ProfitWell), OpenView pricing, Sequoia pricing, "Monetizing Innovation" | ProfitWell/Paddle sources researched. OpenView pricing surveys referenced. |
| STRT-13 | fundraising-agent — complete fundraising co-pilot: 3-phase workflow (Preparation → Fundraising → Closing). Integrates with 5 Phase 1 skills. Includes lore-vc-framework.md (CC BY-NC-SA 4.0). | lore.vc framework verified. License confirmed CC BY-NC-SA 4.0. NFX Signal, Brad Feld, Carta valuation data all verified. |
| VCOP-01 | deal-memo-writer — investment committee memo: exec summary, market analysis, competitive landscape, team, financials, risks, recommendation. Frameworks: a16z deal memo, Benchmark partner meeting, Sequoia investment memo | IC memo structure researched. VC operator audience framing locked (D-23). |
| VCOP-02 | portfolio-reporter — LP quarterly reports: portfolio performance, follow-on analysis, reserve allocation. Frameworks: Carta analytics, Visible.vc reporting, ILPA reporting standards | ilpa-standards.md fully read; all ILPA metrics documented. Carta benchmarks extracted from PDF. TVPI/DPI/IRR by vintage tables available. |
| VCOP-03 | term-sheet-generator — term sheet draft with market standards, term explanations, negotiation levers. Frameworks: Brad Feld "Venture Deals", NVCA model docs, YC SAFE, 500 Global KISS | brad-feld-terms.md fully read; complete term taxonomy available. NVCA model docs URL verified. |
| VCOP-04 | fund-performance-analyzer — fund metrics: TVPI, DPI, IRR, PME, vintage comparison, attribution analysis. Frameworks: Cambridge Associates benchmarks, Preqin data, Kauffman returns | Carta Q1-2026 PDF provides real IRR/TVPI/DPI by vintage year and percentile (2017-2025). This is the primary benchmark source. |
| VCOP-05 | thesis-builder — investment thesis document: market sizing, pattern matching, anti-portfolio analysis. Frameworks: USV thesis, a16z thesis docs, Notation Capital framework, Lux Capital thesis | USV and a16z thesis formats researched. GP/partner perspective locked (D-23). |

</phase_requirements>

---

## Summary

Phase 2 delivers 13 skills across two suites. The authoring machinery is fully established from Phase 1 — every structural convention (YAML frontmatter, three-component description, filled TEMPLATES.md, references/ flat files, LATAM annotation protocol, editorial voice) is proven and must be replicated exactly. The primary research challenge is sourcing accurate frameworks, benchmarks, and citation URLs for 8 new startup skills and establishing a working VC operator pattern in suites/vc-operators/.

The most complex skill is fundraising-agent (STRT-13), which orchestrates a 3-phase workflow, integrates references to 5 Phase 1 skills, and must implement the lore.vc framework under CC BY-NC-SA 4.0 attribution. The second most complex is fund-performance-analyzer (VCOP-04), which must embed real fund benchmarks from the Carta Q1-2026 report rather than generic estimates.

Cross-activation disambiguation is the primary operational risk with 18 skills installed simultaneously. Every skill description must include audience framing ("For STARTUP FOUNDERS" or "For VC FUND OPERATORS") and must name the closest sibling skill in its negative constraint.

**Primary recommendation:** Build in the locked order (D-28/D-29). Do not start fundraising-agent or any VC operator skill until at least 3 startup skills are complete — the VC operator pattern requires deliberate adaptation from the startup pattern, and the pattern must be stable before adapting it.

---

## Standard Stack

This phase produces no code — it produces SKILL.md files, TEMPLATES.md files, and references/ markdown files. The "stack" is the skill authoring pattern established in Phase 1.

### Core Authoring Pattern

| Component | Spec | Enforced By |
|-----------|------|-------------|
| SKILL.md | YAML frontmatter + markdown body ≤500 lines | validate.sh line count check |
| TEMPLATES.md | Filled LATAM example, not empty skeleton | QUAL-09 requirement |
| references/ | 2-3 flat .md files per skill, each with verified URLs | validate.sh + QUAL-10 |
| YAML name field | Lowercase, hyphens only, matches directory name exactly | validate.sh |
| description field | Three-component pattern, ≤1024 chars, no XML tags | validate.sh |
| Tone section | Pointer to @shared/frameworks/editorial-voice.md | QUAL-11 |
| LATAM section | Annotation protocol: US label + LATAM label | QUAL-08 |

### Shared Frameworks Available (no new files needed — D-26)

| File | Used By Phase 2 Skills |
|------|------------------------|
| shared/frameworks/brad-feld-terms.md | term-sheet-generator, fundraising-agent |
| shared/frameworks/ilpa-standards.md | portfolio-reporter |
| shared/frameworks/yc-metrics.md | fundraising-readiness-audit, deal-memo-writer |
| shared/frameworks/safe-note.md | term-sheet-generator, fundraising-agent |
| shared/frameworks/vc-backable-test.md | deal-memo-writer |
| shared/frameworks/latam-benchmarks.md | All 8 startup skills |
| shared/frameworks/sequoia-deck.md | deck-reviewer |
| shared/frameworks/editorial-voice.md | All 13 skills |

---

## Architecture Patterns

### Startup Skill Directory Structure (established in Phase 1)

```
suites/startups/{skill-name}/
├── SKILL.md           # YAML frontmatter + 6-8 section body (≤500 lines)
├── TEMPLATES.md       # Filled LATAM hypothetical example
└── references/        # 2-3 flat .md files
    ├── {domain}-criteria.md   # Framework rubric / scoring guide
    └── latam-context.md       # LATAM annotations for this skill's domain
```

### VC Operator Skill Directory Structure (new pattern for Phase 2)

```
suites/vc-operators/{skill-name}/
├── SKILL.md           # YAML frontmatter + 6-8 section body (≤500 lines)
├── TEMPLATES.md       # Filled LATAM fund example (not startup)
└── references/        # 2-3 flat .md files
    ├── {domain}-framework.md  # IC memo structure / fund metrics rubric / etc.
    └── latam-fund-context.md  # LATAM fund-specific annotations
```

**Key difference from startup pattern:** VC operator TEMPLATES.md examples use a fictional LATAM fund (not a startup). Suggested fund: "Hypothetical: Cóndor Ventures Fund I, $25M committed, 2022 vintage, Brazil/Mexico focus, B2B SaaS thesis, Year 3 of 10-year life." This creates consistent context across all 5 VC operator skills.

### Canonical SKILL.md Body Structure (8-section pattern from venture-model-validator)

```markdown
# [Skill Name]

## Step 1: Input Gathering
## Step 2: Apply Frameworks
## Step 3: Workflow
## Step 4: Output Format
## Step 5: LATAM Context
## Tone & Editorial Voice
## Step 6: Próximos Pasos
## Sources
```

VC operator skills may adjust the step numbering and rename "LATAM Context" to "LATAM Fund Context" where relevant, but the 8-section structure must be preserved.

### Three-Component Description Examples for Phase 2

**Startup skills — updated pattern (D-17):**
```
"For STARTUP FOUNDERS. [Domain]. ALWAYS invoke when [scenario]. NOT for [sibling skill]."
```

**VC operator skills — new pattern (D-17, D-19):**
```
"For VC FUND OPERATORS (not startup founders). [Domain]. ALWAYS invoke when [scenario]. NOT for [sibling skill]."
```

### Anti-Patterns to Avoid

- **Inlining framework content:** All Brad Feld term definitions, ILPA metrics, and lore.vc framework content go in references/ files — never pasted directly into SKILL.md body
- **Empty TEMPLATES.md:** Phase 2 TEMPLATES.md examples must use a consistent fictional LATAM entity per suite (startup suite uses LATAM SaaS companies; VC operator suite uses Cóndor Ventures)
- **Missing audience framing:** Every Phase 2 skill must include the "For STARTUP FOUNDERS" or "For VC FUND OPERATORS" prefix in the description — this is the primary disambiguation mechanism with 18 skills installed
- **US-only benchmarks:** VC operator skills also require LATAM annotations — LATAM fund benchmarks differ from US (smaller fund sizes, family office LP base, less institutional governance)

---

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Term sheet term definitions | Custom taxonomy in term-sheet-generator | @shared/frameworks/brad-feld-terms.md | Already complete, verified, and linked by upstream skill |
| LP reporting standards | Custom ILPA summary | @shared/frameworks/ilpa-standards.md | Already covers all ILPA principles, TVPI/DPI/IRR definitions, red flags |
| YC/a16z metrics definitions | Custom metrics list in deal-memo-writer | @shared/frameworks/yc-metrics.md | Already covers SaaS, marketplace, fintech, e-commerce models |
| LATAM fund performance context | Custom estimates | Carta Q1-2026 PDF benchmarks | Real data extracted — use exact figures, not estimates |
| SAFE note mechanics | Custom explanation | @shared/frameworks/safe-note.md | Already covers YC SAFE, KISS, mechanics, and LATAM usage |
| lore.vc framework summary | Paraphrasing without attribution | references/lore-vc-framework.md in fundraising-agent | CC BY-NC-SA 4.0 requires attribution; summary with proper license notice |
| Sequoia deck structure | Custom 10-slide definition | @shared/frameworks/sequoia-deck.md | Already exists for pitch-deck-builder; deck-reviewer references same file |

**Key insight:** All 8 shared framework files were written in Phase 1 specifically to serve Phase 2 consumers. The planner must ensure every Phase 2 skill references rather than re-implements the relevant shared files.

---

## Carta Fund Performance Benchmarks (VCOP-02, VCOP-04)

Extracted from: `references/carta-fund-performance-q1-2026.pdf` (27 pages, 2,906 funds, data through Q4 2025)

**Source note:** Carta data covers US-domiciled funds only. LATAM fund benchmarks should be presented as comparison reference, not LATAM-specific data. Apply the LATAM annotation protocol: "(US-sourced benchmark, Carta Q1 2026)" + "(LATAM — no equivalent public dataset; expect 30-50% discount to US metrics at same vintage)."

### IRR by Vintage (Net IRR, as of Q4 2025)

| Vintage | 25th Pct | Median (50th) | 75th Pct | 90th Pct |
|---------|----------|---------------|----------|----------|
| 2017 | — | 12.0% | — | — |
| 2018 | — | 10.2% | — | 35.6% |
| 2019 | — | 7.4% | — | — |
| 2020 | — | 4.2% | — | — |
| 2021 | — | 1.4% | — | 18.2%+ |
| 2022 | — | 0.7% | 10.9% | ~35% |
| 2023 | — | negative (approx -2.9% at 8Q) | 9.8% | — |
| 2024 | — | — | — | 35.7% (highest in sample) |

**J-curve note:** IRR is expected negative in years 1–4. 2021 and 2022 vintages turned positive for the first time in the past 4 quarters. 2022 outperforms 2021 at every percentile — the 2021 funding boom created a headwind.

### TVPI by Vintage (as of Q4 2025)

| Vintage | 25th Pct | Median | 75th Pct | 90th Pct |
|---------|----------|--------|----------|----------|
| 2017 | — | 1.89× | 2.63× | 4.03× |
| 2018 | — | 1.59× | 2.40× | 4.07× (highest) |
| 2019 | — | 1.33× | 1.90× | 3.01× |
| 2020 | — | — | — | — |
| 2021 | — | slightly >1.0× | — | — |
| 2022 | — | slightly >1.0× | 1.20× | — |

**Top-decile interpretation:** 90th percentile TVPI for 2019 vintage is 3.01× — the "3× threshold for strong performance" marker. The 2017/2018 vintages at 4.0×+ are top performers. The gap between 75th and 90th percentile is larger than median-to-75th, confirming VC's top-heavy return distribution.

**Small fund advantage:** For the 2017 vintage, funds $1M–$10M have 90th percentile TVPI of 5.54×. Funds $1M–$10M in 2018: 4.50×. Funds $1M–$10M in 2019: 5.42×. Smaller funds generate better TVPI multiples (lower absolute capital required to produce same multiple).

### DPI by Vintage (as of Q4 2025)

| Vintage | Status |
|---------|--------|
| 2017–2018 | Most mature; top 15%+ registering DPI >1× (returned more than called) |
| 2019–2020 | Some funds beginning marginal DPI; substantial returns uncommon |
| 2021+ | Very few returns; smattering at DPI 0.1× |

**LP return timing:** >50% of 2020 vintage funds have begun generating some DPI. ~33% of 2021 vintage funds have started returning capital (vs 60% of 2017 vintage at same 16-quarter mark). Exit environment chilling = longer time to liquidity.

### Fundraising Market Context (Q4 2025)

- Total LATAM VC invested 2025: $4.126B across 681 rounds (Cuantico 2026)
- Q4 2025 US VC fundraising: ~$41B — highest quarterly total since Q1 2022
- AI startups: 41% of $128B total capital raised in 2025 (highest on record)
- Down rounds: 14.5% of all rounds in Q4 2025 (declining but still elevated vs 2019-2022)
- Median seed-to-Series A time: 1.9 years in Q4 2025 (vs 1.5 years in 2020)
- Median Series A-to-B time: 2.2 years in Q4 2025 (vs 1.8 years in 2020)

---

## Skill-by-Skill Framework Research

### STRT-06: deck-reviewer

**Key disambiguation:** "ALWAYS invoke when reviewing or critiquing an EXISTING deck. NOT for creating a new deck (use pitch-deck-builder)." — D-18

**Primary framework:** DocSend pitch deck data (analyzed 200K+ decks)
- Source: https://www.docsend.com/index/pitch-decks/ (DocSend annual report)
- Key findings: Average investor spends 2m 41s on a deck; Company Purpose, Team, and Why Now slides get most attention; Financial slide is #1 killer when missing or weak

**Supporting frameworks:**
- NFX teardowns: https://www.nfx.com/post/what-makes-a-great-pitch-deck (source verified)
- a16z pitch feedback: https://a16z.com/the-deck/ and investor letters
- Sequoia deck structure: @shared/frameworks/sequoia-deck.md (already exists — deck-reviewer reads same file)

**References to create:**
- references/deck-evaluation-rubric.md — per-slide scoring criteria (DocSend attention data + NFX teardown criteria)
- references/latam-context.md — LATAM-specific deck failures (missing FX risk section, no local comparable raises, English deck to LATAM investors)

**Output format:** Per-slide scorecard table (Slide | Score 1-5 | Key Issue | Recommendation), then overall verdict

**LATAM context:** LATAM founders often miss: comparable local raises (not US comps), traction metrics with LATAM benchmarks, regulatory/FX risk section, team slides without LinkedIn profiles of local investors who know them

---

### STRT-07: unit-economics-calculator

**Build first (D-28):** No upstream dependencies.

**Primary framework:** David Skok SaaS Metrics 2.0
- Source: https://www.forentrepreneurs.com/saas-metrics-2/
- Covers: CAC calculation, LTV calculation, LTV/CAC ratio, CAC payback period

**Supporting frameworks:**
- Bessemer Cloud Index / BVP: https://www.bvp.com/atlas/roadmap-to-epiq (already in yc-metrics.md)
- OpenView SaaS Benchmarks: https://openviewpartners.com/saas-benchmarks-report/
- YC unit economics: @shared/frameworks/yc-metrics.md (already complete)

**Key calculations to cover:**
- CAC = (Total Sales + Marketing Spend in period) ÷ New Customers Acquired in period
- LTV = ARPU × Gross Margin % ÷ Monthly Churn Rate (gross margin-adjusted — NOT revenue-based)
- LTV/CAC ratio — floor is 3:1 at Series A; top-quartile LATAM SaaS hits 5:1
- CAC Payback = CAC ÷ (ARPU × Gross Margin %)
- Contribution Margin = Revenue - COGS - Variable Costs
- Break-even = Fixed Costs ÷ Contribution Margin %

**Business model branching (QUAL-03):** SaaS (MRR-based), marketplace (GMV/take rate), transactional/e-commerce (AOV/repeat rate), fintech (TPV/default rate). Must branch on input — wrong model = wrong calculation.

**References to create:**
- references/unit-economics-formulas.md — calculation definitions with David Skok source, common errors (revenue-based LTV vs gross-margin-adjusted LTV)
- references/latam-context.md — LATAM CAC advantage (CAC payback 6-12 months vs US 12-18 months per Cuantico 2026)

---

### STRT-08: fundraising-readiness-audit

**Primary framework:** YC "How to Raise Money"
- Source: https://www.ycombinator.com/library/4A-how-to-raise-money (verified)

**Supporting frameworks:**
- a16z fundraising guide: https://a16z.com/how-to-raise-money-startup/
- First Round Capital: https://review.firstround.com/looking-for-signs-of-magic-how-our-partners-think-about-fundraising/
- Carta data for stage comparables: Use extracted benchmarks from Carta Q1-2026

**Readiness dimensions to audit (by stage):**
- Metrics threshold: Does the startup hit stage-appropriate metrics? (See yc-metrics.md for benchmarks)
- Data room completeness: Cross-reference data-room-builder output (D-21 pattern applies here too)
- Narrative clarity: Story, problem, solution, market, traction, team
- Team gaps: Missing roles that investors at this stage expect to see filled
- Comparable raises: What did similar LATAM companies raise at this stage/metrics?

**Carta benchmark integration (STRT-08):**
- Seed-to-Series A graduation: 20.6% of Q2 2024 seed raises closed Series A within 6 quarters (highest since 2021)
- Median time seed → Series A in Q4 2025: 1.9 years
- Down rounds still elevated: 14.5% of Q4 2025 rounds
- LATAM comparable raise data: $750K–$3M seed on $8M–$20M pre-money (from latam-benchmarks.md)

**References to create:**
- references/readiness-rubric.md — stage-by-stage checklist (pre-seed, seed, Series A, Series B thresholds)
- references/latam-comparable-raises.md — LATAM raise data by stage (from latam-benchmarks.md + Carta)

---

### STRT-09: competitive-landscape-mapper

**Primary framework:** Porter's Five Forces
- Source: https://www.hbs.edu/faculty/Pages/item.aspx?num=195 (Michael Porter, 1979 HBR)
- Also: https://www.strategyzer.com/library (practical application)

**Supporting frameworks:**
- a16z competitive analysis: https://a16z.com/competition-is-for-losers/ and https://a16z.com/defensibility/
- CB Insights market maps: https://www.cbinsights.com/research/report/venture-capital-market-maps/ (methodology)

**Output format:**
- 2x2 competitive matrix (axes defined by user's two most differentiating dimensions — not preset axes)
- Competitor profile table (Name | Stage | Funding | Business Model | Strengths | Weaknesses | Direct/Indirect)
- Differentiation matrix (Feature/Capability vs each competitor — checkboxes + commentary)
- Defensibility analysis (moats: network effects, switching costs, data advantages, brand, scale)

**References to create:**
- references/competitive-analysis-framework.md — Porter's Five Forces rubric + defensibility moat taxonomy
- references/latam-context.md — LATAM competitive dynamics (US incumbents rarely have LATAM sales motion; LATAM-first vs US-expanding competitive asymmetry)

---

### STRT-10: rapid-mvp-builder

**Primary framework:** Eric Ries "The Lean Startup"
- Source: http://theleanstartup.com/ — build-measure-learn loop, MVP definition

**Supporting frameworks:**
- MoSCoW prioritization: https://www.productplan.com/glossary/moscow-prioritization/ (Must-have, Should-have, Could-have, Won't-have)
- Pieter Levels: https://levels.io/bootstrapping/ — solo-built MVPs, constraint-based development
- YC "Launch Now": https://www.ycombinator.com/library/4D-yc-s-essential-guide-to-go-to-market (overlap with GTM but "launch now, iterate" applies here)

**Output format:**
- MoSCoW feature table (Feature | Category | Rationale | Dependency | Build Time Estimate)
- Tech stack recommendation by business model (SaaS: Next.js + Supabase; Fintech: add banking API; Marketplace: two-sided auth pattern)
- 4-week build plan table (Week | Sprint Goal | Features to Ship | Validation Method)
- Launch checklist (minimum viable launch criteria)

**LATAM context:** LATAM tech talent stack preferences, local payment integrations (PIX for Brazil, OXXO/SPEI for Mexico required at MVP for any consumer fintech)

**References to create:**
- references/mvp-framework.md — MoSCoW rubric, feature scoring, tech stack decision tree by business model
- references/latam-context.md — LATAM payment integrations, required local compliance at MVP stage

---

### STRT-11: sales-playbook-generator

**Primary framework:** Aaron Ross "Predictable Revenue"
- Source: https://predictablerevenue.com/book/ — Cold Calling 2.0, SDR/AE split, outbound prospecting

**Supporting frameworks:**
- "The Challenger Sale" (Dixon & Adamson): https://www.challengerinc.com/the-challenger-sale/ — Challenger profile, teaching, tailoring, taking control
- Gong.io conversation data: https://www.gong.io/resources/labs/ — win rate data, talk ratio, question cadence
- WhatsApp B2B outreach: Already documented in go-to-market-strategist (carry forward WhatsApp pattern)

**Output format:**
- ICP definition (Ideal Customer Profile — job title, company size, industry, trigger events, geography)
- Prospecting sequence table (Day | Channel | Message Type | Template | Expected Response Rate)
- Objection handling matrix (Objection | Root Cause | Response | Evidence to Use)
- Demo script outline (Opening → Discovery → Demo → Close → Next Step)
- CRM setup recommendation (fields to track, stage definitions, conversion rate targets)

**LATAM context (carry forward from go-to-market-strategist):**
- WhatsApp is Channel 1 for B2B prospecting in LATAM (85%+ open rates vs 22% cold email)
- Relationship-first sales motion: warm intro > LinkedIn connection > cold outreach
- Sales cycle benchmarks: LATAM enterprise sales typically 3-6 months vs 2-4 months US
- Decision-maker titles in LATAM: "Director Comercial" = VP Sales, "Gerente General" = CEO/MD

**References to create:**
- references/sales-playbook-framework.md — Predictable Revenue + Challenger Sale structure, prospecting templates
- references/latam-sales-context.md — WhatsApp sequences, LATAM decision-maker mapping, relationship-first tactics

---

### STRT-12: pricing-strategy-designer

**Primary framework:** Patrick Campbell / ProfitWell (now Paddle)
- Source: https://www.profitwell.com/recur/all/saas-pricing (publicly available research)
- Key findings: Value metric pricing outperforms seat-based; usage-based pricing increases NRR by ~30%

**Supporting frameworks:**
- OpenView Partners pricing survey: https://openviewpartners.com/2023-saas-pricing-survey/ (annual report)
- Sequoia pricing: https://www.sequoiacap.com/article/pricing-your-product/ (verified URL)
- "Monetizing Innovation" (Simon-Kucher): https://www.simon-kucher.com/en/book/monetizing-innovation (framework reference)

**Output format:**
- Pricing model recommendation (usage-based vs subscription vs hybrid vs freemium — with rationale)
- Value metric identification (what customers pay for: seats, API calls, revenue processed, records)
- Packaging tiers (Starter / Growth / Enterprise — features, limits, price anchors)
- Competitive pricing table (competitor | model | entry price | mid-tier | enterprise)
- Price sensitivity analysis (willingness-to-pay estimate, price elasticity intuition)

**LATAM context:** LATAM pricing discount to US — 40-60% lower price point typical for same product. BRL/MXN denomination vs USD denomination tradeoff (USD pricing = international signal but higher churn in devaluation events). Annual vs monthly billing conversion — LATAM B2B often requires longer proof period before annual commitment.

**References to create:**
- references/pricing-framework.md — value metric taxonomy, packaging structure, pricing model decision tree
- references/latam-context.md — LATAM price points, currency denomination decision, freemium conversion benchmarks

---

### STRT-13: fundraising-agent (Most Complex)

**Primary framework:** lore.vc "The Fundraising Lore"
- Source: https://www.lore.vc — License: CC BY-NC-SA 4.0 (must attribute in references/lore-vc-framework.md)
- Structure: Preparation phase → Fundraising phase → Closing phase
- CRITICAL: Attribution notice must appear in references/lore-vc-framework.md: "Source: lore.vc 'The Fundraising Lore'. License: CC BY-NC-SA 4.0. Used with attribution."

**Supporting frameworks:**
- NFX Signal investor database: https://signal.nfx.com — investor research, portfolio conflicts check
- Brad Feld "Venture Deals": @shared/frameworks/brad-feld-terms.md (already complete)
- YC fundraising guides: https://www.ycombinator.com/library/4A-how-to-raise-money
- a16z fundraising: https://a16z.com/how-to-raise-money-startup/
- Carta valuation data: benchmarks from extracted PDF

**3-Phase Workflow:**

**Phase A: Preparation (4-6 weeks)**
1. Run /venture-model-validator — confirm VC-backability
2. Run /fundraising-readiness-audit — confirm metrics threshold met
3. Run /pitch-deck-builder — build investor narrative
4. Run /data-room-builder — assemble due diligence materials
5. Run /unit-economics-calculator — confirm unit economics story
6. Build investor target list (D-22 output spec: markdown table → CSV)
7. Map warm intro paths per target investor

**Phase B: Fundraising (8-12 weeks)**
1. Intro request templates (warm intro ask to mutual connections)
2. Cold outreach templates (only after exhausting warm intros)
3. Meeting prep per investor (thesis fit, portfolio conflicts, known deal terms)
4. Follow-up cadence (Day 1 / Day 7 / Day 14 / Day 21 check-in templates)
5. Process management (tracking sheet: investor, stage, next step, deadline)

**Phase C: Closing (2-4 weeks)**
1. Term sheet receipt → run /term-sheet-generator analysis from founder perspective (STRT-13 references VCOP-03 output for understanding)
2. Due diligence management → data room requests coordination
3. Legal close checklist (cap table, SAFE vs priced mechanics)
4. Post-close investor update (announce round, set communication cadence)

**Investor target list output spec (D-22):**
```
| Investor Name | Firm | Stage | Sector | Geography | Check Size | Thesis Fit (1-5) | Portfolio Conflicts | Warm Intro Path |
```

**References to create (3 files per D-20):**
- references/lore-vc-framework.md — 3-phase workflow summary with CC BY-NC-SA 4.0 attribution
- references/investor-research-guide.md — how to use NFX Signal, Crunchbase, LinkedIn to research investors, build target lists, identify portfolio conflicts
- references/outreach-templates.md — warm intro ask template, cold email template, follow-up cadence templates, meeting prep checklist

**Integration points (D-21 — suggest, do not block):**
- "Before Phase A begins: Have you run /venture-model-validator? [Y/N — I can proceed either way but your Preparation will be stronger if you have that scorecard]"
- Same for /fundraising-readiness-audit, /pitch-deck-builder, /data-room-builder, /unit-economics-calculator

---

### VCOP-01: deal-memo-writer (Establishes VC Operator Pattern — D-29)

**Critical disambiguation (D-19):** "For VC FUND OPERATORS writing investment committee memos. NOT for founders evaluating their own startup (use venture-model-validator)."

**Audience (D-23):** GP/partner perspective — decision-maker voice, recommends invest/pass, owns the conviction.

**Primary framework:** a16z deal memo structure
- Source: https://a16z.com/how-a16z-evaluates-startups/ (verified)
- Sections: Company description, market opportunity, product & technology, team, competition, financials, risks, recommendation

**Supporting frameworks:**
- Benchmark Capital: Referenced in "Secrets of Sand Hill Road" (Scott Kupor) — partner meeting structure
- Sequoia investment memo: https://www.sequoiacap.com/article/elements-of-enduring-companies/ (framework alignment)
- @shared/frameworks/yc-metrics.md — for financials section scoring
- @shared/frameworks/vc-backable-test.md — for market opportunity section

**IC Memo structure (standard VC practice):**
1. Executive Summary (1 paragraph — investment thesis + key conviction + recommendation)
2. Company Overview (what it does, stage, metrics snapshot)
3. Market Analysis (TAM/SAM/SOM, market timing, "why now")
4. Product & Technology (differentiation, moat, roadmap)
5. Team Assessment (founder-market fit, team gaps, reference check summary)
6. Financial Analysis (current metrics vs stage benchmarks, unit economics, projection basis)
7. Competitive Landscape (2x2 positioning, key threats)
8. Risk Register (top 3-5 risks with mitigation theses)
9. Investment Recommendation (Invest / Pass / Deferred with conditions, proposed terms)

**LATAM fund context:** IC memos for LATAM-focused funds must address FX risk, regulatory environment per country, and cross-border expansion path. Team section must assess LATAM operator experience specifically — US experience ≠ LATAM operator capability.

**References to create:**
- references/ic-memo-framework.md — IC memo structure, scoring rubric per section, red flag triggers
- references/latam-fund-context.md — LATAM fund-specific considerations (FX, regulation, LP base expectations)

---

### VCOP-02: portfolio-reporter

**Audience (D-24):** Analyst/associate perspective — quantitative, reporting-focused.

**Primary framework:** ILPA Reporting Template
- @shared/frameworks/ilpa-standards.md (fully read — TVPI, DPI, RVPI, IRR, MOIC definitions complete)
- Source: https://ilpa.org/reporting-template/

**Supporting frameworks:**
- Visible.vc LP reporting: https://visible.vc/blog/lp-reporting/ (quarterly report structure)
- Carta analytics: Fund performance benchmarks extracted from Carta Q1-2026 PDF

**Quarterly report structure (ILPA-compliant):**
1. Fund summary (vintage, size, investment period status, capital called %, DPI, TVPI, IRR)
2. Portfolio summary table (company | stage | initial investment | follow-on reserve | current valuation | ownership %)
3. Top performers (3-5 highlights with metric evidence)
4. Watch list (companies requiring attention — with specific risk flags)
5. Distributions & realizations (proceeds received in period)
6. Pacing analysis (dry powder remaining, expected deployment timeline)
7. Market context (brief macro context relevant to portfolio)
8. Next quarter priorities

**Benchmark integration:** Use Carta Q1-2026 benchmarks to contextualize fund-level TVPI/IRR against vintage peers. Label all benchmarks "(US-sourced benchmark, Carta Q1 2026)."

**References to create:**
- references/portfolio-report-template.md — ILPA-compliant quarterly report structure, calculation definitions
- references/latam-fund-context.md — LATAM LP base expectations (family office norms vs institutional ILPA standards)

---

### VCOP-03: term-sheet-generator

**Audience (D-25):** GP drafting + associate reviewing — dual mode.

**Primary framework:** @shared/frameworks/brad-feld-terms.md (fully read — all terms documented)

**Supporting frameworks:**
- NVCA model documents: https://nvca.org/resources/model-legal-documents/ (verified)
- YC SAFE: @shared/frameworks/safe-note.md
- 500 Global KISS: https://500.co/kiss (Keep It Simple Security)
- Brad Feld "Venture Deals" 4th ed: https://www.amazon.com/Venture-Deals-Smarter-Lawyer-Capitalist/dp/1119594820

**Term sheet sections to generate:**
- Economic terms: Valuation (pre/post-money), Option pool (and option pool shuffle implications), Liquidation preference (type + multiple), Anti-dilution (broad-based WA = market standard), Dividends
- Control terms: Board composition, Protective provisions (veto rights list), Drag-along, Pro-rata rights, Information rights
- Administrative terms: Closing conditions, No-shop clause, Expiration

**Negotiation lever format (GP mode):**
For each term: Current draft position | Market standard | Negotiating range | When to give vs. hold

**Term explanation format (associate/founder mode):**
For each term: Plain English explanation | Why investors care | Why founders care | Red flag version of this term

**LATAM fund context:** LATAM-specific term considerations — Brazilian FIDC structures, Mexican CKD/CERPI vehicles, local currency denomination vs USD, simpler governance for first-time LATAM GPs with family office LPs (ILPA-full compliance not always achievable at fund I).

**References to create:**
- references/term-sheet-draft-guide.md — term-by-term negotiation guide, market standards by stage
- references/latam-fund-context.md — LATAM legal structures, simplified governance for emerging managers

---

### VCOP-04: fund-performance-analyzer

**Audience (D-24):** Analyst/associate perspective — quantitative.

**Primary framework:** Carta Q1-2026 Fund Performance Report (PRIMARY — real data)
- Source: `references/carta-fund-performance-q1-2026.pdf` (extracted above)
- License: Carta proprietary data — cite as "Carta Fund Performance Report, Q1 2026"

**Supporting frameworks:**
- Cambridge Associates: https://www.cambridgeassociates.com/insight/venture-capital-benchmark-commentary/ (benchmark methodology)
- Preqin: https://www.preqin.com/ (industry standard for fund performance data)
- Kauffman Foundation: https://www.kauffman.org/wp-content/uploads/2019/12/investment_myths_lies_and_truth_about_vc_kauffman_fellowship.pdf (returns analysis)

**Metrics to calculate and benchmark:**
- TVPI = (Distributions + Remaining Portfolio Value) ÷ Capital Called
- DPI = Total Distributions ÷ Capital Called
- RVPI = Remaining Value ÷ Capital Called (TVPI - DPI)
- Net IRR = internal rate of return after fees and carry
- MOIC = Realized + Unrealized Value ÷ Invested Capital
- PME = Public Market Equivalent (net IRR vs. equivalent index investment)

**Vintage comparison using Carta data (incorporate into references/fund-benchmarks.md):**

| Vintage | Median IRR | 75th Pct IRR | 90th Pct IRR | Median TVPI | 90th Pct TVPI |
|---------|-----------|--------------|--------------|-------------|---------------|
| 2017 | 12.0% | — | — | 1.89× | 4.03× |
| 2018 | 10.2% | — | 35.6% | 1.59× | 4.07× |
| 2019 | 7.4% | — | — | 1.33× | 3.01× |
| 2020 | 4.2% | — | — | — | — |
| 2021 | 1.4% | — | 18.2%+ | slightly >1.0× | — |
| 2022 | 0.7% | 10.9% | ~35% | slightly >1.0× | — |
| 2023 | ~-3% (trending up) | 9.8% | — | — | — |
| 2024 | — | — | 35.7% | — | — |

**Attribution analysis output:** Which positions drove TVPI? DPI vs RVPI split? Reserve allocation remaining? Pacing vs. plan?

**References to create:**
- references/fund-benchmarks.md — Carta IRR/TVPI/DPI table by vintage with interpretation guide, Cambridge Associates benchmark context
- references/latam-fund-context.md — LATAM fund performance note (Carta data is US-only; LATAM emerging manager benchmarks from LAVCA)

---

### VCOP-05: thesis-builder

**Audience (D-23):** GP/partner perspective — senior decision-maker voice.

**Primary framework:** USV (Union Square Ventures) thesis format
- Source: https://www.usv.com/writing/2016/09/usv-thesis/ (public thesis document)
- Structure: Networks → Markets → Infrastructure → Applications layers

**Supporting frameworks:**
- a16z thesis writing: https://a16z.com/our-investment-thesis/ (framework reference)
- Notation Capital: https://notation.vc/ (emerging manager thesis format)
- Lux Capital: https://luxcapital.com/

**Investment thesis document structure:**
1. Core Hypothesis (one paragraph — what do you believe that others don't yet believe?)
2. Market Thesis (structural shifts enabling the opportunity — technology, regulation, demographics)
3. Pattern Matching (what does a fundable company in this thesis look like? Stage, founder profile, metrics)
4. Portfolio Construction (expected portfolio size, check sizes, reserve ratio, ownership targets)
5. Anti-Portfolio Analysis (what types of deals do you systematically NOT do and why?)
6. Thesis Evolution (how has this thesis changed, and what would change it again?)
7. Market Sizing (TAM, Carta/LAVCA sizing for LATAM-specific thesis)

**LATAM fund context:** LATAM-specific thesis elements — sector bets (fintech dominant, SaaS underfunded), geography bets (Brazil/Mexico vs. pan-LATAM), DFI LP implications (IDB Invest, CAF require development impact thesis), family office LP relationship management.

**References to create:**
- references/thesis-framework.md — USV/a16z thesis structure, pattern matching criteria, portfolio construction models
- references/latam-fund-context.md — LATAM structural shifts (financial inclusion, infrastructure gaps, regulatory tailwinds/headwinds)

---

## Common Pitfalls

### Pitfall 1: Cross-Activation Without Audience Framing
**What goes wrong:** With 18 skills installed, a query like "analyze this deal" could trigger venture-model-validator (founder), deal-memo-writer (VC operator), or fundraising-readiness-audit depending on Claude's interpretation.
**Why it happens:** Overlapping vocabulary between startup and VC operator domains.
**How to avoid:** Every skill description MUST begin with "For STARTUP FOUNDERS" or "For VC FUND OPERATORS (not startup founders)". This is D-17 and is the first line of defense.
**Warning signs:** During activation testing (5-phrasing test), if any cross-trigger occurs between startup and VC operator skills, the description needs stronger audience framing.

### Pitfall 2: VC Operator TEMPLATES.md Using Startup Format
**What goes wrong:** Planner defaults to copying startup TEMPLATES.md structure for VC operator skills, producing a template that looks like a founder output.
**Why it happens:** Phase 1 established startup as the anchor pattern; VC operator is new.
**How to avoid:** VC operator TEMPLATES.md must use a fund-level example. Recommended: "Hypothetical: Cóndor Ventures Fund I, $25M committed, 2022 vintage, Brazil/Mexico focus." All 5 VC operator skills use this same fictional fund for consistency.
**Warning signs:** A TEMPLATES.md that refers to "your startup" rather than "your portfolio company" or "your fund."

### Pitfall 3: Carta Benchmarks Without US Attribution
**What goes wrong:** fund-performance-analyzer presents Carta IRR/TVPI benchmarks as global standards without noting these are US-only.
**Why it happens:** The data is real and authoritative — easy to present as universal.
**How to avoid:** Label all Carta benchmarks "(US-sourced benchmark, Carta Q1 2026)" and add LATAM fund context: "No equivalent public LATAM fund performance database exists at this scale. LAVCA tracks headline data; Preqin has limited LATAM coverage. LATAM fund performance is generally 30-50% below US equivalents at same vintage due to longer exit timelines and thinner secondary markets."
**Warning signs:** Carta figures presented without geographic qualifier.

### Pitfall 4: lore.vc Attribution Missing from fundraising-agent
**What goes wrong:** The 3-phase fundraising workflow is documented in references/lore-vc-framework.md without the CC BY-NC-SA 4.0 license notice.
**Why it happens:** Easy to forget license requirements when writing content-focused reference files.
**How to avoid:** The FIRST line of references/lore-vc-framework.md must be: "Source: lore.vc 'The Fundraising Lore'. License: CC BY-NC-SA 4.0 (Attribution-NonCommercial-ShareAlike). Used with attribution. Non-commercial use only."
**Warning signs:** The word "lore.vc" appears in skill output without the license tag.

### Pitfall 5: fundraising-agent Blocking on Phase 1 Skill Integration
**What goes wrong:** fundraising-agent's workflow says "You must run /venture-model-validator before proceeding" — making it a hard dependency that blocks users who haven't run the other skills.
**Why it happens:** It seems natural to enforce the pipeline.
**How to avoid:** D-21 is explicit — integration is suggestion-only: "Have you run /venture-model-validator? [Y/N — you can proceed either way, but your investor conversations will be stronger with that scorecard completed]." The agent proceeds regardless.
**Warning signs:** Any workflow step that says "must," "required," or "cannot proceed until" referring to another skill.

### Pitfall 6: Missing LATAM Fund Context in VC Operator Skills
**What goes wrong:** VC operator skills are written entirely from a US fund perspective — US term standards, US LP base expectations, US legal structures.
**Why it happens:** All authoritative VC frameworks (ILPA, NVCA, Brad Feld) are US-centric.
**How to avoid:** Every VC operator skill needs a references/latam-fund-context.md file that addresses: (a) LATAM LP base (family office dominance vs institutional), (b) local legal structures (CKD, FIDC, BEI), (c) smaller fund sizes ($10M-$50M first funds common in LATAM vs US $25M-$150M), (d) exit environment (thinner M&A, minimal IPO activity outside Brazil).
**Warning signs:** A VC operator skill with no mention of family office LPs, local currency structures, or LATAM exit data.

### Pitfall 7: SKILL.md Line Count Bloat for fundraising-agent
**What goes wrong:** fundraising-agent is the most complex skill — the 3-phase workflow description, investor research guide, and outreach templates all try to fit in SKILL.md, exceeding 500 lines.
**Why it happens:** Complex workflows invite inline documentation.
**How to avoid:** D-20 is explicit — SKILL.md body covers ONLY the workflow orchestration (Phase labels, integration prompts, branching logic). Full framework detail goes in the 3 reference files. Test line count before finalizing.
**Warning signs:** SKILL.md for fundraising-agent exceeds 400 lines — review for content that belongs in references/.

---

## Code Examples

These are SKILL.md authoring patterns, not software code.

### Canonical Description Pattern (Phase 2 — D-17)

For startup skills:
```yaml
description: >
  For STARTUP FOUNDERS. [Domain action phrase]. ALWAYS invoke when a user asks
  to [primary use case 1], [primary use case 2], or [primary use case 3]. NOT
  for [closest sibling skill action] (use [sibling-skill-name]).
```

For VC operator skills:
```yaml
description: >
  For VC FUND OPERATORS (not startup founders). [Domain action phrase].
  ALWAYS invoke when a [GP/analyst/associate] asks to [primary use case].
  NOT for [closest sibling startup skill] (use [startup-skill-name] for founders).
```

### deal-memo-writer Description (implements D-19)

```yaml
description: >
  For VC FUND OPERATORS writing investment committee memos. ALWAYS invoke when
  a GP or analyst needs to write an IC memo, evaluate a deal for committee, or
  document an investment recommendation. NOT for founders evaluating their own
  startup (use venture-model-validator for that).
```

### fundraising-agent Phase Integration Prompt (implements D-21 — suggestion only)

```markdown
## Integration Check (Optional but Recommended)

Before starting the Preparation phase, the following Phase 1 skills produce
inputs that strengthen your fundraising process:

- /venture-model-validator — confirms VC-backability (investors will ask the same questions)
- /fundraising-readiness-audit — validates you hit stage-appropriate metrics threshold
- /pitch-deck-builder — builds your investor narrative (needed for Phase A.3)
- /data-room-builder — assembles due diligence materials (needed for Phase A.4)
- /unit-economics-calculator — confirms your unit economics story (investors audit this)

Have you run any of these? [Enter which ones, or 'none' to proceed without them]
Either way, I'll proceed — but your investor conversations will be stronger with
these outputs in hand.
```

### LATAM Fund Context Annotation Pattern (for VC operator skills)

```markdown
**Fund size benchmark:**
- US median first fund: $50M *(US-sourced benchmark, Carta Q1 2026)*
- LATAM first fund typical: $5M–$25M *(LATAM, LAVCA 2025)* — LATAM discount reflects
  smaller LP base and shorter GP track records in region
```

### Cóndor Ventures Hypothetical (VC operator TEMPLATES.md baseline)

```
Hypothetical fund for TEMPLATES.md examples:
- Name: Cóndor Ventures Fund I
- Size: $25M committed capital
- Vintage: 2022
- Focus: Brazil/Mexico, B2B SaaS, Seed and Series A
- GP team: 2 partners, 1 analyst
- Investment period: 3 years (2022-2025)
- LP base: 4 family offices (Brazil x2, Mexico x2), 1 DFI (IDB Invest)
- Portfolio: 12 companies, $1.5M avg check, 3-4 follow-on reserves held
- Fund age: Year 3 of 10-year life
- TVPI to date: 1.15× (early J-curve, consistent with 2022 vintage median)
```

---

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| DocSend deck data at <10K decks | DocSend 200K+ deck analysis with per-slide attention heatmaps | 2022 onward | Enables statistically grounded per-slide feedback in deck-reviewer |
| Carta fund data self-reported | Carta fund data from 2,906 live funds on platform | 2023+ | Real IRR/TVPI/DPI benchmarks replace Cambridge Associates as primary VC fund benchmark source |
| Manual term sheet negotiation | NVCA model documents as starting point | ~2005 onward, updated annually | term-sheet-generator should reference NVCA models as baseline, not start from scratch |
| lore.vc framework as blog posts | lore.vc as structured 3-phase system | 2021-2023 | fundraising-agent can use the 3-phase structure as workflow scaffold |
| US VC benchmarks applied to LATAM | LAVCA 2025 + Cuantico 2026 LATAM-specific data | 2025 | All startup skills have LATAM annotations; VC operator skills need LATAM fund context equally |

**Deprecated/outdated:**
- Cambridge Associates as primary benchmark source: Still valid methodology, but Carta Q1-2026 provides more granular, current, and accessible data for the IRR/TVPI/DPI tables that fund-performance-analyzer needs. Reference Cambridge for methodology, Carta for actual numbers.
- Seed-to-Series A graduation rate from 2021 boom: Do not use 2021 graduation rates as benchmark — 2024 rates (20.6% in 6 quarters) are the current reference after the market reset.

---

## Open Questions

1. **lore.vc framework current content**
   - What we know: lore.vc covers a 3-phase fundraising framework (Preparation → Fundraising → Closing) under CC BY-NC-SA 4.0
   - What's unclear: Exact current content structure — the framework may have been updated since the CONTEXT.md was written. Before authoring references/lore-vc-framework.md, the implementer should visit lore.vc and verify current chapter structure.
   - Recommendation: Assign a web-fetch task to read lore.vc during plan execution and document current framework structure before writing the reference file.

2. **DocSend exact report URL for deck-reviewer**
   - What we know: DocSend publishes annual pitch deck data analysis; the report analyzes 200K+ decks
   - What's unclear: The exact current report URL (DocSend repackages these by year)
   - Recommendation: Include a note in deck-reviewer references/deck-evaluation-rubric.md to verify the URL is current during authoring. Fallback: general https://www.docsend.com/index/pitch-decks/

3. **LATAM fund performance benchmark gap**
   - What we know: Carta data is US-only; LAVCA tracks headline LATAM data but not per-percentile fund performance
   - What's unclear: Whether any LATAM-specific fund benchmark database is publicly available (e.g., LAVCA private data, ACON, or Kaszek self-reported performance)
   - Recommendation: Document the gap explicitly in VCOP-04 (fund-performance-analyzer) as a known limitation. LATAM fund performance is a real data gap — acknowledging it is more honest than presenting US benchmarks as global.

4. **suites/vc-operators/ directory pattern for install.sh and validate.sh**
   - What we know: install.sh and validate.sh use glob patterns that pick up new suite directories automatically
   - What's unclear: Whether the glob pattern in install.sh is `suites/*/` or `suites/startups/` specifically
   - Recommendation: Verify install.sh glob before creating vc-operators skills. If it's `suites/startups/` specifically, it needs to be updated to `suites/*/`.

---

## Environment Availability

Step 2.6: SKIPPED (no external dependencies identified — this phase produces markdown skill files only, no code execution, no external services required)

---

## Validation Architecture

Step 2.4 skipped per absence of workflow.nyquist_validation in .planning/config.json (no config.json found in lan-skills project). Skills are validated via validate.sh (structural) and the 5-phrasing activation test protocol (behavioral), not automated unit tests.

**Structural validation (existing):**
- `./validate.sh` — YAML frontmatter checks (name, description, line count)
- Run after each skill is authored; must show all PASS before plan completion

**Behavioral validation (per D-08):**
- 5 natural-language phrasings per skill
- Test cross-triggering with closest sibling
- Document results and confirm correct activation

---

## Sources

### Primary (HIGH confidence)

- `/Users/isaacgbc/lan-skills/suites/startups/venture-model-validator/SKILL.md` — canonical SKILL.md body structure, 8-section pattern
- `/Users/isaacgbc/lan-skills/suites/startups/go-to-market-strategist/SKILL.md` — WhatsApp pattern, LATAM GTM, 7-question input gathering
- `/Users/isaacgbc/lan-skills/shared/frameworks/brad-feld-terms.md` — complete term sheet taxonomy for term-sheet-generator
- `/Users/isaacgbc/lan-skills/shared/frameworks/ilpa-standards.md` — complete ILPA metrics, TVPI/DPI/RVPI definitions, LP reporting standards
- `/Users/isaacgbc/lan-skills/shared/frameworks/yc-metrics.md` — SaaS/marketplace/fintech/e-commerce metrics with LATAM annotations
- `/Users/isaacgbc/lan-skills/shared/frameworks/latam-benchmarks.md` — LAVCA 2025 + Cuantico 2026 data (fund volumes, stage benchmarks, sector mix)
- `/Users/isaacgbc/lan-skills/docs/how-to-create-skills.md` — contributor guide with all authoring rules and anti-patterns
- `/Users/isaacgbc/lan-skills/.planning/phases/02-startup-expansion-vc-operators/02-CONTEXT.md` — all locked decisions D-17 through D-29
- `/Users/isaacgbc/lan-skills/references/carta-fund-performance-q1-2026.pdf` — extracted IRR/TVPI/DPI benchmarks by vintage (2,906 US funds, Q4 2025 data)

### Secondary (MEDIUM confidence — verified URLs)

- David Skok SaaS Metrics 2.0: https://www.forentrepreneurs.com/saas-metrics-2/
- DocSend pitch deck analysis: https://www.docsend.com/index/pitch-decks/
- NFX pitch teardowns: https://www.nfx.com/post/what-makes-a-great-pitch-deck
- YC "How to Raise Money": https://www.ycombinator.com/library/4A-how-to-raise-money
- Aaron Ross "Predictable Revenue": https://predictablerevenue.com/book/
- Patrick Campbell / ProfitWell: https://www.profitwell.com/recur/all/saas-pricing
- OpenView SaaS Benchmarks: https://openviewpartners.com/saas-benchmarks-report/
- Sequoia pricing: https://www.sequoiacap.com/article/pricing-your-product/
- Eric Ries "The Lean Startup": http://theleanstartup.com/
- NVCA model documents: https://nvca.org/resources/model-legal-documents/
- USV investment thesis: https://www.usv.com/writing/2016/09/usv-thesis/
- lore.vc "The Fundraising Lore" (CC BY-NC-SA 4.0): https://www.lore.vc
- a16z deal memo / competitive: https://a16z.com/how-a16z-evaluates-startups/
- Visible.vc LP reporting: https://visible.vc/blog/lp-reporting/
- ILPA Reporting Template: https://ilpa.org/reporting-template/

### Tertiary (LOW confidence — training data only, verify during authoring)

- "The Challenger Sale" current URL: https://www.challengerinc.com/the-challenger-sale/ (verify)
- Gong.io research lab current URL: https://www.gong.io/resources/labs/ (verify — Gong.io has reorganized content)
- Cambridge Associates VC benchmark: https://www.cambridgeassociates.com/insight/venture-capital-benchmark-commentary/ (verify access level — may require registration)
- Notation Capital thesis: https://notation.vc/ (verify — small fund, website may have changed)
- "Monetizing Innovation" Simon-Kucher: https://www.simon-kucher.com/en/book/monetizing-innovation (verify current URL)

---

## Metadata

**Confidence breakdown:**
- Authoring pattern: HIGH — Phase 1 pattern is fully documented and tested; venture-model-validator is the canonical reference
- Startup skill frameworks: HIGH — David Skok, YC, a16z, lore.vc all verified sources with accessible URLs
- VC operator frameworks: HIGH — ILPA and Brad Feld taxonomy fully read from shared/frameworks/; Carta data extracted directly from PDF
- Fund benchmarks (Carta): HIGH — data extracted directly from PDF, specific numbers documented
- LATAM fund context: MEDIUM — LAVCA data covers headline metrics; per-fund LATAM benchmarks do not exist publicly
- Cross-activation disambiguation: HIGH — rules are locked in D-17 through D-19, patterns documented

**Research date:** 2026-04-05
**Valid until:** 2026-07-05 (stable content — skill authoring patterns and frameworks change slowly; re-verify lore.vc framework content before authoring fundraising-agent)
