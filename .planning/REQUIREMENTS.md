# Requirements: LAN Skills & Agents

**Defined:** 2026-04-04
**Core Value:** Skills that EXECUTE real VC/startup workflows — actionable outputs grounded in industry-standard frameworks and bibliography.

## v1 Requirements

Requirements for initial release. Each maps to roadmap phases.

### Infrastructure

- [x] **INFRA-01**: Repository has suites/ directory with 4 suite subdirectories (lp-angel, corporate, startup, vc-operator)
- [x] **INFRA-02**: Each skill is a self-contained directory with SKILL.md (YAML frontmatter + markdown body <500 lines)
- [x] **INFRA-03**: shared/frameworks/ directory contains canonical bibliography files referenced by multiple skills
- [x] **INFRA-04**: install.sh copies skills to ~/.claude/skills/ with platform-safe paths (${HOME} not ~), mkdir -p guards, per-skill success confirmation
- [x] **INFRA-05**: README.md with project description, install instructions, full skill catalog with descriptions
- [x] **INFRA-06**: YAML frontmatter includes name, description (activation trigger <250 chars), and applicable Claude Code fields
- [x] **INFRA-07**: Every skill description uses three-component pattern: domain identifier + "ALWAYS invoke when" directive + negative constraint
- [x] **INFRA-08**: docs/how-to-create-skills.md contributor guide for authoring new skills

### Skill Quality Standards (apply to every skill)

- [x] **QUAL-01**: Every skill produces structured markdown output (tables, scorecards, memos) — not prose
- [x] **QUAL-02**: Every skill has an input gathering flow — asks user for missing data before generating
- [x] **QUAL-03**: Every skill branches on stage input (pre-seed, seed, Series A, etc.) where applicable
- [x] **QUAL-04**: Every skill includes specific numbers and benchmarks from authoritative sources
- [x] **QUAL-05**: Every skill ends with actionable next steps section
- [x] **QUAL-06**: Every evaluation skill calls out red flags and errors explicitly
- [x] **QUAL-07**: Every skill cites which framework is being applied with source reference
- [x] **QUAL-08**: Every skill includes LATAM context annotations — US benchmarks flagged, LATAM-adjusted figures included
- [x] **QUAL-09**: Every skill has a TEMPLATES.md with a filled (not empty) example enforcing output structure
- [x] **QUAL-10**: Every skill's references/ files cite specific URLs that resolve to real, accessible sources
- [x] **QUAL-11**: Every SKILL.md includes a "Tone & Editorial Voice" section enforcing direct, no-sugarcoating feedback — seasoned investor/operator voice, unicorn-bar evaluation, no empty encouragement, specific actionable critique

### Suite 3: Startups — Priority 5 (v1 core)

- [x] **STRT-01**: venture-model-validator — Evaluates if startup is VC-backable, deep online research of competitors, timing analysis, scorecard with comparables, "why now"/"why you" analysis. Frameworks: YC idea evaluation, Thiel monopoly test, a16z PMF, Sequoia enduring companies, Gurley market sizing
- [x] **STRT-02**: pitch-deck-builder — Generates slide-by-slide outline with talking points, data needed per slide, common errors. Frameworks: Sequoia template, YC Series A guide, Kawasaki 10-20-30, Reid Hoffman teardowns
- [x] **STRT-03**: go-to-market-strategist — Designs full GTM: channel strategy, acquisition plan, unit economics, sales process, 90-day plan. Frameworks: Moore "Crossing the Chasm", Weinberg "Traction", YC GTM lectures, a16z GTM guides
- [x] **STRT-04**: startup-kpi-automator — KPI system by startup type (SaaS, marketplace, e-commerce, fintech), dashboard structure, growth rate calculations, investor report template, benchmark alerts. Frameworks: Bessemer Cloud Index, OpenView SaaS, YC Standard Metrics, a16z 16 Metrics, Carta KPIs
- [x] **STRT-05**: data-room-builder — Folder structure, document templates, completeness checklist, generates base documents, prioritization. Frameworks: Visible.vc template, NFX guide, Stripe Atlas data room

### Suite 3: Startups — Remaining 7

