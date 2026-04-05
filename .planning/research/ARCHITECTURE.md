# Architecture Research

**Domain:** Claude Code Skills Suite for VC/Startup Ecosystem
**Researched:** 2026-04-04
**Confidence:** HIGH (primary sources: official Claude Code docs, Anthropic platform docs, live skill repositories)

---

## Standard Architecture

### System Overview

```
┌─────────────────────────────────────────────────────────────────────┐
│                     lan-skills/ repository                          │
├─────────────────┬───────────────────────────────────────────────────┤
│  Skill Suites   │  Suite 1: LP & Angel (5 skills)                   │
│  suites/        │  Suite 2: Corporates (4 skills)                   │
│                 │  Suite 3: Startups (12 skills)                    │
│                 │  Suite 4: VC Operators (5 skills)                 │
├─────────────────┼───────────────────────────────────────────────────┤
│  Skill Anatomy  │  SKILL.md (frontmatter + instructions)            │
│  Per-skill dir  │  references/ (frameworks, templates, bibliography)│
│                 │  templates/ (output format templates)             │
│                 │  examples/ (sample outputs for Claude guidance)   │
├─────────────────┼───────────────────────────────────────────────────┤
│  Shared         │  shared/frameworks/ (SAFE, YC, Sequoia, etc.)     │
│  Resources      │  shared/templates/ (reusable output formats)      │
│                 │  shared/bibliography/ (source reference index)    │
├─────────────────┼───────────────────────────────────────────────────┤
│  Distribution   │  install.sh (copies to ~/.claude/skills/)         │
│  Layer          │  .claude-plugin/ + plugin.json (marketplace)      │
│                 │  README.md (catalog + install instructions)       │
├─────────────────┼───────────────────────────────────────────────────┤
│  LAN OS         │  /skills route (Next.js page, 4 suite cards)      │
│  Integration    │  Landing page section (feature highlight)         │
│                 │  AI assistant system prompt loader                │
│                 │  Startup data bridge (KPIs, decks → skill context)│
└─────────────────┴───────────────────────────────────────────────────┘
```

### Data Flow: Skill → Install → Claude Code → Output

```
Authoring
  lan-skills/suites/startups/pitch-deck-builder/
    SKILL.md                     ← YAML frontmatter + instructions
    references/sequoia-deck.md   ← Sequoia template, loaded on demand
    references/yc-frameworks.md  ← YC advice, loaded on demand
    templates/deck-outline.md    ← Output format template
    examples/sample-output.md    ← Example Claude output
       │
       ▼
Distribution
  install.sh copies skill dir → ~/.claude/skills/pitch-deck-builder/
  OR: /plugin install lan-skills@lan-accelerator  (plugin marketplace)
       │
       ▼
Runtime (Claude Code)
  1. Session start: SKILL.md frontmatter (name + description) loaded
     into system prompt as available_skills list (~100 tokens/skill)
  2. User invokes /pitch-deck-builder  OR  Claude auto-triggers
  3. Claude reads SKILL.md body (~2–5k tokens)
  4. Claude reads references/*.md  only  when needed (progressive load)
  5. Claude produces structured output (slide outline, data prompts, etc.)
       │
       ▼
LAN OS Integration
  /skills route → [Usar] button → copy /skill-name to clipboard
  OR: AI assistant loads skill as system prompt with startup DB context
```

---

## Recommended Repository Structure

