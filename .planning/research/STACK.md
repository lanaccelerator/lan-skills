# Stack Research

**Domain:** Claude Code Skills suite (VC/startup ecosystem)
**Researched:** 2026-04-04
**Confidence:** HIGH

---

## Recommended Stack

This is a zero-dependency stack. Claude Code Skills are authored in Markdown with YAML frontmatter. There are no npm packages, build tools, or runtimes required for the skills themselves. The "stack" is the file format specification, the distribution tooling, and the repository conventions.

### Core Format

| Technology | Version | Purpose | Why Recommended |
|------------|---------|---------|-----------------|
| Agent Skills Format | Open spec (agentskills.io) | The open standard for SKILL.md files | Anthropic invented it, then released it as an open standard. Claude Code implements it natively. It is supported by Claude Code, Cursor, GitHub Copilot, OpenAI Codex, Gemini CLI, and 25+ other agents — skills written once work everywhere. |
| SKILL.md | Markdown + YAML frontmatter | The single required file per skill | Claude Code reads only `name` + `description` at startup (progressive disclosure). The body loads only when the skill activates. This design keeps context usage minimal across large skill suites. |
| Markdown | CommonMark | Skill body content | No format restrictions on the body. Markdown is version-controllable, human-readable, and renders natively in GitHub. The agent reads the raw text, not rendered HTML. |

### Distribution Tooling

| Tool | Version | Purpose | Why Recommended |
|------|---------|---------|-----------------|
| `npx skills` (skills CLI) | Latest via npx | Install, search, and publish skills | The official CLI for the Agent Skills ecosystem. Handles install to `~/.agents/skills/` and auto-creates symlinks at `~/.claude/skills/` for Claude Code. Supports global install (`-g`), project-level install, and GitHub-based distribution. |
| GitHub repository | N/A | Distribution channel | Skills are published and installed directly from GitHub repos (`npx skills add owner/repo`). No npm registry, no package.json, no publishing step beyond pushing to a public repo. |
| `install.sh` (custom) | N/A | One-command install without skills CLI | For users who do not want to use `npx skills`, a shell script that does `cp -r` or `ln -s` from the repo into `~/.claude/skills/` covers the use case. Required for LAN OS integration where skills are pre-loaded server-side. |

---

## YAML Frontmatter Specification

This is the authoritative field reference from the Agent Skills specification (agentskills.io/specification) combined with Claude Code extensions (code.claude.com/docs/en/skills).

### Required Fields

```yaml
---
name: venture-model-validator
description: >
  Validate whether a startup is VC-backable using the venture-model scorecard.
  Analyzes market size, unit economics, team, and timing. Use when a startup founder
  wants to know if their business is fundable, or when asked to evaluate
  venture-fit, VC-backability, or investment readiness.
---
```

| Field | Required | Constraints | Notes |
|-------|----------|-------------|-------|
| `name` | YES | 1-64 chars. Lowercase, numbers, hyphens only. No leading/trailing hyphens. No consecutive hyphens (`--`). Must match the directory name. | Becomes the `/slash-command` in Claude Code. |
| `description` | YES (recommended) | Max 1024 chars. If omitted, uses first paragraph of body. Front-load key use case — descriptions over 250 chars are truncated in skill listings. | The ONLY field Claude reads at startup. Drives automatic skill activation. Write it as an instruction to the agent: "Use when..." not "This skill does...". |

### Optional Fields (Agent Skills spec)

| Field | Purpose | Example |
|-------|---------|---------|
| `license` | License name or file reference | `MIT` or `Proprietary. See LICENSE.txt` |
| `compatibility` | Environment requirements. Only include if skill has specific system requirements. | `Requires Claude Code (or similar)` |
| `metadata` | Arbitrary key-value map for additional metadata | `author: lan-accelerator` / `version: "1.0"` |
| `allowed-tools` | Space-delimited pre-approved tools. Skill can invoke these without asking permission. | `Bash(git:*) Read Grep` |

### Claude Code Extension Fields

These fields are Claude Code-specific and NOT part of the base Agent Skills spec. They will not work in other agents (Cursor, Copilot, etc.) but are safe to include — other agents ignore unknown frontmatter fields.

