# Project Research Summary

**Project:** LAN Skills — Claude Code Skills Suite for VC/Startup Ecosystem
**Domain:** Prompt engineering / AI skill authoring (Claude Code Skills format)
**Researched:** 2026-04-04
**Confidence:** HIGH

## Executive Summary

LAN Skills is a suite of 26 Claude Code Skills organized into 4 audience suites (LP/Angel, Corporates, Startups, VC Operators) that deliver execution-focused VC and startup workflow outputs. The product is authored entirely in Markdown with YAML frontmatter — zero runtime dependencies, zero npm packages, zero build step. The format is the open Agent Skills standard (agentskills.io), natively implemented by Claude Code and compatible with Cursor, GitHub Copilot, and 25+ other AI coding agents. Skills distribute via a one-command `install.sh` and optionally through the Claude Code plugin marketplace. This is not a SaaS product; it is a portable, version-controlled prompt library.

The recommended build approach is to start with 5 Startup suite skills (venture-model-validator, pitch-deck-builder, go-to-market-strategist, startup-kpi-automator, data-room-builder), validate quality and activation mechanics, then expand to all 26 skills across all 4 suites. The differentiation claim against the competitive landscape (vc-skills, VC SkillPack, VC Investor Analyst) rests on three pillars: execution outputs rather than roleplay, LATAM/emerging market context built in, and every framework grounded in a verified bibliographic source. The corporate suite and VC operator suite are completely unaddressed by competitors — pure greenfield.

The dominant risk is craft failure, not technical complexity. The SKILL.md format is simple; writing skills that actually deliver measurably better outputs than zero-shot Claude is hard. The 10 documented pitfalls are almost entirely prompt engineering problems: vague activation descriptions, unverified bibliography citations, context bloat from oversized skill files, generic prose outputs where structured work products are needed, and cross-suite skill conflicts. Every pitfall has a known prevention pattern. The first phase must establish the infrastructure guardrails (YAML linter, description activation test, TEMPLATES.md requirement, 500-line limit enforcement) before any skill content is authored — retrofitting these constraints across 26 skills is expensive.

## Key Findings

### Recommended Stack

LAN Skills requires no runtime stack in the traditional sense. The "stack" is the Agent Skills file format specification, the distribution tooling, and repository conventions. Every skill is a directory containing a SKILL.md file with YAML frontmatter (name, description, optional fields) and a markdown body. Supporting files (references/, templates/, examples/) live inside the skill directory and are loaded progressively by Claude only when the task requires them.

**Core technologies:**
- **SKILL.md (Agent Skills format):** The single required file per skill. Claude reads only `name` + `description` at startup (~100 tokens per skill); the body loads on invocation. Open standard, backward compatible, supported by Claude Code and 25+ agents.
- **GitHub repository:** The distribution channel. No npm registry, no package.json. Skills are installed directly from GitHub via `npx skills add lan-accelerator/lan-skills` or via `install.sh`.
- **install.sh (custom shell script):** One-command install for personal (`~/.claude/skills/`) and project-scoped (`.claude/skills/`) environments. Required for LAN OS pre-loading. Must use `${HOME}` not `~` and include `mkdir -p` guards.
- **shared/frameworks/:** Canonical source for bibliography material referenced by multiple skills (sequoia-deck.md, brad-feld-terms.md, ilpa-standards.md, yc-metrics.md, safe-note.md, vc-backable-test.md). Single source prevents drift across 26 skills.
- **skills-catalog.ts (LAN OS integration):** Static TypeScript mirror of SKILL.md frontmatter metadata. Drives the LAN OS /skills route without runtime markdown parsing. Updated as part of skill authoring, not fetched live.

### Expected Features

**Must have (table stakes) — every skill:**
- Structured markdown output (tables, scorecards, memos) — users need copy-pasteable work products
- Input gathering flow (numbered questions Claude asks sequentially) — skills must ask for missing data
- Stage-appropriate framing (pre-seed vs Series A advice differs completely)
- Specific numbers and benchmarks from authoritative sources, not generic ranges
- Actionable "Proximos Pasos" / next steps section in every skill output
- Explicit red flag / error calling — must identify what is wrong, not just affirm
- Framework citation — which framework is being applied and where it comes from
- LATAM context annotation — US benchmarks flagged as such; LATAM-adjusted figures included