- [x] **STRT-06**: deck-reviewer — Per-slide evaluation of existing deck: clarity, data, storytelling, design. Actionable feedback. Frameworks: DocSend 200K+ deck analysis, NFX teardowns, a16z pitch feedback
- [x] **STRT-07**: unit-economics-calculator — Calculates CAC, LTV, LTV/CAC, payback, contribution margin, break-even with analysis. Frameworks: David Skok, Bessemer/OpenView SaaS benchmarks, YC unit economics
- [x] **STRT-08**: fundraising-readiness-audit — Evaluates readiness by stage: metrics, data room completeness, narrative, team gaps, comparable raises. Frameworks: YC "How to Raise Money", a16z fundraising guide, Carta data, First Round guides
- [x] **STRT-09**: competitive-landscape-mapper — 2x2 map, competitor profiles, differentiation matrix, defensibility analysis. Frameworks: Porter's Five Forces, a16z competitive analysis, CB Insights
- [x] **STRT-10**: rapid-mvp-builder — MVP design: feature prioritization (MoSCoW), tech stack, build plan, launch checklist. Frameworks: Ries "Lean Startup", Pieter Levels, YC "Launch Now"
- [x] **STRT-11**: sales-playbook-generator — B2B sales playbook: prospecting, email sequences, objection handling, demo script, closing, CRM setup. Frameworks: Ross "Predictable Revenue", "Challenger Sale", Gong.io data
- [x] **STRT-12**: pricing-strategy-designer — Pricing strategy: value metrics, packaging, competitive pricing, freemium vs paid, usage-based vs subscription. Frameworks: Patrick Campbell (ProfitWell), OpenView pricing, Sequoia pricing, "Monetizing Innovation"
- [x] **STRT-13**: fundraising-agent — Complete fundraising co-pilot: 3-phase workflow (Preparation → Fundraising → Closing). Investor research & targeting with web search, personalized outreach templates, meeting prep per partner, term sheet analysis from founder perspective. Integrates with venture-model-validator, pitch-deck-builder, data-room-builder, fundraising-readiness-audit, unit-economics-calculator. Includes references/lore-vc-framework.md (CC BY-NC-SA 4.0) and references/investor-research-guide.md. Frameworks: lore.vc "The Fundraising Lore", NFX Signal data, YC fundraising guides, a16z, Brad Feld "Venture Deals", Carta valuation data

### Suite 4: VC Operators

- [x] **VCOP-01**: deal-memo-writer — Investment committee memo: exec summary, market analysis, competitive landscape, team, financials, risks, recommendation. Frameworks: a16z deal memo, Benchmark partner meeting, Sequoia investment memo
- [x] **VCOP-02**: portfolio-reporter — LP quarterly reports: portfolio performance, follow-on analysis, reserve allocation. Frameworks: Carta analytics, Visible.vc reporting, ILPA reporting standards
- [x] **VCOP-03**: term-sheet-generator — Term sheet draft with market standards, term explanations, negotiation levers. Frameworks: Brad Feld "Venture Deals", NVCA model docs, YC SAFE, 500 Global KISS
- [x] **VCOP-04**: fund-performance-analyzer — Fund metrics: TVPI, DPI, IRR, PME, vintage comparison, attribution analysis. Frameworks: Cambridge Associates benchmarks, Preqin data, Kauffman returns
- [x] **VCOP-05**: thesis-builder — Investment thesis document: market sizing, pattern matching, anti-portfolio analysis. Frameworks: USV thesis, a16z thesis docs, Notation Capital framework, Lux Capital thesis

### Suite 1: LP & Angel Investors

- [x] **LPAN-01**: angel-investment-analyzer — Scorecard with investment criteria, red flags, comparables, thesis fit. Frameworks: Jason Calacanis "Angel", AngelList methodology, Naval Ravikant
- [x] **LPAN-02**: vc-fund-due-diligence — GP track record, portfolio construction, fee structure, terms (carry, hurdle, clawback), vintage analysis. Frameworks: Kauffman Foundation, Cambridge Associates, ILPA best practices
- [x] **LPAN-03**: portfolio-construction-advisor — Allocation, check sizes, diversification, reserve strategy. Frameworks: AngelList data, Correlation Ventures, Peter Thiel concentrated vs diversified
- [x] **LPAN-04**: lp-term-sheet-analyzer — Management fee, carry, preferred return, GP commit, key person, no-fault divorce, clawback analysis. Frameworks: ILPA Model LPA, Brad Feld "Venture Deals"
- [x] **LPAN-05**: startup-valuation-checker — Valuation reasonableness via multiple methods: revenue multiples, comparables, DCF, Berkus, Scorecard method. Frameworks: Damodaran (NYU), Bill Payne, Dave Berkus, a16z valuation

### Suite 2: Corporates

- [x] **CORP-01**: open-innovation-scanner — Innovation opportunity map, startup matches per problem, evaluation framework. Frameworks: Chesbrough "Open Innovation", NESTA toolkit, corporate venturing best practices
- [x] **CORP-02**: startup-solution-matcher — Shortlist of startups solving a business problem with pros/cons, pricing, integration complexity. Frameworks: CB Insights market maps, Gartner methodology, Plug and Play matching
- [x] **CORP-03**: corporate-venture-evaluator — CVC readiness: strategic fit, financial returns, organizational readiness, governance. Frameworks: BCG corporate venturing, GCV Institute, Intel Capital cases
- [x] **CORP-04**: pilot-program-designer — Pilot structure: objectives, KPIs, timeline, budget, success/kill criteria, escalation. Frameworks: Techstars corporate innovation, Wayra, 500 Global corporate programs

### LAN OS Integration

