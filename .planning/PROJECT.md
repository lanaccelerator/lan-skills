# LAN Skills & Agents

## What This Is

A suite of Claude Code Skills and Agents for the entire venture capital and startup ecosystem — LPs/Angels, Corporates, Startups, and VC Operators. Unlike existing tools (vc-skills with 28 personalities, VC Investor Analyst) that are roleplay-based, these skills EXECUTE: they generate decks, calculate unit economics, build data rooms, write deal memos, and more. Built on the best VC/startup bibliography (YC, a16z, Sequoia, Harvard, MIT, Kauffman, ILPA). Integrates with LAN OS as the `/skills` section and landing page feature.

## Core Value

Skills that EXECUTE real VC/startup workflows — not roleplay or chat, but actionable outputs (scorecards, decks, memos, dashboards, term sheets) grounded in industry-standard frameworks and bibliography.

## Requirements

### Validated

(None yet — ship to validate)

### Active

**Suite 1: LP & Angel Investors (5 skills)**
- [ ] angel-investment-analyzer — Scorecard with investment criteria, red flags, comparables, thesis fit
- [ ] vc-fund-due-diligence — GP track record, portfolio construction, fee structure, terms analysis
- [ ] portfolio-construction-advisor — Allocation, check sizes, diversification, reserve strategy
- [ ] lp-term-sheet-analyzer — Management fee, carry, preferred return, GP commit, key person, clawback
- [ ] startup-valuation-checker — Revenue multiples, comparables, DCF, Berkus, Scorecard methods

**Suite 2: Corporates (4 skills)**
- [ ] open-innovation-scanner — Opportunity map, startup matches, evaluation framework
- [ ] startup-solution-matcher — Shortlist with pros/cons, pricing, integration complexity
- [ ] corporate-venture-evaluator — Strategic fit, financial returns, organizational readiness
- [ ] pilot-program-designer — Objectives, KPIs, timeline, budget, success/kill criteria

**Suite 3: Startups (12 skills)**
- [ ] pitch-deck-builder — Slide-by-slide outline, talking points, data needed, common errors
- [ ] deck-reviewer — Per-slide evaluation: clarity, data, storytelling, design feedback
- [ ] go-to-market-strategist — Channel strategy, acquisition plan, unit economics, 90-day plan
- [ ] unit-economics-calculator — CAC, LTV, LTV/CAC, payback, contribution margin, break-even
- [ ] fundraising-readiness-audit — Metrics by stage, data room completeness, narrative, team gaps
- [ ] data-room-builder — Folder structure, templates, checklist, generates base documents
- [ ] competitive-landscape-mapper — 2x2 map, competitor profiles, differentiation matrix
- [ ] rapid-mvp-builder — Feature prioritization (MoSCoW), tech stack, build plan, launch checklist
- [ ] sales-playbook-generator — Prospecting, email sequences, objection handling, demo script
- [ ] pricing-strategy-designer — Value metrics, packaging, competitive pricing, freemium vs paid
- [ ] venture-model-validator — VC-backable scorecard, comparables, online research, timing analysis
- [ ] startup-kpi-automator — KPI system by type, dashboards, growth rates, investor report template

**Suite 4: VC Operators (5 skills)**
- [ ] deal-memo-writer — Exec summary, market analysis, competitive landscape, risks, recommendation
- [ ] portfolio-reporter — Quarterly update, portfolio performance, follow-on analysis
- [ ] term-sheet-generator — Draft with market standards, term explanations, negotiation levers
- [ ] fund-performance-analyzer — TVPI, DPI, IRR, PME, vintage comparison, attribution
- [ ] thesis-builder — Thesis document, market sizing, pattern matching, anti-portfolio analysis

**Infrastructure**
- [ ] Repository structure with suites/, docs/, install.sh
- [ ] Each skill as SKILL.md with YAML frontmatter + instructions + references + templates
- [ ] install.sh for one-command install to ~/.claude/skills/
- [ ] README.md with project description, install instructions, skill catalog

**LAN OS Integration**
- [ ] Landing page section "Skills & Agents" with 4 suite cards
- [ ] Platform route /skills with grid, filters, [Usar] button
- [ ] Skills pre-loaded as system prompts in AI assistant
- [ ] Startup skills connected to their BD data (KPIs, decks, etc.)

### Out of Scope

- Autonomous agents that run without user input — skills are interactive, user-triggered
- Paid/premium skill tiers — all skills free for LAN ecosystem
- Multi-language support — Spanish UI labels, English technical terms only
- Real-time collaboration on skill outputs — single-user execution
- Custom skill builder UI — skills are authored as SKILL.md files by developers
- Integration with non-LAN platforms — skills are for LAN OS and Claude Code CLI

## Context

- **Existing ecosystem:** LAN OS is a Next.js 14+ platform with Supabase backend for LAN Accelerator (LATAM VC fund + accelerator). Frontend demo is complete and approved. Backend build is in progress.
- **Skill format:** Claude Code Skills use SKILL.md files with YAML frontmatter (name, description, triggers) and markdown instructions. Installed to `~/.claude/skills/`.
- **Bibliography foundation:** Each skill is grounded in specific, authoritative sources — not generic AI advice. Examples: Kauffman Foundation for LP analysis, Sequoia template for pitch decks, Brad Feld for term sheets, YC for startup metrics.
- **Build priority:** Start with the 5 most impactful startup skills (venture-model-validator, pitch-deck-builder, go-to-market-strategist, startup-kpi-automator, data-room-builder), then expand to other suites.
- **Integration with LAN OS:** Skills appear on the landing page as a feature section and inside the platform at /skills route. For program startups, skills connect to their data in the database.

## Constraints

- **Skill format**: Must be Claude Code compatible SKILL.md files with YAML frontmatter
- **Bibliography**: Every skill must cite specific, authoritative sources — not generic advice
- **Language**: Spanish UI labels in LAN OS integration, English for skill internals and technical terms
- **No external dependencies**: Skills are self-contained markdown — no npm packages, no APIs beyond what Claude Code provides
- **Install simplicity**: One-command install via install.sh that copies to ~/.claude/skills/
- **LAN OS compatibility**: Landing page and /skills route must match existing LAN OS design system (Tailwind, shadcn/ui, DM Serif Display headings)

## Key Decisions

| Decision | Rationale | Outcome |
|----------|-----------|---------|
| Separate repo (~/lan-skills/) | Skills are their own product, not a feature of LAN OS backend. Independent versioning and distribution. | — Pending |
| Start with 5 startup skills | Highest impact for current LAN portfolio companies. Validates skill format before building all 26. | — Pending |
| SKILL.md format over code | Skills are prompt engineering, not software. Markdown is portable, versionable, readable. | — Pending |
| Bibliography-driven design | Differentiator vs existing "VC AI tools" that are generic roleplay. Each skill cites real frameworks. | — Pending |

## Evolution

This document evolves at phase transitions and milestone boundaries.

**After each phase transition** (via `/gsd:transition`):
1. Requirements invalidated? → Move to Out of Scope with reason
2. Requirements validated? → Move to Validated with phase reference
3. New requirements emerged? → Add to Active
4. Decisions to log? → Add to Key Decisions
5. "What This Is" still accurate? → Update if drifted

**After each milestone** (via `/gsd:complete-milestone`):
1. Full review of all sections
2. Core Value check — still the right priority?
3. Audit Out of Scope — reasons still valid?
4. Update Context with current state

---
*Last updated: 2026-04-04 after initialization*