```
lan-skills/
├── .claude-plugin/
│   └── plugin.json              # Plugin manifest (name, version, author)
├── suites/
│   ├── lp-angel/                # Suite 1
│   │   ├── angel-investment-analyzer/
│   │   │   ├── SKILL.md         # Frontmatter + core instructions
│   │   │   ├── references/
│   │   │   │   ├── kauffman-criteria.md
│   │   │   │   └── angel-red-flags.md
│   │   │   └── templates/
│   │   │       └── scorecard.md
│   │   ├── vc-fund-due-diligence/
│   │   ├── portfolio-construction-advisor/
│   │   ├── lp-term-sheet-analyzer/
│   │   └── startup-valuation-checker/
│   ├── corporates/              # Suite 2
│   │   ├── open-innovation-scanner/
│   │   ├── startup-solution-matcher/
│   │   ├── corporate-venture-evaluator/
│   │   └── pilot-program-designer/
│   ├── startups/                # Suite 3 (build first)
│   │   ├── venture-model-validator/     # Priority 1
│   │   ├── pitch-deck-builder/          # Priority 2
│   │   ├── go-to-market-strategist/     # Priority 3
│   │   ├── startup-kpi-automator/       # Priority 4
│   │   ├── data-room-builder/           # Priority 5
│   │   ├── deck-reviewer/
│   │   ├── unit-economics-calculator/
│   │   ├── fundraising-readiness-audit/
│   │   ├── competitive-landscape-mapper/
│   │   ├── rapid-mvp-builder/
│   │   ├── sales-playbook-generator/
│   │   └── pricing-strategy-designer/
│   └── vc-operators/            # Suite 4
│       ├── deal-memo-writer/
│       ├── portfolio-reporter/
│       ├── term-sheet-generator/
│       ├── fund-performance-analyzer/
│       └── thesis-builder/
├── shared/
│   ├── frameworks/
│   │   ├── safe-note.md         # Standard SAFE terms (YC)
│   │   ├── sequoia-deck.md      # Sequoia pitch deck template
│   │   ├── vc-backable-test.md  # VC-backable startup criteria
│   │   ├── ilpa-standards.md    # ILPA LP reporting standards
│   │   └── brad-feld-terms.md   # Venture Deals term sheet logic
│   ├── templates/
│   │   ├── scorecard.md         # Generic scorecard output format
│   │   ├── executive-summary.md # Deal memo / report exec summary
│   │   ├── risk-matrix.md       # Risk analysis table format
│   │   └── financial-model.md   # Unit economics table format
│   └── bibliography.md          # Authoritative sources index (all 26 skills)
├── docs/
│   ├── skill-authoring-guide.md # How to write a new skill
│   ├── bibliography-guide.md    # How to add/cite sources
│   └── lan-os-integration.md    # How /skills route connects
├── scripts/
│   └── install.sh               # One-command install to ~/.claude/skills/
├── README.md                    # Catalog + install + per-skill descriptions
└── .planning/                   # GSD planning artifacts (not distributed)
    └── research/
```

### Structure Rationale

- **suites/:** Groups skills by buyer persona (LP, Corporate, Startup, VC Operator). The suite is the unit of discovery on the LAN OS /skills page — 4 suite cards map to 4 directories.
- **Each skill is a self-contained directory:** Claude Code requires this. The folder name becomes the /slash-command. Supporting files (references/, templates/) live inside the skill dir so the skill travels as a unit when installed.
- **shared/:** Frameworks and bibliography sources that multiple skills reference (e.g., Sequoia deck is referenced by pitch-deck-builder AND deck-reviewer). Storing once prevents drift. Skills reference with relative path: `../../shared/frameworks/sequoia-deck.md`.
- **docs/:** Human-readable guides for contributors, not loaded by Claude during skill execution. Keeps authoring standards documented without bloating skill context.
- **scripts/install.sh:** Single entry point for the install experience. Handles both personal install (`~/.claude/skills/`) and project install (`.claude/skills/`).
- **.claude-plugin/:** Enables future Claude Code marketplace distribution. Skills inside `suites/` are exposed via the plugin system under namespace `lan-skills:skill-name`.

---

## Skill File Anatomy

### SKILL.md Structure (Authoritative)

Every skill requires exactly this structure:

```yaml
---
name: skill-name-with-hyphens        # Max 64 chars, lowercase+hyphens only
description: |
  [Third person. What it does + when to use it. Front-load key use case.]
  [Max 1024 chars. Truncated to 250 chars in skill listing — front-load.]
  [Example: "Builds a structured pitch deck outline with slide-by-slide
  talking points, data requirements, and common error warnings. Use when
  a startup needs to prepare a deck for investor meetings."]
disable-model-invocation: false       # true = manual /invoke only
user-invocable: true                  # false = Claude-only background skill
allowed-tools: Read Grep              # Limit tool scope for output-only skills
effort: medium                        # low|medium|high|max
---

# [Skill Name]

## What This Skill Produces

[One paragraph. Concrete output description. "This skill produces a X-slide
pitch deck outline with Y talking points per slide and Z data prompts."]

## Frameworks Applied

This skill applies:
- [Framework 1] — See [references/framework1.md](references/framework1.md)
- [Framework 2] — See [references/framework2.md](references/framework2.md)

[Direct references one level deep only. Never nest reference → reference.]

## Instructions

[Step-by-step workflow. Numbered. Concrete. Under 500 lines total for SKILL.md.]

### Step 1: Gather Context
Ask the user for: [specific inputs needed]

### Step 2: Apply Framework
[Clear instructions. High/medium/low freedom as appropriate to task fragility.]

### Step 3: Produce Output
Use the template in [templates/output-name.md](templates/output-name.md).

## Output Format

[If no separate template, inline the format here.]
[Use strict template for scorecards, financial models — fragile outputs.]
[Use flexible guidance for narrative outputs — creative latitude is good.]

## Common Errors to Flag

- [Error 1 to check for in the user's input]
- [Error 2 to check for]

## Sources

[Inline citation list — same sources that appear in references/ files.]
```

