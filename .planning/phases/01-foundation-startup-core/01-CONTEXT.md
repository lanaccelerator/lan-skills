# Phase 1: Foundation + Startup Core - Context

**Gathered:** 2026-04-04
**Status:** Ready for planning

<domain>
## Phase Boundary

Deliver a functional repository with infrastructure guardrails and 5 production-quality startup skills (venture-model-validator, pitch-deck-builder, go-to-market-strategist, startup-kpi-automator, data-room-builder) that LAN portfolio companies can install via `./install.sh` and use immediately in Claude Code.

</domain>

<decisions>
## Implementation Decisions

### Skill Directory Structure
- **D-01:** Each skill is a self-contained directory with: SKILL.md (YAML frontmatter + markdown body, hard limit 500 lines), TEMPLATES.md (filled example enforcing output structure), and a flat references/ directory for bibliography. No nesting beyond one level — Claude uses head-100 previews on nested references and misses content.
- **D-02:** The directory name becomes the `/slash-command` name when installed (e.g., `venture-model-validator/` → `/venture-model-validator`).

### Shared Frameworks Organization
- **D-03:** `shared/frameworks/` at repo root contains one file per canonical framework referenced by multiple skills. Files: `sequoia-deck.md`, `brad-feld-terms.md`, `yc-metrics.md`, `safe-note.md`, `vc-backable-test.md`, `ilpa-standards.md`, `latam-benchmarks.md`. Skills reference these via relative paths.
- **D-04:** Each shared framework file includes: framework name, source URL, key principles/criteria, and when-to-use guidance. These are the single source of truth — skills must not duplicate framework content.

### Install Pipeline
- **D-05:** `install.sh` installs ALL skills in one command for v1. Uses `${HOME}` not `~`, includes `mkdir -p` guards, and prints per-skill success confirmation. Target: `~/.claude/skills/` directory.
- **D-06:** Suite-selective install (`--suite startups`) deferred to v2. Full install is simple and the 26-skill startup overhead is negligible (~2.6k tokens at session start per research).

### Description Activation Pattern
- **D-07:** Every skill description uses the three-component pattern: [domain identifier] + ["ALWAYS invoke when" directive] + [negative constraint disambiguating from sibling skills]. Example: "Startup venture-scale analysis. ALWAYS invoke when a user asks to evaluate if their startup is VC-backable, investable, or venture-scale. NOT for pitch deck creation or financial modeling."
- **D-08:** Each skill must be tested with 5 natural-language phrasings before marking complete, to verify correct activation and no cross-triggering with sibling skills.

### Skill Content Standards
- **D-09:** Every skill output follows a standard structure: (1) Input gathering questions, (2) Structured analysis with tables/scorecards, (3) Framework citations with URLs, (4) LATAM Context section with LAVCA-adjusted benchmarks, (5) Actionable next steps ("Proximos Pasos").
- **D-10:** TEMPLATES.md must contain a FILLED example (not empty skeleton) so Claude has a concrete target output format. The instruction "ALWAYS use this exact template structure" must appear in the SKILL.md body.

### Build Order
- **D-11:** Infrastructure first (repo structure, shared frameworks, install.sh, README), then skills in dependency order: venture-model-validator (no dependencies) → pitch-deck-builder (references venture-model output) → go-to-market-strategist (independent) → startup-kpi-automator (independent) → data-room-builder (references all prior skill outputs).

### Claude's Discretion
- Exact YAML frontmatter fields beyond `name` and `description` — use Claude Code-compatible fields as appropriate per skill
- Internal section ordering within SKILL.md body — follow natural flow for each skill's domain
- Specific LATAM benchmarks to include — use LAVCA 2025 and Cuantico LatAm VC Report data as available

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### Project Context
- `.planning/PROJECT.md` — Project vision, constraints, key decisions
- `.planning/REQUIREMENTS.md` — Full v1 requirements with IDs (INFRA-01 through STRT-05 for this phase)

### Research Findings
- `.planning/research/STACK.md` — SKILL.md format specification, YAML frontmatter fields, distribution mechanisms
- `.planning/research/FEATURES.md` — Competitive landscape, table stakes vs differentiators, anti-features
- `.planning/research/ARCHITECTURE.md` — Repo layout, skill anatomy, shared resources, build order
- `.planning/research/PITFALLS.md` — 10 critical pitfalls with prevention strategies
- `.planning/research/SUMMARY.md` — Synthesized key findings and roadmap implications

### External Sources (for bibliography verification)
- Agent Skills specification at agentskills.io/specification
- Claude Code skills documentation at code.claude.com/docs/en/skills
- LAVCA 2025 VC data for LATAM benchmarks

</canonical_refs>

<code_context>
## Existing Code Insights

### Reusable Assets
- None — greenfield repository with no existing code

### Established Patterns
- None — this phase establishes all patterns for subsequent phases

### Integration Points
- Skills install to `~/.claude/skills/` via install.sh
- LAN OS integration deferred to Phase 4

</code_context>

<specifics>
## Specific Ideas

- Bibliography must cite the actual artifact ("YC's Series A Diligence Checklist at ycombinator.com/...") not the institution ("YC frameworks") — prevents hallucination
- Start with venture-model-validator as the first skill to write — highest uniqueness, validates the full skill authoring workflow before scaling
- LATAM context is not an afterthought — it's built into each skill from the start, with US benchmarks explicitly flagged as US-sourced
- Every evaluation skill must call out red flags explicitly, not just affirm — "what's wrong" matters more than "what's right"

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 01-foundation-startup-core*
*Context gathered: 2026-04-04*