**Should have (competitive differentiation):**
- Execution outputs, not roleplay — skills GENERATE decks, memos, scorecards, not simulate investor personas
- Bibliography-verified frameworks — every cited source resolves to a real, accessible URL
- TEMPLATES.md with filled examples, not empty skeletons — enforces output structure stability
- Cross-suite coherence — LP side and startup side use consistent scoring criteria
- venture-model-validator (highest-uniqueness skill — no competitor has this)
- corporate suite (4 skills) — entirely unaddressed by all competitors
- VC operator suite (5 skills) — entirely unaddressed in Claude Code ecosystem

**Defer to v2+:**
- Real-time market data fetching (hallucination risk too high; ask user to paste their own data)
- VC persona roleplay mode (anti-feature — produces entertaining responses, not work products)
- Collaboration / multi-user editing (requires backend infrastructure out of scope)
- Premium paywalled tier (violates LAN's free-for-ecosystem decision)
- Suite 1: LP & Angel (5 skills) — lower immediate demand; build after Startup + Operator suites
- Suite 2: Corporates (4 skills) — build after Startup suite is validated

### Architecture Approach

The repository structure groups skills by buyer persona (4 suite directories under `suites/`), with a `shared/` directory for frameworks and bibliography referenced by multiple skills, `docs/` for contributor guides, and `scripts/install.sh` as the distribution entry point. Skills are self-contained directories — the folder name becomes the `/slash-command` and travels as a unit when installed. A `skills-catalog.ts` static file in LAN OS mirrors SKILL.md frontmatter for the platform UI, decoupling runtime display from markdown parsing. The LAN OS integration has two modes: (1) copy `/skill-name` to clipboard for Claude Code users, and (2) in-platform AI assistant that builds a system prompt from SKILL.md content + startup Supabase context, routed through the existing BYOK billing layer.

**Major components:**
1. **suites/ (4 directories):** The skill content library. 26 skills across LP/Angel, Corporates, Startups, VC Operators. Each skill is a self-contained directory with SKILL.md, references/, templates/, examples/.
2. **shared/frameworks/ + shared/bibliography.md:** Canonical source for cross-referenced frameworks. Prevents content drift. Referenced via relative path from skill directories.
3. **install.sh:** The distribution entry point. Handles personal and project-scoped installs. Includes platform detection, mkdir -p guards, and per-skill success verification.
4. **LAN OS /skills route + skills-catalog.ts:** Platform integration layer. Static catalog drives the UI; SKILL.md content fetched from GitHub raw URL only when the in-platform AI assistant is invoked.
5. **LAN OS /api/ai/skill route:** Builds system prompt from SKILL.md + Supabase startup context. Routes through BYOK billing. Returns streamed Claude API response.

### Critical Pitfalls

1. **Vague skill descriptions cause activation failures** — Write descriptions using the three-component pattern: [domain identifier] + ["ALWAYS invoke when" directive] + [negative constraint disambiguating from sibling skills]. Test 5 natural-language phrasings per skill before marking complete. This is the #1 failure mode in the ecosystem.

2. **Bibliography hallucination** — Every cited framework must resolve to a specific, accessible URL before the skill ships. Cite the actual artifact ("YC's Series A Diligence Checklist at ycombinator.com/...") not the institution ("YC frameworks"). This is the core differentiator; if it fails, the product's main value claim collapses.

3. **Context window bloat from oversized SKILL.md files** — Hard limit: 500 lines per SKILL.md body. Move detailed content to references/, templates/, examples/ and load progressively. Maximum one level of reference depth — Claude uses head -100 previews on nested references and misses content.

4. **Generic prose instead of structured work products** — Every skill with a document output requires a TEMPLATES.md with a filled (not empty) example. "ALWAYS use this exact template structure" must appear as an explicit instruction. Validate that two runs on the same input produce identical output structure.

5. **Cross-suite skill conflicts** — With 26 skills installed, semantically adjacent skills fire on each other's triggers. Include audience/persona identifier in every description ("For STARTUP FOUNDERS (not VC analysts)...") and add negative constraints. Test cross-suite disambiguation with ambiguous queries before each new suite ships.

6. **US-centric frameworks without LATAM adaptation** — LAN's users are LATAM-based. Every skill with quantitative benchmarks must include a LATAM Context section with LAVCA/Kaszek/Monashees data. Mark US benchmarks explicitly. This is a systemic issue, not per-skill — establish the pattern in Phase 1 so all 26 skills inherit it.

## Implications for Roadmap

Based on research, suggested phase structure:

### Phase 1: Foundation Infrastructure + First 5 Startup Skills
**Rationale:** Repository structure, linting, SKILL.md template, install.sh, and the shared/frameworks/ seed must exist before any skill content is authored. Retrofitting these constraints across 26 skills is expensive. The first 5 startup skills validate the quality bar and serve LAN's highest-immediate-demand users (portfolio startups).
**Delivers:** Functional repository with infrastructure guardrails + 5 production-quality startup skills. install.sh working on macOS, Linux, WSL. YAML linter and frontmatter validator committed as scripts/validate.sh.
**Addresses:** venture-model-validator, pitch-deck-builder, go-to-market-strategist, startup-kpi-automator, data-room-builder (P1 features from FEATURES.md)
**Avoids:** Context bloat (500-line limit enforced from day 1), bibliography hallucination (REFERENCES.md URL verification required to merge), vague descriptions (activation test before ship), install failures (mkdir -p + ${HOME} + platform detection)

### Phase 2: Remaining Startup Suite (7 Skills)
**Rationale:** The first 5 skills establish patterns and validate quality. The remaining 7 startup skills follow the same conventions and build on the foundation skills (unit-economics-calculator is a prerequisite for fundraising-readiness-audit; competitive-landscape-mapper feeds sales-playbook-generator).
**Delivers:** Complete 12-skill Startup suite. Users can run the full founder journey from "is my model fundable?" through to data room generation and sales execution.
**Addresses:** unit-economics-calculator, fundraising-readiness-audit, deck-reviewer, competitive-landscape-mapper, sales-playbook-generator, pricing-strategy-designer, rapid-mvp-builder (P2 features)
**Uses:** shared/frameworks/ established in Phase 1 (yc-metrics.md, sequoia-deck.md, safe-note.md, vc-backable-test.md already exist)
**Avoids:** Cross-skill conflicts — deck-reviewer vs pitch-deck-builder must be explicitly disambiguated in descriptions

### Phase 3: VC Operator Suite (5 Skills)
**Rationale:** LAN team uses these for their own deal workflow. They have the deepest domain knowledge to validate quality. These 5 skills depend on startup-side frameworks already built in Phases 1-2 (thesis-builder constrains deal-memo-writer; portfolio-reporter depends on startup KPI output format from startup-kpi-automator).
**Delivers:** 5 VC operator skills: deal-memo-writer, portfolio-reporter, term-sheet-generator, fund-performance-analyzer, thesis-builder. Complete Suite 4.
**Addresses:** P2 features from FEATURES.md for VC operator audience
**Avoids:** Cross-suite conflicts with startup-side skills — deal-memo-writer (VC analyst) must be explicitly distinguished from pitch-deck-builder (founder) in descriptions

### Phase 4: LP & Angel Suite (5 Skills)
**Rationale:** LP users are the secondary audience after startups and operators. The lp-term-sheet-analyzer depends on brad-feld-terms.md (already built for Phase 3 term-sheet-generator). angel-investment-analyzer and venture-model-validator are mirrors — same scoring criteria from opposite perspectives, so venture-model-validator (Phase 1) must exist first.
**Delivers:** 5 LP/Angel skills: angel-investment-analyzer, vc-fund-due-diligence, portfolio-construction-advisor, lp-term-sheet-analyzer, startup-valuation-checker. Complete Suite 1.
**Addresses:** P2 features for LP/Angel audience
**Avoids:** Activation conflict between angel-investment-analyzer (LP side) and venture-model-validator (founder side) — descriptions must anchor to audience

### Phase 5: Corporate Suite (4 Skills) + LAN OS Integration
**Rationale:** Corporate suite is most independent — shares no frameworks with Suites 1, 3, or 4. Build last. LAN OS /skills route and skills-catalog.ts can be added here as a capstone, once the full catalog is stable enough to catalog.
**Delivers:** 4 Corporate skills: open-innovation-scanner, startup-solution-matcher, corporate-venture-evaluator, pilot-program-designer. LAN OS /skills route with 4 suite cards, skills-catalog.ts, and the in-platform AI assistant skill launcher.
**Addresses:** P3 features + LAN OS integration architecture
**Avoids:** LAN OS tight coupling (skills-catalog.ts is a static copy, not a live read of SKILL.md files at runtime)

### Phase Ordering Rationale

- **Infrastructure before content:** The pitfall research is unambiguous — installing guardrails after 26 skills are written is expensive. Phase 1 establishes the pattern every subsequent skill follows.
- **Startup suite first:** Highest immediate demand from LAN portfolio companies. Validates the format on the most complex output types (pitch decks, data rooms) before extending to other audiences.
- **VC Operators before LPs:** Operators (deal memos, term sheets) depend on startup-side output formats established in Phase 2. LPs (fund analysis, valuation) depend on both startup and operator frameworks.
- **Corporates last:** No shared framework dependencies with the other 3 suites. Can ship last without blocking anything.
- **LAN OS integration with Phase 5:** The skills-catalog.ts should be written once the full catalog is stable. Building it in Phase 1 with 5 skills means 5 rewrites as 21 more skills are added.

### Research Flags

Phases likely needing deeper research during planning:
- **Phase 3 (VC Operators):** Term sheet generation and fund performance analysis require precise financial calculation templates. Brad Feld "Venture Deals" term taxonomy and ILPA waterfall mechanics need verified, detailed references before authoring. Recommend a focused references research session before writing SKILL.md files.
- **Phase 4 (LP & Angel):** ILPA model LPA content and clawback/waterfall mechanics are legally specific. vc-fund-due-diligence in particular requires a verified source for GP track record analysis criteria. Recommend bibliography verification pass before authoring.
- **Phase 5 (LAN OS integration):** The skills-catalog.ts generation script and the /api/ai/skill route are real code, not just markdown. These need engineering planning for the Supabase startup context bridge and BYOK routing.

Phases with standard patterns (skip research-phase):
- **Phase 1 (Foundation):** Repository structure, install.sh mechanics, YAML validation, and 500-line limit enforcement are fully documented in official Anthropic docs. No research needed.
- **Phase 2 (Startup suite expansion):** Follows exact same patterns established in Phase 1. Startup domain frameworks (YC, Sequoia, SaaS metrics) are well-documented. No new infrastructure research needed.

## Confidence Assessment

| Area | Confidence | Notes |
|------|------------|-------|
| Stack | HIGH | Official Anthropic docs + verified live skill repositories. Agent Skills spec is stable and open. Distribution via GitHub + install.sh is established pattern. |
| Features | HIGH (ecosystem survey) / MEDIUM (competitor gap analysis) | Competitor feature inventory based on direct product research. Gap analysis is well-supported. LATAM-specific differentiation claim is HIGH confidence (LAVCA data). |
| Architecture | HIGH | Primary sources: official Claude Code docs, Anthropic platform docs, live skill repositories. Directory structure and progressive disclosure mechanics verified against working skills. |
| Pitfalls | HIGH | Mix of official Anthropic docs (pitfalls 3, 8, 10), peer-reviewed research (bibliography hallucination rates), and community-verified findings with multiple corroborating sources. |

**Overall confidence:** HIGH

### Gaps to Address

- **Commet billing integration for LAN OS skill invocations:** Not addressed in this research (out of scope for the lan-skills repo itself, but relevant to Phase 5 LAN OS integration). Handle during LAN OS Phase 5 engineering planning by referencing the LAN OS CLAUDE.md billing architecture.
- **Plugin marketplace availability timeline:** Claude Code plugin marketplace distribution (`/plugin install`) is documented but availability for third-party publishers is not confirmed. Default to install.sh for v1; add plugin.json as a forward-compatible enhancement in Phase 5.
- **Windows/WSL user base size:** Research documents the install.sh failure modes on Windows but does not quantify how many LAN users are on Windows. If meaningful, add a PowerShell install script. Default: document WSL path in README, revisit if user support requests arrive.
- **LATAM benchmark sources for corporate suite:** The LAVCA and Kaszek/Monashees sources cover startup and fund metrics well, but LATAM corporate innovation benchmarks (pilot success rates, CVC deal terms) are less documented. Phase 5 bibliography research may surface gaps.

## Sources

### Primary (HIGH confidence)
- [Agent Skills Specification](https://agentskills.io/specification) — Complete SKILL.md format spec, frontmatter fields, install locations
- [Extend Claude with Skills — Claude Code Docs](https://code.claude.com/docs/en/skills) — Claude Code extensions, slash-command mechanics, directory structure
- [Skill authoring best practices — Anthropic Platform Docs](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices) — Description writing, progressive disclosure, anti-patterns
- [Agent Skills overview — Claude API Docs](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) — Loading architecture, context window token costs
- [Create plugins — Claude Code Docs](https://code.claude.com/docs/en/plugins) — Plugin manifest, marketplace distribution
- [anthropics/skills GitHub](https://github.com/anthropics/skills) — Official Anthropic skill examples, canonical directory patterns
- [SkillReducer: Optimizing LLM Agent Skills — arxiv](https://arxiv.org/html/2603.29919) — 60%+ non-actionable content finding, 500-line performance threshold
- [AI Hallucinations in Research — Enago Academy](https://www.enago.com/academy/ai-hallucinations-research-citations/) — 17-40% citation hallucination rate in LLM literature reviews
- [LAVCA: 2025 Latin American Startup Ecosystem Insights](https://www.lavca.org/research/2025-latin-american-startup-ecosystem-insights/) — LATAM VC benchmarks

### Secondary (MEDIUM confidence)
- [vc-skills on awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code/issues/917) — Competitor feature inventory (28 VC personas)
- [VC SkillPack](https://vc-skillpack.vercel.app/) — Competitor feature inventory ($199, 10 skills)
- [VC Investor Analyst on mcpmarket.com](https://mcpmarket.com/tools/skills/vc-investor-analyst) — Competitor scoring + outreach features
- [Claude Code Skills Don't Auto-Activate — Scott Spence](https://scottspence.com/posts/claude-code-skills-dont-auto-activate) — Activation failure community verification
- [Inside Claude Code Skills — Mikhail Shilkov](https://mikhail.io/2025/10/claude-code-skills/) — Skill tool injection mechanics
- [alirezarezvani/claude-skills GitHub](https://github.com/alirezarezvani/claude-skills) — 248-skill suite, install.sh pattern reference
- [Tenity: Open Innovation Program Strategy](https://www.tenity.com/blog/open-innovation-program-strategy-how-corporates-work-with-startups) — Corporate innovation framework for Suite 2
- [BVP: AI Pricing and Monetization Playbook](https://www.bvp.com/atlas/the-ai-pricing-and-monetization-playbook) — AI-era pricing models for pricing-strategy-designer
- [Carta: VC Fund Performance Q4 2025](https://carta.com/data/vc-fund-performance-q4-2025/) — Fund metrics benchmarks for Suite 4

### Tertiary (LOW confidence)
- [Claude Skills: The Controllability Problem — paddo.dev](https://paddo.dev/blog/claude-skills-controllability-problem/) — Activation control edge cases; needs validation against current Claude Code version
- [Commet documentation](https://commet.co/docs) — LATAM billing platform; confidence is LOW for integration specifics (requires onboarding to access full docs)

---
*Research completed: 2026-04-04*
*Ready for roadmap: yes*