### Supporting File Patterns

```
skill-name/
├── SKILL.md                    Required. Frontmatter + core instructions.
│                               Keep under 500 lines. Point to references.
├── references/
│   ├── primary-framework.md    Primary authoritative source (e.g., Sequoia deck)
│   ├── secondary-source.md     Supporting framework or bibliography source
│   └── red-flags.md            Domain-specific warning signs / anti-patterns
├── templates/
│   └── output-template.md      Exact output format for fragile/structured outputs
└── examples/
    └── sample-output.md        Example Claude output (for description accuracy)
```

**When to use each file type:**

| File Type | Use When | Example |
|-----------|----------|---------|
| references/*.md | Authoritative source content Claude should read and apply | Sequoia pitch deck criteria, ILPA standards, Brad Feld term definitions |
| templates/*.md | Output must follow exact format (scorecards, financial tables, data rooms) | Scorecard with weighted criteria, unit economics table |
| examples/*.md | Output quality depends on seeing a concrete example | Pitch deck outline with realistic slide content |

**Progressive disclosure rule:** All supporting files referenced from SKILL.md must be exactly one level deep. Never reference a file that references another file — Claude uses `head -100` previews on deeply nested references and may miss content.

---

## Shared Resources Architecture

### shared/frameworks/ (Canonical Source)

Frameworks shared across multiple skills live here. Skills reference via relative path. This prevents drift (Sequoia deck updated in one place, not in 5 skills).

| File | Referenced By | Source |
|------|--------------|--------|
| `sequoia-deck.md` | pitch-deck-builder, deck-reviewer | Sequoia Capital pitch deck template |
| `safe-note.md` | startup-valuation-checker, fundraising-readiness-audit, lp-term-sheet-analyzer | YC SAFE documentation |
| `vc-backable-test.md` | venture-model-validator, angel-investment-analyzer | YC/a16z VC-backable criteria |
| `brad-feld-terms.md` | lp-term-sheet-analyzer, term-sheet-generator | Venture Deals (Feld & Mendelson) |
| `ilpa-standards.md` | vc-fund-due-diligence, portfolio-reporter, fund-performance-analyzer | ILPA Principles |
| `yc-metrics.md` | startup-kpi-automator, fundraising-readiness-audit | YC Startup Metrics guide |

### shared/bibliography.md (Index File)

Master index of all authoritative sources used across all 26 skills. Format:

```markdown
# LAN Skills Bibliography

## Primary Sources

| Source | Author | Use Case | Skills |
|--------|--------|----------|--------|
| Venture Deals | Brad Feld, Jason Mendelson | Term sheet analysis | lp-term-sheet-analyzer, term-sheet-generator |
| The Lean Startup | Eric Ries | MVP methodology | rapid-mvp-builder |
| YC Startup School | Y Combinator | Metrics, fundraising | startup-kpi-automator, fundraising-readiness-audit |
...
```

---

## Install Pipeline Architecture

### install.sh Mechanics

```bash
#!/bin/bash
# install.sh — LAN Skills installer

INSTALL_DIR="${1:-$HOME/.claude/skills}"  # Default: personal install
SKILLS_DIR="$(dirname "$0")/suites"

mkdir -p "$INSTALL_DIR"

# Install all skills across all suites
for suite_dir in "$SKILLS_DIR"/*/; do
  for skill_dir in "$suite_dir"*/; do
    skill_name=$(basename "$skill_dir")
    target="$INSTALL_DIR/$skill_name"

    if [ -d "$target" ]; then
      echo "Updating: $skill_name"
      rm -rf "$target"
    else
      echo "Installing: $skill_name"
    fi

    cp -r "$skill_dir" "$target"
  done