- [ ] **LANOS-01**: Landing page section "Skills & Agents" with 4 suite cards (gradient border, hover glow), DM Serif heading
- [ ] **LANOS-02**: Platform route /skills with grid layout, suite filters, skill cards with [Usar] button
- [ ] **LANOS-03**: skills-catalog.ts static TypeScript file mirroring SKILL.md frontmatter for platform UI
- [ ] **LANOS-04**: [Usar] button opens AI assistant with skill SKILL.md pre-loaded as system prompt
- [ ] **LANOS-05**: For program startups, skills connect to their Supabase data (KPIs, deck, metrics) via context injection

## v2 Requirements

Deferred to future release. Tracked but not in current roadmap.

### Advanced Features

- **ADV-01**: VC persona roleplay mode — entertaining but roleplay ≠ execution; anti-feature per research
- **ADV-02**: Real-time market data fetching — hallucination risk too high; ask user to paste their own data
- **ADV-03**: Multi-user collaboration on skill outputs — requires backend infrastructure
- **ADV-04**: Plugin marketplace distribution — build standalone first, plugin packaging later
- **ADV-05**: install.sh with suite arguments (e.g., `./install.sh --suite startups`) — full install first
- **ADV-06**: Cross-skill workflow chains (e.g., venture-model-validator → pitch-deck-builder pipeline)

## Out of Scope

Explicitly excluded. Documented to prevent scope creep.

| Feature | Reason |
|---------|--------|
| Paid/premium skill tiers | All skills free for LAN ecosystem — explicit project decision |
| Multi-language support beyond ES/EN | Spanish UI labels + English technical terms is sufficient for LATAM |
| Custom skill builder UI | Skills authored as SKILL.md by developers, not end-users |
| Integration with non-LAN platforms | Skills are for LAN OS and Claude Code CLI |
| Autonomous agents that run without user input | Skills are interactive, user-triggered |
| Real-time financial data APIs | Hallucination risk; users paste their own data |
| VC persona roleplay mode | Anti-feature — produces entertainment, not work products |

## Traceability

Which phases cover which requirements. Updated during roadmap creation.

| Requirement | Phase | Status |
|-------------|-------|--------|
| INFRA-01 | Phase 1 | Complete |
| INFRA-02 | Phase 1 | Complete |
| INFRA-03 | Phase 1 | Complete |
| INFRA-04 | Phase 1 | Complete |
| INFRA-05 | Phase 1 | Complete |
| INFRA-06 | Phase 1 | Complete |
| INFRA-07 | Phase 1 | Complete |
| INFRA-08 | Phase 1 | Complete |
| QUAL-01 | Phase 1 | Complete |
| QUAL-02 | Phase 1 | Complete |
| QUAL-03 | Phase 1 | Complete |
| QUAL-04 | Phase 1 | Complete |
| QUAL-05 | Phase 1 | Complete |
| QUAL-06 | Phase 1 | Complete |
| QUAL-07 | Phase 1 | Complete |
| QUAL-08 | Phase 1 | Complete |
| QUAL-09 | Phase 1 | Complete |
| QUAL-10 | Phase 1 | Complete |
| QUAL-11 | Phase 1 | Complete |
| STRT-01 | Phase 1 | Complete |
| STRT-02 | Phase 1 | Complete |
| STRT-03 | Phase 1 | Complete |
| STRT-04 | Phase 1 | Complete |
| STRT-05 | Phase 1 | Complete |
| STRT-06 | Phase 2 | Complete |
| STRT-07 | Phase 2 | Complete |
| STRT-08 | Phase 2 | Complete |
| STRT-09 | Phase 2 | Complete |
| STRT-10 | Phase 2 | Complete |
| STRT-11 | Phase 2 | Complete |
| STRT-12 | Phase 2 | Complete |
| STRT-13 | Phase 2 | Complete |
| VCOP-01 | Phase 2 | Complete |
| VCOP-02 | Phase 2 | Complete |
| VCOP-03 | Phase 2 | Complete |
| VCOP-04 | Phase 2 | Complete |
| VCOP-05 | Phase 2 | Complete |
| LPAN-01 | Phase 3 | Complete |
| LPAN-02 | Phase 3 | Complete |
| LPAN-03 | Phase 3 | Complete |
| LPAN-04 | Phase 3 | Complete |
| LPAN-05 | Phase 3 | Complete |
| CORP-01 | Phase 3 | Complete |
| CORP-02 | Phase 3 | Complete |
| CORP-03 | Phase 3 | Complete |
| CORP-04 | Phase 3 | Complete |
| LANOS-01 | Phase 4 | Pending |
| LANOS-02 | Phase 4 | Pending |
| LANOS-03 | Phase 4 | Pending |
| LANOS-04 | Phase 4 | Pending |
| LANOS-05 | Phase 4 | Pending |

**Coverage:**
- v1 requirements: 51 total
- Mapped to phases: 51
- Unmapped: 0

---
*Requirements defined: 2026-04-04*
*Last updated: 2026-04-04 after roadmap creation*