| Field | Purpose | When to Use |
|-------|---------|-------------|
| `argument-hint` | Autocomplete hint for expected arguments | `[startup-name] [deck-url]` |
| `disable-model-invocation` | Set `true` to prevent Claude from auto-invoking. User must type `/skill-name` explicitly. | Destructive or side-effect-heavy skills (e.g., `/deploy`, `/send-email`) |
| `user-invocable` | Set `false` to hide from `/` menu. Claude loads it automatically but user cannot invoke. | Background knowledge skills |
| `context` | Set `fork` to run in an isolated subagent context | Long-running research tasks that should not pollute conversation history |
| `agent` | Subagent type when `context: fork` is set | `Explore`, `Plan`, `general-purpose` |
| `model` | Override model for this skill | Use sparingly |
| `effort` | Override effort level | `low`, `medium`, `high`, `max` |
| `paths` | Glob patterns limiting when skill auto-activates | `**/*.tsx, **/*.jsx` |
| `hooks` | Lifecycle hooks scoped to this skill | See Claude Code hooks docs |

### String Substitutions in Skill Body

Claude Code supports these dynamic placeholders in the skill body:

| Variable | Description |
|----------|-------------|
| `$ARGUMENTS` | All arguments passed when user invokes `/skill-name arg1 arg2` |
| `$ARGUMENTS[N]` | N-th argument (0-indexed) |
| `$N` | Shorthand for `$ARGUMENTS[N]` |
| `${CLAUDE_SESSION_ID}` | Current session ID |
| `${CLAUDE_SKILL_DIR}` | Absolute path to the skill's directory. Use to reference bundled scripts regardless of cwd. |

Shell command injection (runs before Claude sees the content):

```yaml
---
name: my-skill
description: Example with dynamic context
---
Current git branch: !`git branch --show-current`
```

---

## Directory Structure

### Single Skill (minimal)

```
venture-model-validator/
└── SKILL.md          # Required. Frontmatter + instructions.
```

### Single Skill (full)

```
venture-model-validator/
├── SKILL.md                     # Required: frontmatter + core instructions
├── references/
│   ├── vc-backability-criteria.md   # Detailed scoring rubrics
│   ├── comparable-companies.md      # Reference companies by sector
│   └── market-sizing-methods.md     # TAM/SAM/SOM methodology
├── templates/
│   └── scorecard-output.md          # Output format template
└── scripts/                         # Optional: executable scripts
    └── calculate-metrics.py         # For computational tasks
```

### Multi-Skill Repository (LAN Skills structure)

```
lan-skills/
├── suites/
│   ├── lp-angels/
│   │   ├── angel-investment-analyzer/
│   │   │   └── SKILL.md
│   │   └── lp-term-sheet-analyzer/
│   │       └── SKILL.md
│   ├── corporates/
│   │   └── open-innovation-scanner/
│   │       └── SKILL.md
│   ├── startups/
│   │   ├── venture-model-validator/
│   │   │   ├── SKILL.md
│   │   │   └── references/
│   │   └── pitch-deck-builder/
│   │       ├── SKILL.md
│   │       └── templates/
│   └── vc-operators/
│       └── deal-memo-writer/
│           └── SKILL.md
├── docs/
│   ├── bibliography.md              # All cited sources across skills
│   └── skill-authoring-guide.md     # How to write new skills
├── install.sh                       # Direct install: copies to ~/.claude/skills/
├── skills-lock.json                 # Locks skill versions (skills CLI)
└── README.md
```

### Install Locations (Claude Code)

| Scope | Path | Applies To |
|-------|------|-----------|
| Personal | `~/.claude/skills/<skill-name>/SKILL.md` | All projects for this user |
| Project | `.claude/skills/<skill-name>/SKILL.md` | This project only |
| Enterprise | Managed settings | All users in org |
| Skills CLI canonical | `~/.agents/skills/<skill-name>/` | Symlinked from `~/.claude/skills/` |

The skills CLI installs to `~/.agents/skills/` (shared across agents) and creates symlinks at `~/.claude/skills/` for Claude Code. For LAN Skills, the personal install path is what matters — skills are global to the user's Claude Code, not project-scoped.

---

## SKILL.md Body Content Conventions

### Progressive Disclosure Pattern

The body is the full instruction set Claude receives when the skill activates. Keep the main body under 500 lines / ~5000 tokens. Move detailed reference material to `references/` files and reference them explicitly.

```markdown
# Venture Model Validator

## When to Apply

Use this skill when a startup founder wants to know if their business
is VC-backable, or when evaluating investment readiness.

## Scoring Framework

[Core 5-10 criteria with brief descriptions]

## Output Format

[Template for scorecard output]

## Detailed Rubrics

For detailed scoring criteria, see [references/vc-backability-criteria.md](references/vc-backability-criteria.md).
Load this file when performing the actual scoring step.

## Sources

- [YC Application Questions 2025] - startup metrics benchmarks
- [Sequoia Company Design Framework] - market-first evaluation criteria
```

### Key Body Sections for LAN Skills

Every skill in this suite should include:

1. **When to Apply** — Explicit conditions. Reinforces the `description` field.
2. **Framework / Scoring Criteria** — The core intellectual content. Grounded in bibliography.
3. **Step-by-Step Workflow** — What the agent does, in order.
4. **Output Format / Template** — Exact structure of the output. Use a concrete template, not prose description.
5. **Gotchas** — Project-specific corrections. What Claude gets wrong without being told.
6. **Sources** — Specific citations: author, publication, section.

### Description Writing Rules

The description is the most important field — it determines if the skill activates at all.

**Good description (for venture-model-validator):**
```
Validate whether a startup is VC-backable using the venture-model
scorecard from the Kauffman Foundation and YC benchmarks. Analyzes
market size (TAM/SAM/SOM), unit economics (LTV/CAC), team background,
defensibility, and timing. Use when evaluating investment readiness,
VC-backability, fundability, or when a founder asks "is my startup
fundable?" or "would VCs invest in this?"
```

**Bad description (too generic):**
```
Analyzes startups. Use for startup analysis.
```

Rules:
- Use imperative phrasing: "Use when..." not "This skill..."
- Include synonyms and alternative phrasings users might say
- Name specific frameworks (YC, Sequoia, Kauffman) — signals expertise
- Stay under 250 chars for the first sentence (the part shown in listings)
- Hard limit: 1024 chars total

---

## Distribution Mechanisms

### Via skills CLI (recommended for public distribution)

```bash
# Install all skills from repo
npx skills add lan-accelerator/lan-skills

# Install globally for this user
npx skills add lan-accelerator/lan-skills -g -y

# Install specific suite only
npx skills add lan-accelerator/lan-skills -s 'venture-model-validator' -g
```

The repo must be public on GitHub. The skills CLI discovers all `SKILL.md` files automatically.

### Via install.sh (recommended for LAN OS integration)

For pre-loading skills into a server environment or controlled install:

```bash
#!/usr/bin/env bash
# install.sh — one-command install for LAN Skills
set -euo pipefail

SKILLS_DIR="${HOME}/.claude/skills"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$SKILLS_DIR"

# Install each skill suite
for suite_dir in "$SCRIPT_DIR"/suites/*/; do
  for skill_dir in "$suite_dir"*/; do
    skill_name=$(basename "$skill_dir")
    echo "Installing: $skill_name"
    rm -rf "$SKILLS_DIR/$skill_name"
    cp -r "$skill_dir" "$SKILLS_DIR/$skill_name"
  done
done

echo "LAN Skills installed to $SKILLS_DIR"
echo "Restart Claude Code to pick up new skills."
```

### Via .claude/skills/ in project repo (project-scoped)

Commit `.claude/skills/` to the LAN OS repo for skills that are project-specific. These auto-load when Claude Code is opened in the LAN OS project directory.

### skills-lock.json (version pinning)

The skills CLI generates `skills-lock.json` for reproducible installs:

```bash
# Restore exact versions from lock file
npx skills experimental_install
```

---

## Alternatives Considered

| Recommended | Alternative | Why Not Alternative |
|-------------|-------------|---------------------|
| SKILL.md (markdown) | TypeScript MCP servers | Skills require no runtime. MCP servers need Node.js, hosting, API calls. For prompt-based expertise distribution, markdown is the right primitive. |
| SKILL.md (markdown) | Claude Code custom commands (`.claude/commands/`) | Commands are project-scoped and have been merged into the skills system. Skills are the superset — they support directories, supporting files, and the full frontmatter spec. |
| GitHub distribution | npm package registry | Skills have no code to compile or execute. GitHub is sufficient. npx skills handles the install. No package.json needed. |
| Single `references/` file per skill | One giant SKILL.md | Progressive disclosure: Claude loads references on demand, not upfront. Keeps token usage minimal for complex skills with large reference corpora. |
| Per-skill directory | Single flat SKILL.md files | Directory structure enables references/, templates/, scripts/ subdirectories. Required for complex skills with supporting files. |
| Plain Markdown body | JSON/XML body | Agents read markdown naturally. No parsing overhead. Markdown renders as documentation in GitHub. |

---

## What NOT to Use

