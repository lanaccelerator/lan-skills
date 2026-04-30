# LAN Skills & Agents

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Skills](https://img.shields.io/badge/Skills-29-blue.svg)](#skill-catalog)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Compatible-blueviolet.svg)](https://docs.anthropic.com/en/docs/claude-code)

29 execution-focused Claude Code skills for LATAM startup founders, VC operators, LP investors, and corporate innovators.

Unlike roleplay-based AI tools, LAN Skills EXECUTE: they generate pitch decks, calculate unit economics, build data rooms, write deal memos, and design GTM strategies — grounded in industry-standard frameworks (YC, Sequoia, a16z, Brad Feld, ILPA) and calibrated to LATAM market benchmarks (LAVCA 2025, Cuantico 2026).

**Repository:** [github.com/lan-accelerator/lan-skills](https://github.com/lan-accelerator/lan-skills)

## Install

**Option A: Clone + install script**

```bash
# 1. Clone the repository
git clone https://github.com/lan-accelerator/lan-skills.git
cd lan-skills

# 2. Run the installer
./install.sh

# 3. Restart Claude Code
# Then type / in Claude Code to see all available skills
```

**Option B: npx (one-liner)**

```bash
npx lan-skills
```

The installer copies all 29 skills to `~/.claude/skills/`. No additional setup required.

### Verify Installation

```bash
./validate.sh
```

Run this before committing any changes to verify all SKILL.md files are spec-compliant.

## Skill Catalog

### Startups Suite (15 skills)

| Skill | Command | Description |
|-------|---------|-------------|
| Venture Model Validator | `/venture-model-validator` | Evaluate if a startup is VC-backable using YC, Thiel, a16z PMF, and Sequoia frameworks |
| Pitch Deck Builder | `/pitch-deck-builder` | Create investor presentations using Sequoia 10-slide, YC Series A, and Kawasaki 10-20-30 frameworks |
| Go-To-Market Strategist | `/go-to-market-strategist` | Design GTM plans, choose growth channels, and build 90-day launch plans |
| Startup KPI Automator | `/startup-kpi-automator` | Design KPI systems, build dashboards, and prepare investor updates |
| Startup Metrics & OKRs | `/startup-metrics-okrs` | Build full measurement system in one run — North Star + stage-appropriate KPIs + scoreable quarterly OKRs (Doerr/Grove) |
| Investor Update Compiler | `/investor-update-compiler` | Compile monthly investor updates in Suster/Lemkin format — KPIs, financials, runway, wins, lowlights, asks |
| Data Room Builder | `/data-room-builder` | Organize investor data rooms following Visible.vc template and NFX guide |
| Deck Reviewer | `/deck-reviewer` | Per-slide pitch deck evaluation with scoring and improvement suggestions |
| Unit Economics Calculator | `/unit-economics-calculator` | Calculate CAC, LTV, LTV/CAC, payback period, contribution margin, and break-even |
| Fundraising Readiness Audit | `/fundraising-readiness-audit` | Pre-fundraise readiness assessment by stage — "am I ready to raise?" |
| Competitive Landscape Mapper | `/competitive-landscape-mapper` | Map competitive landscape, analyze competitors, build competitive matrices |
| Rapid MVP Builder | `/rapid-mvp-builder` | MVP design, feature prioritization with MoSCoW, and tech stack selection |
| Sales Playbook Generator | `/sales-playbook-generator` | B2B sales process, prospecting sequences, objection handling, CRM setup |
| Pricing Strategy Designer | `/pricing-strategy-designer` | Pricing models (subscription/usage/freemium), packaging tiers, willingness-to-pay |
| Fundraising Agent | `/fundraising-agent` | End-to-end fundraising co-pilot — investor research, outreach, term sheet navigation |

### VC Operators Suite (5 skills)

| Skill | Command | Description |
|-------|---------|-------------|
| Deal Memo Writer | `/deal-memo-writer` | Write IC memos with market analysis, team assessment, risk register, and invest/pass recommendation |
| Portfolio Reporter | `/portfolio-reporter` | Generate LP quarterly reports, portfolio performance summaries, ILPA-compliant updates |
| Term Sheet Generator | `/term-sheet-generator` | Draft priced round term sheets, review terms, negotiation levers, market standards |
| Fund Performance Analyzer | `/fund-performance-analyzer` | Calculate TVPI, DPI, IRR, MOIC, PME — benchmark against vintage peers |
| Thesis Builder | `/thesis-builder` | Articulate investment thesis, define pattern-matching criteria, portfolio construction models |

### LP & Angel Suite (5 skills)

| Skill | Command | Description |
|-------|---------|-------------|
| Angel Investment Analyzer | `/angel-investment-analyzer` | Due diligence on startup deals — scorecard with thesis fit, red flags, INVEST/PASS/WATCH |
| VC Fund Due Diligence | `/vc-fund-due-diligence` | Evaluate VC funds and GPs — track record, portfolio construction, fee structure, terms |
| Portfolio Construction Advisor | `/portfolio-construction-advisor` | Portfolio strategy — allocation, check sizes, diversification, reserve ratios, return distribution |
| LP Term Sheet Analyzer | `/lp-term-sheet-analyzer` | Analyze fund term sheets and LPAs from the investor's perspective |
| Startup Valuation Checker | `/startup-valuation-checker` | Valuation reasonableness using Damodaran, Berkus, Scorecard, DCF, and LATAM comparables |

### Corporates Suite (4 skills)

| Skill | Command | Description |
|-------|---------|-------------|
| Open Innovation Scanner | `/open-innovation-scanner` | Map innovation opportunities using Chesbrough Open Innovation framework and NESTA toolkit |
| Startup Solution Matcher | `/startup-solution-matcher` | Ranked startup shortlists with pros/cons, pricing, and integration complexity (CB Insights/Gartner) |
| Corporate Venture Evaluator | `/corporate-venture-evaluator` | CVC readiness assessment — strategic fit, financial returns, organizational readiness (BCG/GCV) |
| Pilot Program Designer | `/pilot-program-designer` | Design structured startup pilots with KPIs, timeline, budget, and mandatory kill criteria |

## Validate Before Committing

```bash
./validate.sh
```

The validator checks all SKILL.md files for:
- `name` field: 1–64 chars, lowercase + numbers + hyphens only, matches directory name
- `description` field: present and non-empty
- Line count: warns if >500 lines

Fix all `FAIL` lines before submitting a pull request. `WARN` lines should be addressed but do not block merge.

## Contributing

See [docs/how-to-create-skills.md](docs/how-to-create-skills.md) for the complete guide to authoring new skills.

Key requirements before a skill can merge:
1. Run `./validate.sh` — all FAIL lines resolved
2. TEMPLATES.md contains a filled (not empty) example output
3. Skill tested with 5 natural-language phrasings for correct activation
4. `shared/frameworks/latam-benchmarks.md` referenced in LATAM Context section
5. `shared/frameworks/editorial-voice.md` referenced in Tone & Editorial Voice section

## Credits

Built by **[LAN Accelerator](https://lan.vc)** — a LATAM VC fund and startup accelerator.

Frameworks and benchmarks sourced from YC, Sequoia, a16z, Brad Feld ("Venture Deals"), ILPA, LAVCA 2025, Cuantico 2026, Cambridge Associates, Carta, Bessemer Cloud Index, and OpenView SaaS Benchmarks.

## License

MIT
