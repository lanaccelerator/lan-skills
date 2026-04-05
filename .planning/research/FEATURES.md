# Feature Research

**Domain:** VC/Startup AI Skills Suite (Claude Code Skills format)
**Researched:** 2026-04-04
**Confidence:** HIGH (ecosystem survey) / MEDIUM (competitor gap analysis)

---

## Executive Context

This research covers the feature landscape for 26 Claude Code Skills organized into 4 suites:
LP/Angel (5), Corporate (4), Startup (12), VC Operator (5). The differentiation claim is
"execution-focused skills grounded in authoritative bibliography" vs the dominant paradigm of
"roleplay-based VC personas" (vc-skills, VC Investor Analyst). This analysis maps what exists,
what's missing, and what each suite must include to be genuinely useful.

---

## Competitive Landscape

### Existing Products

| Product | What It Does | Gap |
|---------|-------------|-----|
| **vc-skills** (28 personalities) | Simulates VC investor personas (Sequoia, a16z, YC, etc.) for pitch evaluation. Scorecard + concerns + Benchmark Mode aggregating across VCs. | Roleplay only — no generated outputs. No LP/corporate/operator suite. No bibliography. Pitch feedback, not execution. |
| **VC Investor Analyst** (mcpmarket.com) | Startup analysis → VC scoring (0-100) → personalized outreach emails. Portfolio conflict detection. Batch investor analysis. | Outreach tool only. No deal memo, no financial model, no suite breadth. |
| **VC SkillPack** ($199, vc-skillpack.vercel.app) | 10 markdown skills: readiness assessor, pitch deck builder, financial model, term sheet decoder, investor update writer, pitch coach, valuation justifier, investor targeting, due diligence prep. Fundraising focus only. | Founder-only (no investor/corporate/LP suite). No LATAM context. No bibliography rigor. Paid. |
| **SaaS Financial Projections skill** | Revenue models, 3-scenario projections, exit valuations, SaaS benchmarks. | Finance tool only, not a full suite. |
| **Wondelai Strategy Skills** | Jobs to Be Done, StoryBrand, Hook Model, Scorecard Marketing with scoring systems. | Marketing/product only. Not VC-domain-specific. |
| **Affinity, Harmonic, Standard Metrics** | Professional CRM/sourcing tools for VC operators. Deal sourcing, relationship tracking, portfolio reporting. | Not AI skills — enterprise SaaS. $$$. Not accessible to LATAM ecosystem. |
| **V7 Labs LPA Analysis** | AI-powered LPA/term sheet extraction, comparison matrix, traffic-light analysis. | Enterprise SaaS, not a portable skill. LP-focus only. |

### The Gap

No product currently offers:
1. A full ecosystem suite covering all 4 roles (LP, Corporate, Startup, VC Operator)
2. Execution-focused outputs (decks, memos, scorecards) not just chat/roleplay
3. LATAM/emerging market context built in
4. Bibliography-grounded frameworks (ILPA, YC, Sequoia, Kauffman, Brad Feld)
5. Free, portable Claude Code Skill format (no SaaS subscription)

---

## Feature Landscape

### Table Stakes (Users Expect These)

Features without which a skill feels broken or useless.

| Feature | Why Expected | Complexity | Notes |
|---------|--------------|------------|-------|
| Structured output format | Users need copy-pasteable outputs (tables, scorecards, memos) not prose | LOW | Every skill must produce structured markdown output |
| Input gathering flow | Skills must ask for missing inputs before generating | LOW | Brief onboarding questions per skill |
| Stage-appropriate framing | Pre-seed vs Series A advice is completely different | MEDIUM | Each skill must branch on stage input |
| Specific numbers and benchmarks | "A healthy LTV:CAC is 3:1" not "LTV:CAC should be good" | LOW | Every skill embeds current benchmarks from authoritative sources |
| Actionable next steps | Output must end with concrete actions, not just analysis | LOW | "What to do next" section in every skill |
| Error/red flag calling | Must call out what's wrong, not just affirm | LOW | Explicit red flag detection in evaluation skills |
| Framework citation | Users expect to know WHICH framework is being applied | LOW | Bibliography citation in each skill output |
| Plain language explanations | VC jargon explained for LATAM founders who may be new | MEDIUM | Glossary inline or explanatory asides |