done

echo ""
echo "Installed $(ls $INSTALL_DIR | wc -l | tr -d ' ') skills to $INSTALL_DIR"
echo "Run 'claude' and type '/' to see available skills."
```

**Install variants:**
- Personal (global): `./install.sh` → `~/.claude/skills/` — available in all projects
- Project-scoped: `./install.sh ./.claude/skills/` — available in current project only
- Suite-only: Future `./install.sh --suite startups` — install one suite

**Collision behavior:** Existing skill dir is deleted and replaced. This is intentional for updates (no stale files from previous versions).

### Plugin-Based Distribution (Future)

When skills are packaged as a Claude Code plugin, installation becomes:

```
/plugin marketplace add lan-accelerator/lan-skills
/plugin install lan-skills@lan-accelerator
```

Plugin structure adds `.claude-plugin/plugin.json`:
```json
{
  "name": "lan-skills",
  "description": "VC and startup execution skills for the LAN Accelerator ecosystem",
  "version": "1.0.0",
  "author": { "name": "LAN Accelerator" },
  "homepage": "https://lan-os.vercel.app/skills",
  "repository": "https://github.com/lan-accelerator/lan-skills"
}
```

All skills remain in `suites/` subdirectories. Plugin system maps them with namespace prefix: `/lan-skills:pitch-deck-builder`.

**Note:** The plugin model namespaces all skills (e.g., `/lan-skills:pitch-deck-builder` vs `/pitch-deck-builder`). The standalone install.sh model produces the short names users prefer. Build standalone install first; add plugin packaging later.

---

## LAN OS Integration Architecture

### Component Boundaries

| Component | Responsibility | Location |
|-----------|---------------|----------|
| Landing Page Section | Marketing feature highlight for skills, 4 suite feature cards, install CTA | `/src/app/(public)/page.tsx` |
| /skills Route | Authenticated platform route, skill catalog grid, filter by suite, [Usar] button | `/src/app/(platform)/skills/page.tsx` |
| Skill Detail Panel | Side panel or modal with skill description, input requirements, example output | `/src/app/(platform)/skills/[skill-name]/` |
| AI Skill Loader | API route that builds system prompt from skill SKILL.md + user's startup context | `/src/app/api/ai/skill/route.ts` |
| Startup Data Bridge | Fetches startup KPIs/profile from Supabase to inject into skill context | `/src/app/api/ai/skill/context.ts` |

### Data Flow: LAN OS Platform

```
User (startup role)
  │
  ▼ clicks [Usar] on /skills grid