| Avoid | Why | Use Instead |
|-------|-----|-------------|
| npm packages for skills | Skills are self-contained markdown. Adding npm dependencies defeats the "no install required" design principle. | Pure markdown + optional shell scripts with inline dependencies (uv run for Python, deno for TypeScript) |
| Supabase/API calls in skill bodies | Skills have no runtime. They instruct Claude, not execute code directly. For data-connected skills (LAN OS integration), the connection is managed by the platform, not the skill itself. | Reference the data that Claude will access through its tools |
| Embedding credentials in SKILL.md | Skills are committed to version control. Secrets in skill bodies = leaked credentials. | Environment variables or MCP configuration |
| Vercel AI SDK, LangChain, etc. | These are for building AI apps, not for authoring skills. Skills are markdown prompt documents. | Plain markdown |
| Consecutive hyphens in skill names | Violates the Agent Skills spec (`--` is invalid in `name` field). | Single hyphens: `deal-memo-writer` not `deal--memo--writer` |
| Uppercase in skill names | Violates spec. | All lowercase: `pitch-deck-builder` not `PitchDeckBuilder` |
| Generic descriptions without keywords | Skill will not trigger on relevant user prompts. | Specific descriptions with domain keywords, synonyms, and explicit "use when" conditions. |

---

## Stack Patterns by Variant

**If skill has no external data requirements (most skills):**
- Pure SKILL.md with embedded framework content
- References in `references/` for long rubrics or source material
- Output templates in `templates/`
- No scripts/ directory needed

**If skill needs computational outputs (unit-economics-calculator, fund-performance-analyzer):**
- Use Python with PEP 723 inline dependencies for any scripts
- Run with `uv run scripts/calculate.py` (no separate install step)
- Script outputs to stdout as structured data (JSON or markdown table)
- Claude reads stdout and incorporates into response

**If skill is LAN OS-connected (startup-kpi-automator, data-room-builder with database):**
- Skill body describes what to analyze + output format
- Platform provides Claude with data context via system prompt injection
- Skill itself remains a static markdown file — platform handles the data layer

**If skill should not auto-activate (something with side effects):**
```yaml
disable-model-invocation: true
```
User must type `/skill-name` explicitly.

**If skill body references detailed frameworks that exceed 500-line limit:**
```markdown
# Core instructions (kept short)

For detailed scoring criteria: [references/full-rubric.md](references/full-rubric.md)
Load this file when performing step 3 (score each dimension).
```
Tell Claude explicitly when to load each reference file — do not just list the directory.

---

## Version Compatibility

| Element | Notes |
|---------|-------|
| Agent Skills spec | Open standard. Backward-compatible. New optional fields added; required fields (`name`, `description`) stable. |
| Claude Code skills | Available since Claude Code 2.0. `/slash-command` invocation stable. |
| `allowed-tools` | Experimental per spec. Implemented in Claude Code. May vary in other agents. |
| Claude Code extension fields (`context`, `agent`, `effort`, etc.) | Claude Code-specific. Safe to include — other agents ignore unknown frontmatter. |
| `npx skills` CLI | Actively maintained. Semantics stable. |
| `~/.claude/skills/` path | Stable install location for Claude Code personal skills. |
| `~/.agents/skills/` path | The canonical install path used by the skills CLI (agent-agnostic). |

---

## Sources

- [Agent Skills Specification](https://agentskills.io/specification) — Complete SKILL.md format spec. HIGH confidence.
- [Extend Claude with Skills (Claude Code Docs)](https://code.claude.com/docs/en/skills) — Claude Code-specific extensions, frontmatter fields, install locations, frontmatter reference table. HIGH confidence. Fetched 2026-04-04.
- [Agent Skills Best Practices](https://agentskills.io/skill-creation/best-practices) — Description writing, progressive disclosure, body content conventions. HIGH confidence. Fetched 2026-04-04.
- [Optimizing Skill Descriptions](https://agentskills.io/skill-creation/optimizing-descriptions) — Trigger mechanics, description optimization. HIGH confidence. Fetched 2026-04-04.
- [Agent Skills Quickstart](https://agentskills.io/skill-creation/quickstart) — Directory structure, minimal example. HIGH confidence. Fetched 2026-04-04.
- [Using Scripts in Skills](https://agentskills.io/skill-creation/using-scripts) — scripts/ directory, inline dependencies, PEP 723. HIGH confidence. Fetched 2026-04-04.
- [skills.sh Leaderboard](https://skills.sh) — Install counts, popular skills ecosystem. MEDIUM confidence (observed, not documented).
- [anthropics/skills GitHub](https://github.com/anthropics/skills) — Official Anthropic skill examples. HIGH confidence.
- [vercel-labs/agent-skills GitHub](https://github.com/vercel-labs/agent-skills) — Multi-skill repo structure reference. HIGH confidence.
- Local skill files at `~/.claude/skills/` — Observed real installed skill structure (agent-browser, find-skills, vercel-react-best-practices, web-design-guidelines, remotion-best-practices). HIGH confidence.
- `npx skills list -g` — Confirmed install path: `~/.agents/skills/` with symlinks to `~/.claude/skills/`. HIGH confidence.

---

*Stack research for: Claude Code Skills suite (VC/startup ecosystem)*
*Researched: 2026-04-04*