### Differentiators (Competitive Advantage)

Features that separate LAN Skills from vc-skills, VC SkillPack, and generic AI advice.

| Feature | Value Proposition | Complexity | Notes |
|---------|-------------------|------------|-------|
| Execution outputs, not roleplay | Skills GENERATE: decks, memos, scorecards, models — not simulate investor personalities | HIGH | Core differentiator. Requires rich templates per skill. |
| LATAM/emerging market context | LATAM VCs (Kaszek, SoftBank LatAm, ALLVP) benchmarks, regional market sizing patterns, Spanish-English bilingual output labels | MEDIUM | Built into each skill's context, not an add-on |
| Bibliography-grounded frameworks | Each skill cites: Kauffman (LP), ILPA (fund terms), YC/Sequoia (startups), Brad Feld (term sheets), Harvard/MIT (corporate innovation) | MEDIUM | Source block at end of each skill |
| Cross-suite coherence | LP analyzing a fund sees the same deal memo VC Operator would write. Consistent frameworks across roles. | HIGH | Requires shared vocabulary and schema across all 26 skills |
| Data room generation | Actual file/folder structure + template documents, not just a list | HIGH | Differentiates from pure advisory tools |
| Scoring with reasoning | Every scorecard includes WHY each factor is scored a certain way, not just a number | MEDIUM | Prevents "black box" scores that feel arbitrary |
| LAN OS integration hook | Skills connect to startup's actual data (KPIs, decks) in LAN OS platform for program companies | HIGH | Unique to the LAN ecosystem |
| Free, open, installable | `install.sh` one-command install. No subscription. Portable across any Claude Code environment. | LOW | Direct counter to $199 VC SkillPack |

### Anti-Features (Commonly Requested, Often Problematic)

