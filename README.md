# LAN Skills & Agents

27 execution-focused Claude Code skills for LATAM startup founders, VC operators, LP investors, and corporate innovators.

Unlike roleplay-based AI tools, LAN Skills EXECUTE: they generate pitch decks, calculate unit economics, build data rooms, write deal memos, and design GTM strategies — grounded in industry-standard frameworks (YC, Sequoia, a16z, Brad Feld, ILPA) and calibrated to LATAM market benchmarks (LAVCA 2025, Cuantico 2026).

## Install

**3 steps:**

```bash
# 1. Clone the repository
git clone https://github.com/lan-accelerator/lan-skills.git
cd lan-skills

# 2. Run the installer
./install.sh

# 3. Restart Claude Code
# Then type / in Claude Code to see all available skills
```

The installer copies all skills to `~/.claude/skills/`. No additional setup required.

### Verify Installation

```bash
./validate.sh
```

Run this before committing any changes to verify all SKILL.md files are spec-compliant.

## Skill Catalog

### Startups (Suite)

| Skill | Command | Description |
|-------|---------|-------------|
| Venture Model Validator | `/venture-model-validator` | Startup venture-scale analysis. ALWAYS invoke when a user asks to evaluate if their startup is VC-backable, investable, or venture-scale. NOT for pitch deck creation or financial modeling. |
| Pitch Deck Builder | `/pitch-deck-builder` | Startup investor presentation builder. ALWAYS invoke when a user wants to create, structure, or outline a pitch deck or investor presentation. NOT for reviewing an existing deck or validating the business model. |
| Go-To-Market Strategist | `/go-to-market-strategist` | Startup go-to-market strategy designer. ALWAYS invoke when a user asks how to acquire customers, design a GTM plan, choose growth channels, or build a 90-day launch plan. NOT for pitch deck creation or unit economics calculation. |
| Startup KPI Automator | `/startup-kpi-automator` | Startup KPI system designer. ALWAYS invoke when a user asks what metrics to track, how to build a KPI dashboard, or how to prepare an investor update. NOT for pitch deck creation or GTM strategy. |
| Data Room Builder | `/data-room-builder` | Startup investor data room builder. ALWAYS invoke when a user asks what documents investors need, how to organize a data room, or wants to prepare for fundraising due diligence. NOT for pitch deck creation or GTM planning. |
| Deck Reviewer | `/deck-reviewer` | Coming in Phase 2 |
| Unit Economics Calculator | `/unit-economics-calculator` | Coming in Phase 2 |
| Fundraising Readiness Audit | `/fundraising-readiness-audit` | Coming in Phase 2 |
| Competitive Landscape Mapper | `/competitive-landscape-mapper` | Coming in Phase 2 |
| Rapid MVP Builder | `/rapid-mvp-builder` | Coming in Phase 2 |
| Sales Playbook Generator | `/sales-playbook-generator` | Coming in Phase 2 |
| Pricing Strategy Designer | `/pricing-strategy-designer` | Coming in Phase 2 |
| Fundraising Agent | `/fundraising-agent` | Coming in Phase 2 |

### VC Operators (Suite)

| Skill | Command | Description |
|-------|---------|-------------|
| Deal Memo Writer | `/deal-memo-writer` | Coming in Phase 2 |
| Portfolio Reporter | `/portfolio-reporter` | Coming in Phase 2 |
| Term Sheet Generator | `/term-sheet-generator` | Coming in Phase 2 |
| Fund Performance Analyzer | `/fund-performance-analyzer` | Coming in Phase 2 |
| Thesis Builder | `/thesis-builder` | Coming in Phase 2 |

### LP & Angel (Suite)

| Skill | Command | Description |
|-------|---------|-------------|
| Angel Investment Analyzer | `/angel-investment-analyzer` | LP and angel investor due diligence on startup deals. Produces a structured investment scorecard with thesis fit, red flags, LATAM comparables, and an INVEST / PASS / WATCH recommendation. |
| VC Fund Due Diligence | `/vc-fund-due-diligence` | LP due diligence on VC funds and GPs. Analyzes GP track record, portfolio construction, fee structure, carry, hurdle, clawback, and key person terms against Cambridge Associates and Carta benchmarks. |
| Portfolio Construction Advisor | `/portfolio-construction-advisor` | Angel and LP portfolio construction strategy. Covers allocation strategy, check sizes, diversification targets, reserve ratios, and expected return distribution using AngelList and Correlation Ventures data. |
| LP Term Sheet Analyzer | `/lp-term-sheet-analyzer` | LP-side fund term sheet and LPA analysis. Evaluates management fee, carry, hurdle rate, GP commit, clawback, key person clause, and no-fault divorce from the investor's perspective. |
| Startup Valuation Checker | `/startup-valuation-checker` | Startup valuation reasonableness analysis using multiple methods. Applies Damodaran revenue multiples, Berkus method, Bill Payne Scorecard, DCF, and LATAM comparable transaction data. |

### Corporates (Suite)

| Skill | Command | Description |
|-------|---------|-------------|
| Open Innovation Scanner | `/open-innovation-scanner` | For CORPORATE INNOVATION TEAMS. Maps innovation opportunities, identifies startup solutions for a business problem, and evaluates strategic alignment using the Chesbrough Open Innovation framework and NESTA toolkit. |
| Startup Solution Matcher | `/startup-solution-matcher` | For CORPORATE INNOVATION TEAMS. Produces a ranked shortlist of startups solving a specific business problem with pros/cons, pricing estimates, and integration complexity scores using CB Insights and Gartner methodology. |
| Corporate Venture Evaluator | `/corporate-venture-evaluator` | For CORPORATE INNOVATION TEAMS. CVC readiness assessment covering strategic fit, financial return expectations, organizational readiness, and governance design using BCG and GCV Institute frameworks. |
| Pilot Program Designer | `/pilot-program-designer` | For CORPORATE INNOVATION TEAMS. Designs a structured startup pilot program with SMART problem statement, KPIs, timeline, budget, governance, and MANDATORY kill criteria using Techstars, Wayra, and 500 Global frameworks. |

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

## License

MIT