LAN OS /skills/[skill-name]
  │
  ├── Skill metadata (description, input prompts) — read from skills JSON catalog
  │   (static data file: src/data/skills-catalog.ts — mirrors SKILL.md frontmatter)
  │
  └── [Open in Claude / Copy Prompt] button
        │
        ├── Option A: Copy /skill-name to clipboard
        │   User pastes into Claude Code terminal
        │
        └── Option B: AI assistant in-platform
              │
              ▼
            API Route: /api/ai/skill
              │
              ├── Reads SKILL.md from lan-skills/ via filesystem or GitHub raw URL
              ├── Fetches startup context from Supabase (KPIs, products, stage)
              │   WHERE startup_id = auth.uid()
              ├── Builds system prompt:
              │   [SKILL.md instructions] + [Startup context from DB]
              ├── Calls Claude API (Anthropic SDK, startup's BYOK key if set)
              └── Returns streamed skill output
```

### skills-catalog.ts Pattern

Skills metadata lives in LAN OS as a static TypeScript catalog that mirrors SKILL.md frontmatter. This avoids reading markdown files at runtime and supports filtering/search:

```typescript
// src/data/skills-catalog.ts
export type SkillSuite = 'lp-angel' | 'corporates' | 'startups' | 'vc-operators'

export interface SkillEntry {
  id: string              // matches skill dir name: 'pitch-deck-builder'
  name: string            // display name: 'Pitch Deck Builder'
  suite: SkillSuite
  description: string     // mirrors SKILL.md description field
  inputs: string[]        // what user needs to provide
  outputs: string[]       // what the skill produces
  frameworks: string[]    // bibliography sources applied
  buildPhase: number      // which LAN Skills phase this is built in
}

export const SKILLS_CATALOG: SkillEntry[] = [
  {
    id: 'pitch-deck-builder',
    name: 'Pitch Deck Builder',
    suite: 'startups',
    description: 'Builds a structured pitch deck outline...',
    inputs: ['Startup name', 'Problem statement', 'Target market', 'Traction metrics'],
    outputs: ['Slide-by-slide outline', 'Talking points per slide', 'Data gaps to fill'],
    frameworks: ['Sequoia Pitch Deck', 'YC Application criteria'],
    buildPhase: 1,
  },
  // ... 25 more entries
]
```

This catalog drives the /skills route grid, the landing page feature section, and the in-platform skill launcher without parsing markdown at runtime.

### Landing Page Section Structure

The landing page section (added to LAN OS public page) follows the existing design system:

```
[Skills & Agents — DM Serif Display heading]
[Subtitle in grey]

[4 Suite Cards — same card pattern used for features]
  LP & Angel    Corporates    Startups    VC Operators
  5 skills      4 skills      12 skills   5 skills

[CTA: Ver todos los skills →]  [Install for Claude Code ↓]
```

The landing page section is purely static data — no Supabase queries. Uses `SKILLS_CATALOG` filter to count skills per suite.

---

## Architectural Patterns

### Pattern 1: Progressive Disclosure in Skill Design

**What:** SKILL.md stays under 500 lines with only the core workflow. Detailed frameworks, reference tables, and templates live in separate files referenced from SKILL.md. Claude loads them only when the task requires it.

**When to use:** Always. Every skill. Even simple ones should put their bibliography source in references/, not inline.

**Why:** Context window is shared with conversation history. 26 skills at 5k tokens each = 130k tokens if all loaded at once. With progressive disclosure, only the invoked skill loads; metadata for all 26 skills consumes ~2.6k tokens.

**Example:**
```markdown
## Frameworks Applied
- Sequoia 10-slide framework — see [references/sequoia-deck.md](references/sequoia-deck.md)
- YC common errors — see [references/yc-deck-errors.md](references/yc-deck-errors.md)
```

Not:
```markdown
## Sequoia Framework
[2000 tokens of Sequoia deck content inline]
```

### Pattern 2: Strict Templates for Fragile Outputs

**What:** For outputs where format deviates = wrong output (scorecards, financial tables, term sheet analysis, KPI dashboards), provide an exact template in `templates/output-template.md` with explicit "ALWAYS use this exact structure" instruction.

**When to use:** Scorecards, unit economics, fund performance metrics, term sheet summaries — anything numerical or structured.

**Why:** Claude has latitude to be creative. For VC-grade financial outputs, deviation from standard format breaks comparability. Explicit templates eliminate variance.

**Example (in SKILL.md):**
```markdown
## Output Instructions
ALWAYS use the exact template structure in [templates/scorecard.md](templates/scorecard.md).
Do not add or remove rows. Do not change column headings.
```

### Pattern 3: Bibliography-Anchored Instructions

**What:** Every claim, framework step, or evaluation criterion in a skill cites its authoritative source. This is the differentiator vs generic AI VC tools.

**When to use:** Always. Every framework applied in a skill must trace to a real source in bibliography.md.

**Why:** "Score this startup's TAM on a 1-5 scale" is generic. "Score using the Sequoia market sizing framework from [references/sequoia-deck.md]" is authoritative and verifiable. Users trust the output more; the skill is defensible.

### Pattern 4: Invocation Control by Side Effect

**What:** Use `disable-model-invocation: true` for any skill that sends, publishes, or produces a final artifact. Use default (Claude can auto-invoke) for analysis/advisory skills.

**When to use:**
- `disable-model-invocation: true`: data-room-builder (creates files), sales-playbook-generator (produces final doc)
- Default: venture-model-validator (analysis), competitive-landscape-mapper (research)

**Why:** Claude should not auto-trigger a skill that builds a data room structure when the user just asks "how ready am I for fundraising?" — that question triggers fundraising-readiness-audit, not data-room-builder.

---

## Build Order and Dependencies

### Skill Build Dependencies

```
Foundation (no skill dependencies)
  ├── venture-model-validator    ← Uses vc-backable-test.md (shared)
  ├── unit-economics-calculator  ← Self-contained financial framework
  └── startup-kpi-automator      ← Uses yc-metrics.md (shared)

Depends on foundation
  ├── pitch-deck-builder         ← References unit economics format
  ├── fundraising-readiness-audit ← References unit economics + KPI outputs
  └── go-to-market-strategist    ← References unit economics (CAC/LTV)

Depends on pitch-deck-builder
  └── deck-reviewer              ← Must know pitch-deck-builder output format

Depends on fundraising-readiness-audit
  └── data-room-builder          ← Knows what docs fundraising audit flags missing
```

### Suite Build Order

Build Suite 3 (Startups) first — highest impact for LAN portfolio companies, validates skill format before expanding to 26. Within Suite 3:

1. **venture-model-validator** — Validates the core premise before any other work
2. **pitch-deck-builder** — Most-requested output; establishes output template pattern
3. **go-to-market-strategist** — Feeds into pitch deck chapter 5-7
4. **startup-kpi-automator** — KPI system feeds into deck and data room
5. **data-room-builder** — Integrates outputs from all four above

Then build shared/ foundations (sequoia-deck.md, safe-note.md, vc-backable-test.md) before Suite 1 (LP & Angel) or Suite 4 (VC Operators), since both reference startup-side frameworks from Suite 3.

Suite 2 (Corporates) is most independent — build last since it shares no frameworks with Suites 1/3/4.

---

## Anti-Patterns

### Anti-Pattern 1: Inline Framework Content

**What people do:** Paste the full Sequoia pitch deck criteria, Brad Feld term definitions, or ILPA standards directly into SKILL.md.

**Why it's wrong:** SKILL.md body loads into context every time the skill is invoked. 2000 tokens of inline framework content × 5 skills running in one session = 10k tokens of framework overhead, leaving less context for the user's actual company data and conversation history.

**Do this instead:** Create `references/sequoia-deck.md`, put the full content there, and in SKILL.md write: "Apply the Sequoia 10-slide framework in [references/sequoia-deck.md](references/sequoia-deck.md)."

### Anti-Pattern 2: One Giant Skill

**What people do:** Create a `startup-analyzer` skill that "does everything" — pitch deck, KPIs, GTM, valuation, fundraising readiness in one SKILL.md.

**Why it's wrong:** Claude loads the entire SKILL.md when invoked. A 2000-line SKILL.md exceeds the 500-line performance threshold. User cannot invoke just the GTM section. Skills cannot be individually improved or versioned. The /skills catalog becomes useless — one entry vs 12.

**Do this instead:** One skill per discrete output. go-to-market-strategist, startup-kpi-automator, and pitch-deck-builder are separate skills that can reference each other's outputs.

### Anti-Pattern 3: Generic Descriptions

**What people do:** Write descriptions like "Helps with startup pitch decks" or "Analyzes investments."

**Why it's wrong:** Claude uses the description to decide when to auto-invoke a skill. Descriptions are also truncated to 250 characters in the skill listing. Vague descriptions → wrong triggers, missed triggers, and poor discoverability on the /skills route.

**Do this instead:** "Builds slide-by-slide pitch deck outline with Sequoia framework, talking points, required data per slide, and common error warnings. Use when preparing an investor presentation or reviewing deck structure." Front-load the key use case.

### Anti-Pattern 4: Cross-Skill Invocation Without Context

**What people do:** Have pitch-deck-builder call /startup-kpi-automator as a dependency mid-execution.

**Why it's wrong:** Skills are not functions. They are prompt injections. Chaining skills in Claude Code requires `context: fork` and subagent setup — overhead not justified for this use case. It also creates a user experience where invoking one skill silently triggers another, producing surprising behavior.

**Do this instead:** In pitch-deck-builder's instructions, say "If KPI data is not available, suggest the user run /startup-kpi-automator first." Let the user sequence skills consciously.

### Anti-Pattern 5: LAN OS Tight Coupling

**What people do:** Build LAN OS /skills route that reads SKILL.md files directly from the lan-skills/ repo at runtime (filesystem read or GitHub raw fetch per request).

**Why it's wrong:** Skills catalog changes require a deploy. GitHub rate limits apply. Runtime latency per page load. Skills format changes break the platform.

**Do this instead:** Maintain `skills-catalog.ts` in LAN OS as a versioned static copy of skill metadata. Update it as part of the skill authoring process. Skill content (SKILL.md body) is only fetched when a user opens the in-platform AI assistant — once per session, not on every page load.

---

## Integration Points

### External Services

| Service | Integration Pattern | Notes |
|---------|---------------------|-------|
| Claude Code CLI | Skill installed to ~/.claude/skills/ via install.sh; invoked with /skill-name | No API call — skill is just prompt injection at invocation time |
| LAN OS Supabase | Startup context (KPIs, stage, products) fetched per user session for AI assistant integration | Auth required — only startup role gets their own data; admin gets any startup |
| Anthropic Claude API | Called from LAN OS /api/ai/skill route; uses startup's BYOK key if configured, LAN key otherwise | Same BYOK billing logic as rest of LAN OS |
| Claude Code Plugin Marketplace | Future: /plugin install lan-skills@lan-accelerator; skills namespaced as /lan-skills:name | Not required for v1 |

### Internal Boundaries

| Boundary | Communication | Notes |
|----------|---------------|-------|
| lan-skills repo ↔ LAN OS | skills-catalog.ts static file; SKILL.md content via GitHub raw URL for AI assistant | skills repo is the source; LAN OS mirrors metadata only |
| Skill ↔ shared/frameworks | Relative file path in SKILL.md references/ links | Path: `../../shared/frameworks/sequoia-deck.md` from skill dir |
| LAN OS /skills route ↔ AI assistant | Same page: [Usar] button opens assistant panel with skill pre-loaded as system prompt | No separate API call for routing — skill ID in query param |
| Startup data bridge ↔ Supabase | Server-side fetch in /api/ai/skill/context.ts using service_role (RLS-aware: filters by auth.uid()) | Same pattern as rest of LAN OS API routes |

---

## Scaling Considerations

| Scale | Architecture Adjustments |
|-------|--------------------------|
| 5 skills (v1) | Single install.sh, no plugin needed, skills-catalog.ts hand-maintained |
| 26 skills (v2) | Same install.sh, add plugin.json for marketplace, generate skills-catalog.ts from SKILL.md frontmatter via script |
| 50+ skills (future) | Claude Code plugin with suite-level install flags, skill versioning in plugin.json, automated frontmatter validation in CI |

### Scaling Priorities

1. **First bottleneck:** skills-catalog.ts becomes stale when skills are updated. Fix: add a `scripts/generate-catalog.ts` script that parses SKILL.md frontmatter and writes `skills-catalog.ts`. Run in CI on merge.

2. **Second bottleneck:** shared/frameworks/ grows and individual skills duplicate references. Fix: already addressed by shared/ architecture. Enforce via authoring guide: "check shared/bibliography.md before creating a new references/ file."

---

## Sources

- [Extend Claude with skills - Claude Code Docs](https://code.claude.com/docs/en/skills) — Authoritative. SKILL.md format, frontmatter fields, directory structure, progressive disclosure.
- [Agent Skills Overview - Anthropic Platform Docs](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) — Level 1/2/3 loading architecture, progressive disclosure mechanics, context window token costs.
- [Skill authoring best practices - Anthropic Platform Docs](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices) — Description writing, conciseness, template patterns, anti-patterns, checklist.
- [Create plugins - Claude Code Docs](https://code.claude.com/docs/en/plugins) — Plugin manifest structure, plugin.json schema, skill namespacing, marketplace distribution.
- [anthropics/skills GitHub Repository](https://github.com/anthropics/skills) — Canonical skill directory patterns, category organization.
- [alirezarezvani/claude-skills](https://github.com/alirezarezvani/claude-skills) — 248-skill suite, install.sh pattern, suite-based organization, shared scripts approach.
- [Inside Claude Code Skills - Mikhail Shilkov](https://mikhail.io/2025/10/claude-code-skills/) — Invocation mechanism: Skill tool injects SKILL.md content as prompt expansion.

---

*Architecture research for: Claude Code Skills Suite (lan-skills)*
*Researched: 2026-04-04*