| Feature | Why Requested | Why Problematic | Alternative |
|---------|---------------|-----------------|-------------|
| Roleplay VC personality mode | vc-skills has it, users know it | Roleplay ≠ execution. Simulating Marc Andreessen teaches habits, not outputs. Produces entertaining responses, not investor-ready documents. | Skills evaluate against named frameworks (Sequoia's pitch structure) without pretending to BE Sequoia |
| Real-time market data fetching | Founders want live comps | Claude skills can't reliably fetch live data. Hallucinated market data is worse than no data. Post-mortems show "never ask AI to generate market data — it invents false statistics." | Ask user to paste their own data sources; skill interprets them |
| Fully automated funding strategy | "Find me the right VCs" end-to-end | Portfolio conflict detection, warm intro mapping, and CRM data require external integrations Claude Code skills can't access | VC Investor Analyst covers this separately; keep it out of LAN Skills scope |
| Collaboration mode | Multiple founders editing outputs together | Real-time collaboration requires backend infrastructure. Out of scope per PROJECT.md. Single-user skills are simpler and more reliable. | Export outputs to shared doc (Notion, Google Docs) |
| Premium tier / paywalled skills | Monetization request | Violates LAN's "all skills free for LAN ecosystem" decision. Fragments user experience. Creates support burden. | All 26 skills free; monetization through LAN OS subscriptions |
| Generic templates without context | "Just give me a pitch deck template" | Users can Google generic templates. Value comes from framework-application to THEIR specific startup, not blank templates. | Every skill asks for context before generating anything |
| 50-metric KPI dashboards | "Track everything" | Vanity metrics obscure signal. YC and Sequoia both recommend tracking 5-7 core metrics. More metrics = more noise. | KPI Automator generates the 6-8 metrics that matter for their business model |

---

## Suite-by-Suite Feature Breakdown

### Suite 1: LP & Angel Investors (5 Skills)

**What users expect at minimum:**
Users in this suite are allocators — they evaluate deals, not build them. They need analysis tools, not builder tools.

| Skill | Table Stakes Features | Differentiating Features | Complexity |
|-------|----------------------|--------------------------|------------|
| **angel-investment-analyzer** | Investment criteria checklist, red flag detection, scoring across standard criteria (team, market, traction, model) | Berkus + Scorecard method integration, comparable deals, LATAM-specific benchmarks (Kaszek investment criteria), power law return modeling | MEDIUM |
| **vc-fund-due-diligence** | GP track record analysis template, fee structure breakdown, portfolio construction review | ILPA standards integration, DPI/TVPI/IRR calculation framework, strategy drift detection, J-curve modeling | HIGH |
| **portfolio-construction-advisor** | Check size calculator, diversification model, reserve strategy | Power law return simulation, vintage year analysis, deploy-pace recommendations, LP capital planning | HIGH |
| **lp-term-sheet-analyzer** | Key term extraction (mgmt fee, carry, preferred return), red flag flagging | ILPA model LPA benchmarking, carry structure comparison (American vs European waterfall), clawback risk assessment, GP commit verification | HIGH |
| **startup-valuation-checker** | Multi-method valuation (Berkus, Scorecard, DCF, revenue multiples) | Stage-gated method selection, AI multiple context (23.4x avg in 2025 vs traditional SaaS), LATAM regional discount/premium factors, comparable exit analysis | HIGH |

**Suite 1 gaps vs existing products:**
VC SkillPack has "Valuation Justifier" (founder-facing, not investor-facing). No competitor has ILPA-grounded LP term analysis or portfolio construction for angels. This suite is largely unaddressed.

---

### Suite 2: Corporates (4 Skills)

**What users expect at minimum:**
Corporate innovation officers and CVC teams. They need structured evaluation frameworks and program design tools.

| Skill | Table Stakes Features | Differentiating Features | Complexity |
|-------|----------------------|--------------------------|------------|
| **open-innovation-scanner** | Opportunity mapping template, innovation challenge framing, startup ecosystem scan methodology | MIT/Harvard corporate innovation frameworks, Tenity Venture Mindset stages (Discovery → Exploration → Experimentation → Evaluation), ITONICS-style trend integration | HIGH |
| **startup-solution-matcher** | Shortlist generation criteria, integration complexity scoring, pricing model analysis | Technology readiness level (TRL) framework, build/buy/partner decision matrix, corporate due diligence checklist for startup vendors | MEDIUM |
| **corporate-venture-evaluator** | Strategic fit scoring, financial return modeling, organizational readiness assessment | CVC vs accelerator vs acqui-hire decision framework, minority vs majority stake analysis, portfolio cannibalization detection | HIGH |
| **pilot-program-designer** | Pilot objectives, KPI framework, timeline with stages, budget template | Kill criteria (go/no-go decision gates), co-creation vs vendor model distinction, legal/IP considerations for corporate-startup pilots, success escalation path (PoC → Pilot → Scale) | HIGH |

**Suite 2 gaps vs existing products:**
Zero competitors have a corporate innovation suite in Claude Code skill format. This is entirely unaddressed by vc-skills, VC Investor Analyst, and VC SkillPack.

---

### Suite 3: Startups (12 Skills)

**What users expect at minimum:**
This is the most competitive space. Gamma, Slidebean, PitchBob, VC SkillPack all play here. Users expect professional outputs that match or exceed what they'd get from paid tools.

| Skill | Table Stakes Features | Differentiating Features | Complexity |
|-------|----------------------|--------------------------|------------|
| **pitch-deck-builder** | Slide-by-slide structure (Sequoia 10 slides), content guidance, data requirements per slide | Sequoia template integration, per-slide scoring against investor expectations, "dead slide" detection, LATAM-specific investor narrative patterns | HIGH |
| **deck-reviewer** | Per-slide feedback (clarity, data, storytelling) | Benchmark against real funded decks, VCs' stated pet peeves (cited sources), design vs content separation, stage-appropriate critique | HIGH |
| **go-to-market-strategist** | Channel strategy matrix, acquisition plan, 90-day execution plan | Channel selection scoring (B2B vs B2C vs B2G in LATAM), ICP definition workshop, unit economics per channel, go-to-market motion (PLG vs SLG vs CLG) | HIGH |
| **unit-economics-calculator** | CAC, LTV, LTV:CAC, payback period calculation | Stage-gated benchmarks (Series A: 3:1+, Seed: 2:1+), contribution margin by segment, SaaS vs marketplace vs transactional variants, AI startup cost model (usage-based margins) | MEDIUM |
| **fundraising-readiness-audit** | Stage-appropriate metrics checklist (Pre-seed/Seed/A/B), data room completeness, narrative gaps | Investor-perspective scoring (not founder-perspective), "ghost decks" detection (missing slides), LATAM VC specific asks (team pedigree, market size validation) | HIGH |
| **data-room-builder** | Standard folder structure, document checklist | Auto-generated base documents (NDA template, cap table template, financial summary), investor-facing vs advisor-facing room variants, due diligence request list generator | HIGH |
| **competitive-landscape-mapper** | 2x2 positioning map, competitor profiles, differentiation matrix | Axis selection workshop (the hardest part), "blue ocean" gap identification, "sea of sameness" escape framework, moat analysis (network effects, switching costs, data) | MEDIUM |
| **rapid-mvp-builder** | MoSCoW feature prioritization, tech stack recommendation, launch checklist | AI-native vs traditional stack decision (Claude Code, no-code tools), 30-day sprint plan, hypothesis-to-metric mapping, "modular monolith first" architecture guidance | MEDIUM |
| **sales-playbook-generator** | Prospecting framework, email sequences, objection handling map | ICP-specific qualification criteria (BANT/MEDDIC/CHAMP selector), LATAM B2B sales motion specifics (relationship vs transactional culture), demo script structure, trigger event playbook | HIGH |
| **pricing-strategy-designer** | Value metric identification, packaging tiers, competitive pricing analysis | Usage-based vs per-seat vs outcome-based decision tree (AI-era pricing models), freemium vs reverse trial analysis, LATAM price sensitivity factors, willingness-to-pay estimation | MEDIUM |
| **venture-model-validator** | VC-backable scorecard (market size, team, model, moat, timing), comparables | Sequoia/Benchmark/YC investment criteria integration, "default alive" vs "default dead" cash flow analysis, fund return math (what outcome you need for VC to care) | HIGH |
| **startup-kpi-automator** | KPI system by business model type (SaaS/marketplace/transactional/AI), dashboard structure | YC Startup School core metrics integration, investor update template generator, growth rate benchmarks by stage/sector, "north star metric" identification workshop | MEDIUM |

**Suite 3 gaps vs existing products:**
VC SkillPack covers 6 of these 12 (partially). Key gaps in ALL competitors: competitive landscape mapper, rapid-mvp-builder, sales-playbook, pricing-strategy. The unit-economics-calculator is partially covered by the SaaS Financial Projections skill but lacks VC-backability framing. The venture-model-validator is the most unique skill — no competitor tells founders whether their business is fundable and WHY.

---

### Suite 4: VC Operators (5 Skills)

**What users expect at minimum:**
Working VC analysts, associates, and partners. They need professional-grade outputs that they could actually send to LPs or use in IC meetings.

| Skill | Table Stakes Features | Differentiating Features | Complexity |
|-------|----------------------|--------------------------|------------|
| **deal-memo-writer** | Standard sections (exec summary, market, team, business model, risks, recommendation), IC-ready format | Flybridge-style memo structure, VC-perspective risk analysis (not founder-perspective), comparable deal analysis, investment thesis alignment check | HIGH |
| **portfolio-reporter** | Quarterly update template, portfolio company performance, follow-on analysis | DPI/TVPI/IRR at portfolio level, green/yellow/red status per company, LP-facing narrative vs IC-facing detail distinction, attribution analysis | HIGH |
| **term-sheet-generator** | Market standard terms (pre-money, pro-rata, board, information rights), term explanations | Brad Feld "Venture Deals" framework integration, negotiation leverage matrix (which terms matter vs standard), LATAM market standard variants (Brazilian vs Mexican VC norms), clean vs dirty term comparison | HIGH |
| **fund-performance-analyzer** | TVPI, DPI, IRR, RVPI calculation, vintage comparison | PME (Public Market Equivalent) calculation, J-curve visualization instructions, attribution (by sector, stage, vintage), LP benchmark comparison (Kauffman quartile data) | HIGH |
| **thesis-builder** | Thesis document structure, market sizing framework, investment criteria | "Variant perception" test (is this differentiated from consensus?), anti-portfolio analysis, pattern matching from existing portfolio, LP pitch integration (how thesis → fund marketing) | HIGH |

**Suite 4 gaps vs existing products:**
VC Investor Analyst covers investor outreach (not in scope here). Decile Hub covers deal memos and LP outreach as SaaS products. No skill format competitor has any of these 5 tools. This suite is entirely unaddressed in the Claude Code ecosystem.

---

## Feature Dependencies

```
venture-model-validator
    └──informs──> pitch-deck-builder
                      └──reviews──> deck-reviewer

unit-economics-calculator
    └──feeds──> fundraising-readiness-audit
                    └──generates──> data-room-builder

startup-kpi-automator
    └──feeds──> portfolio-reporter (VC side)
                    └──feeds──> fund-performance-analyzer

go-to-market-strategist
    └──informs──> sales-playbook-generator
                      └──requires──> competitive-landscape-mapper

angel-investment-analyzer ──LP side of──> venture-model-validator (startup side)

deal-memo-writer ──references──> pitch-deck-builder output (startup side)

term-sheet-generator ──references──> lp-term-sheet-analyzer (LP analysis)
                          └──informs──> fundraising-readiness-audit (founder prep)

thesis-builder ──constrains──> deal-memo-writer (thesis alignment check)

corporate-venture-evaluator ──feeds──> pilot-program-designer
open-innovation-scanner ──feeds──> startup-solution-matcher
```

### Dependency Notes

- **venture-model-validator before pitch-deck-builder:** You cannot build a fundable pitch without first knowing if the model is VC-backable. Validator surfaces the gaps that pitch-deck-builder then addresses.
- **unit-economics-calculator before fundraising-readiness-audit:** Most fundraising readiness failures trace to unclear unit economics. Calculator must run first.
- **competitive-landscape-mapper before sales-playbook:** ICP targeting in the sales playbook depends on competitive positioning clarity.
- **thesis-builder before deal-memo-writer:** Deal memos in Suite 4 must evaluate against an articulated thesis. Memos without thesis alignment are weak.
- **angel-investment-analyzer and venture-model-validator are mirrors:** One from the investor's perspective, one from the founder's. They should use consistent scoring criteria.

---

## MVP Definition

### Launch With (v1) — 5 Startup Skills

Per PROJECT.md, start with the 5 highest-impact startup skills.

- [ ] **venture-model-validator** — No competitor has this. Highest-leverage first question for any founder.
- [ ] **pitch-deck-builder** — Highest volume use case. Validates skill format for complex output generation.
- [ ] **go-to-market-strategist** — Critical gap: founders have decks but no GTM plan. Differentiator vs VC SkillPack.
- [ ] **startup-kpi-automator** — Connects to LAN OS data for program companies. Shows integration value.
- [ ] **data-room-builder** — Generates actual documents, not just advice. Showcases execution > roleplay.

### Add After Validation (v1.x) — Remaining Startup Skills

- [ ] **unit-economics-calculator** — Trigger: users ask about metrics after using venture-model-validator
- [ ] **fundraising-readiness-audit** — Trigger: users prepare for fundraising after GTM validation
- [ ] **deck-reviewer** — Trigger: users want feedback on decks they've built or iterated
- [ ] **competitive-landscape-mapper** — Trigger: GTM users need competitive positioning
- [ ] **sales-playbook-generator** — Trigger: post-GTM, users need execution tools
- [ ] **pricing-strategy-designer** — Trigger: unit economics users need pricing decisions
- [ ] **rapid-mvp-builder** — Trigger: pre-product users who need to build before fundraising

### Full Suite Expansion (v2) — All 4 Suites

- [ ] **Suite 4: VC Operators** (deal-memo-writer, portfolio-reporter, term-sheet-generator, fund-performance-analyzer, thesis-builder) — Trigger: LAN team starts using skills for their own deals
- [ ] **Suite 1: LP & Angel** (angel-investment-analyzer, vc-fund-due-diligence, portfolio-construction-advisor, lp-term-sheet-analyzer, startup-valuation-checker) — Trigger: LAN LP network requests access
- [ ] **Suite 2: Corporates** (open-innovation-scanner, startup-solution-matcher, corporate-venture-evaluator, pilot-program-designer) — Trigger: LAN corporate partnership development

---

## Feature Prioritization Matrix

| Skill | User Value | Implementation Cost | Priority |
|-------|------------|---------------------|----------|
| venture-model-validator | HIGH | HIGH | P1 |
| pitch-deck-builder | HIGH | HIGH | P1 |
| go-to-market-strategist | HIGH | HIGH | P1 |
| startup-kpi-automator | HIGH | MEDIUM | P1 |
| data-room-builder | HIGH | HIGH | P1 |
| unit-economics-calculator | HIGH | MEDIUM | P2 |
| fundraising-readiness-audit | HIGH | MEDIUM | P2 |
| deck-reviewer | MEDIUM | MEDIUM | P2 |
| deal-memo-writer | HIGH | HIGH | P2 |
| competitive-landscape-mapper | MEDIUM | MEDIUM | P2 |
| sales-playbook-generator | MEDIUM | HIGH | P2 |
| pricing-strategy-designer | MEDIUM | MEDIUM | P2 |
| rapid-mvp-builder | MEDIUM | MEDIUM | P2 |
| angel-investment-analyzer | HIGH | HIGH | P2 |
| lp-term-sheet-analyzer | HIGH | HIGH | P2 |
| thesis-builder | HIGH | HIGH | P2 |
| term-sheet-generator | HIGH | HIGH | P2 |
| fund-performance-analyzer | HIGH | HIGH | P2 |
| startup-valuation-checker | MEDIUM | HIGH | P2 |
| portfolio-reporter | MEDIUM | HIGH | P3 |
| portfolio-construction-advisor | MEDIUM | HIGH | P3 |
| vc-fund-due-diligence | MEDIUM | HIGH | P3 |
| open-innovation-scanner | HIGH | HIGH | P3 |
| startup-solution-matcher | MEDIUM | HIGH | P3 |
| corporate-venture-evaluator | MEDIUM | HIGH | P3 |
| pilot-program-designer | MEDIUM | HIGH | P3 |

**Priority key:**
- P1: Launch with (v1) — 5 startup skills
- P2: Add after validation (v1.x) — completes all 4 suites
- P3: Defer to v2 — lower immediate demand from LAN's current user base

---

## Competitor Feature Analysis

| Feature | vc-skills | VC SkillPack | VC Investor Analyst | LAN Skills |
|---------|-----------|-------------|---------------------|------------|
| VC persona roleplay | 28 personas | No | No | Deliberately excluded |
| Pitch evaluation | Yes (roleplay) | Yes (advisory) | Scoring 0-100 | Yes (framework-grounded) |
| Pitch deck builder | No | Yes (basic) | No | Yes (Sequoia-template) |
| Financial modeling | No | Yes (basic) | No | Yes (unit econ + fund math) |
| Term sheet analysis | No | Decoder only (founder) | No | Both LP and VC sides |
| Investor outreach | No | Targeting tool | Yes (core feature) | Out of scope |
| Deal memo | No | No | No | Yes (Suite 4) |
| LP/fund analysis | No | No | No | Yes (Suite 1) |
| Corporate suite | No | No | No | Yes (Suite 2) |
| VC operator suite | No | No | No | Yes (Suite 4) |
| LATAM context | 2 LATAM personas | No | No | Built in to all skills |
| Bibliography | No | "methodology" only | No | Specific citations in every skill |
| Price | Free (GitHub) | $199 one-time | Free (mcpmarket.com) | Free |
| Install | `npx vc-skills` | Manual | Manual copy | `install.sh` |
| LAN OS integration | No | No | No | Yes (program startups) |
| Output format | Scorecard prose | Templates/frameworks | Scoring + emails | Structured markdown outputs |

---

## What Makes Each Skill Valuable (26-Skill Assessment)

### Suite 1: LP & Angel

**angel-investment-analyzer** — Value: LPs/angels lack structured evaluation frameworks. Most angel decisions are gut-feel. A scorecard grounded in Berkus + Kauffman data + LATAM exit comparables turns intuition into a defensible investment thesis.

**vc-fund-due-diligence** — Value: Institutional LPs use teams of 5+ analysts. Small family offices and individual LPs can't afford that. This gives a single LP the diligence framework of an institutional process.

**portfolio-construction-advisor** — Value: Most first-time angels under-diversify (3-5 investments). The math is brutal — you need 20+ companies. This skill does the portfolio math so angels understand WHY diversification matters and HOW to execute it.

**lp-term-sheet-analyzer** — Value: LPAs are 100+ page documents. Key terms (clawback, key person, no-fault divorce, waterfall type) have massive financial implications. ILPA's model LPA is the benchmark; this skill extracts and benchmarks against it.

**startup-valuation-checker** — Value: Every LP gets pitched on "we're worth $10M pre-money." With 2025 AI multiples at 23.4x and LATAM deals at lower multiples, a benchmarking tool that applies 5 methods and explains which applies at which stage is essential.

### Suite 2: Corporates

**open-innovation-scanner** — Value: Corporate innovation budgets are wasted on unfocused hackathons. The Tenity framework (Discovery → Exploration → Experimentation → Evaluation) gives structure. This skill operationalizes that framework.

**startup-solution-matcher** — Value: Corporates receive hundreds of startup pitches. A shortlist generator with integration complexity scoring, TRL assessment, and build/buy/partner framing transforms "demo overload" into a structured decision.

**corporate-venture-evaluator** — Value: CVC vs accelerator vs acqui-hire is a strategic decision most corporations make ad-hoc. The financial + strategic fit scoring in this skill forces rigorous analysis before committing budget.

**pilot-program-designer** — Value: Most corporate-startup pilots die in limbo — no kill criteria, no escalation path, no IP clarity. This skill generates the structure that pilots need to succeed (or fail fast).

### Suite 3: Startups

**pitch-deck-builder** — Value: Sequoia's template has funded 500+ companies. YC partners have reviewed 50,000+ applications. This skill applies those exact frameworks to a specific founder's story.

**deck-reviewer** — Value: Most founders get feedback from friends, not investors. This skill gives investor-perspective critique across content, data, storytelling, and design — grounded in what VCs actually say.

**go-to-market-strategist** — Value: 90% of seed-stage startups have a product plan, 10% have a real GTM plan. Channel selection, ICP clarity, and 90-day execution distinguish fundable startups from projects.

**unit-economics-calculator** — Value: "Unit economics" is in every pitch deck but calculated differently by every founder. This skill standardizes the calculation, applies stage-appropriate benchmarks, and flags when the math doesn't work for VC returns.

**fundraising-readiness-audit** — Value: Founders get into investor meetings unprepared for specific asks. This audit tells them exactly what's missing before they burn warm intros.

**data-room-builder** — Value: Data rooms get investors from "interested" to "term sheet." A structured data room with actual templates (not just a checklist) dramatically accelerates due diligence.

**competitive-landscape-mapper** — Value: 94% of companies exist in a "sea of sameness." A 2x2 that compresses the market into a clear positioning gap is a fundable narrative, not a spreadsheet of competitors.

**rapid-mvp-builder** — Value: In 2025, no-code + Claude Code + Cursor can ship MVPs in 2-4 weeks. A skill that guides MoSCoW prioritization, stack selection, and a 30-day sprint plan is the difference between "I have an idea" and "I have users."

**sales-playbook-generator** — Value: Most founding teams are engineers, not salespeople. A complete playbook (ICP, qualification, objection handling, email sequences) gives non-sales founders a structured approach to their first 50 customers.

**pricing-strategy-designer** — Value: Pricing is the highest-leverage decision a startup makes. With AI-era pricing shifting from per-seat to usage-based models, a skill that guides the value metric decision is uniquely valuable in 2025-2026.

**venture-model-validator** — Value: The most painful meeting in VC is when a great founder has built a lifestyle business. This skill front-loads the conversation: is this VC-backable? Why? What would need to change?

**startup-kpi-automator** — Value: YC's 6 core metrics + Sequoia's operating metrics + the investor update template. Founders waste hours building dashboards; this skill generates the exact system investors want to see.

### Suite 4: VC Operators

**deal-memo-writer** — Value: IC-ready deal memos take 8-12 hours per deal. This skill cuts that to 2 hours while improving consistency and ensuring thesis alignment is explicit.

**portfolio-reporter** — Value: Quarterly LP updates are the most time-consuming reporting task for small VC teams. This skill generates a draft that covers performance data, narrative, and asks — in a format LPs actually want to read.

**term-sheet-generator** — Value: Brad Feld's "Venture Deals" is the definitive guide. This skill operationalizes it: draft terms, explain each term, show negotiation leverage, and flag which terms actually matter.

**fund-performance-analyzer** — Value: Most GPs know their TVPI. Few know their PME. Fewer can explain attribution (which deals drove returns, which sectors underperformed). This skill generates the full picture.

**thesis-builder** — Value: "We invest in tech-enabled companies" is not a thesis. The "variant perception" test, anti-portfolio analysis, and LP pitch integration in this skill force the rigor that separates fundable managers from hopeful ones.

---

## Sources

- [vc-skills on awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code/issues/917) — 28 VC persona structure
- [VC SkillPack](https://vc-skillpack.vercel.app/) — 10 skills, $199, feature inventory
- [VC Investor Analyst on mcpmarket.com](https://mcpmarket.com/tools/skills/vc-investor-analyst) — scoring + outreach features
- [Snyk: Top 8 Claude Skills for Entrepreneurs](https://snyk.io/articles/top-8-claude-skills-entrepreneurs-startup-founders-solopreneurs/) — ecosystem skills overview
- [Affinity: 10 AI Tools for VC Firms](https://www.affinity.co/guides/vc-ai-tools) — enterprise VC tool features
- [Flybridge AI Investment Memo Generator](https://www.flybridge.com/ideas/the-bow/behind-the-curtain-unveiling-our-ai-powered-investment-memo-generator) — deal memo AI pattern
- [V7 Labs LPA Analysis Agent](https://www.v7labs.com/agents/ai-lpa-analysis-agent) — LP term analysis features
- [ILPA Model LPA Term Sheet](https://ilpa.org/resource/deal-by-deal-model-limited-partnership-agreement-term-sheet-pdf/) — LP term standards
- [Berkus vs Other Valuation Methods](https://www.allied.vc/guides/berkus-method-vs-other-valuation-models) — valuation framework coverage
- [Tenity: Open Innovation Program Strategy](https://www.tenity.com/blog/open-innovation-program-strategy-how-corporates-work-with-startups) — corporate innovation framework
- [CFA Institute: The Augmented LP](https://blogs.cfainstitute.org/investor/2025/11/04/the-augmented-lp-6-ways-ai-can-enhance-the-allocators-workflow) — LP AI use cases
- [Standard Metrics: Top AI-Powered VC Tech Stack Tools](https://standardmetrics.io/library/the-top-ai-powered-vc-tech-stack-tools-in-2026/) — operator tooling landscape
- [BVP: AI Pricing and Monetization Playbook](https://www.bvp.com/atlas/the-ai-pricing-and-monetization-playbook) — AI-era pricing models
- [Carta: VC Fund Performance Q4 2025](https://carta.com/data/vc-fund-performance-q4-2025/) — current benchmarks for fund metrics
- [seeto.ai: Competitive Positioning Matrix](https://seeto.ai/blog/competitive-positioning-matrix-2x2-map) — 2x2 mapping methodology

---

*Feature research for: LAN Skills & Agents — VC/Startup AI Skills Suite*
*Researched: 2026-04-04*
