# How to Create a Skill

This guide covers everything needed to author a new skill for the LAN Skills repository, from directory structure to validation. Read this before writing a single line of a new SKILL.md.

## 1. Skill Directory Structure

Each skill is a self-contained directory under `suites/{suite-name}/{skill-name}/`. The directory name becomes the `/slash-command` when installed.

**Required files:**

```
suites/startups/my-new-skill/
├── SKILL.md        # YAML frontmatter + skill instructions (≤500 lines)
├── TEMPLATES.md    # Filled output example (NOT an empty skeleton)
└── references/     # Bibliography files (one level deep only)
    ├── framework-criteria.md
    └── latam-context.md
```

**Rules:**
- `SKILL.md` is required. No other file is optional if it is referenced in SKILL.md.
- `TEMPLATES.md` is required per QUAL-09. It must contain a filled example — not a skeleton with empty brackets.
- `references/` must be one level deep. No file inside `references/` may link to another file in `references/`. Claude uses `head -100` previews and will miss deeply nested content.
- Hard limit: SKILL.md must be ≤500 lines. Move detailed content to `references/` and `TEMPLATES.md`.

## 2. YAML Frontmatter Specification

The frontmatter controls how Claude Code discovers and activates the skill. A single YAML error causes Claude Code to silently ignore the skill — no error message.

**Minimal valid frontmatter:**

```yaml
---
name: my-new-skill
description: >
  Domain identifier. ALWAYS invoke when a user asks [exact scenario].
  NOT for [adjacent skill scenario].
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---
```

**Validation rules (all enforced by validate.sh):**

| Field | Rule | Failure Mode |
|-------|------|-------------|
| `name` | 1–64 chars. Lowercase, numbers, hyphens only. No leading/trailing/consecutive hyphens (`--`). Must match the directory name exactly. | Skill silently ignored by Claude Code |
| `description` | Max 1024 chars. First 250 chars shown in listings — front-load the use case. No XML tags (`<`, `>`). Cannot be empty. | Wrong trigger or no trigger |
| `name` = directory name | `my-new-skill/` → `name: my-new-skill` | Slash-command mismatch; invocation fails |

**What NOT to put in frontmatter:**
- No XML or HTML tags in `description`
- No uppercase in `name`
- No underscores in `name` (use hyphens)
- No consecutive hyphens: `deal--memo` is invalid

## 3. The Three-Component Description Pattern

The `description` field is the only thing Claude reads at session start. It controls when and whether the skill activates on natural language input. Getting this wrong means the skill never triggers.

**Pattern:**

```
[domain identifier] + [ALWAYS invoke when directive] + [negative constraint]
```

**Why each component matters:**

- **Domain identifier:** Signals to Claude what kind of task this is. "Startup venture-scale analysis" tells Claude this is about startup evaluation before any trigger logic runs.
- **ALWAYS invoke when:** Imperative language. Claude has a tendency to under-trigger on natural language. "ALWAYS invoke when" overrides that tendency for matching queries.
- **Negative constraint:** Prevents cross-triggering when multiple skills are installed. Without "NOT for pitch deck creation," `/venture-model-validator` may activate on deck-related queries that should route to `/pitch-deck-builder`.

**Verified examples from the Phase 1 startup suite:**

```
venture-model-validator:
"Startup venture-scale analysis. ALWAYS invoke when a user asks to evaluate
if their startup is VC-backable, investable, or venture-scale. NOT for pitch
deck creation or financial modeling."

pitch-deck-builder:
"Startup investor presentation builder. ALWAYS invoke when a user wants to
create, structure, or outline a pitch deck or investor presentation. NOT for
reviewing an existing deck or validating the business model."

go-to-market-strategist:
"Startup go-to-market strategy designer. ALWAYS invoke when a user asks how
to acquire customers, design a GTM plan, choose growth channels, or build a
90-day launch plan. NOT for pitch deck creation or unit economics calculation."
```

The negative constraint is **mandatory**. Without it, all five startup skills will cross-trigger on overlapping queries once all are installed simultaneously.

## 4. SKILL.md Body Structure

Every skill body must contain these sections in this order. Claude reads from top to bottom — section order affects what gets executed first.

```markdown
# [Skill Name]

## Input Gathering

[Numbered questions Claude asks before starting work]
[Ask all questions in one message — do not interrogate one at a time]
[Provide defaults or "enter N/A if unknown" options — don't block on missing data]

## Framework Applied

[What framework is being used and why]
[Link to references/ file: See [references/framework-name.md](references/framework-name.md)]
[Never paste the full framework content inline — link to references/]

## Workflow

[Numbered steps Claude executes in sequence]
[Each step either produces output or reads a reference]

## Output Format

ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example.

## LATAM Context

See [references/latam-context.md](references/latam-context.md) — read before
scoring any metric. US benchmarks require LATAM annotation.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — direct, no-sugarcoating,
unicorn-bar evaluation. You are NOT a cheerleader. If the work is weak,
say it's weak and explain exactly why. If it's exceptional, acknowledge
specifically which metric, which benchmark, and why it matters.

## Próximos Pasos

[3–5 specific, actionable next steps for the founder/operator after this output]
[Not "continue building" — specific: "Run the Sean Ellis PMF survey with your
first 40 users. >40% must say they'd be 'very disappointed' if the product
disappeared."]

## Sources

[Inline citation list matching references/ files]
- [Source Name](URL) — what it covers
```

## 5. TEMPLATES.md Requirement

`TEMPLATES.md` must contain a **filled** example output — not an empty skeleton.

**Why this matters:** Empty templates produce generic output. Claude sees `[Insert market analysis here]` and fills it with generic text. Claude sees a filled example with real numbers, specific structure, and named companies and matches that quality and format.

The filled example does not need to be real — use a hypothetical startup ("Hypothetical: ContaFácil, B2B SaaS invoice automation for LATAM SMBs, Pre-seed, $15K MRR, Mexico-first").

**Required instruction in SKILL.md body:**

```markdown
ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.
```

This instruction must appear verbatim in the `## Output Format` section. It is not optional.

**Red flags for review:** If two runs on similar inputs produce structurally different output, the TEMPLATES.md is too thin or too abstract.

## 6. LATAM Context Requirement

Every skill with quantitative benchmarks must reference `shared/frameworks/latam-benchmarks.md`. US benchmarks must not appear without LATAM annotation.

**Required in references/latam-context.md:**

```markdown
See @shared/frameworks/latam-benchmarks.md for canonical LATAM VC benchmark data.

When presenting benchmarks, follow this annotation protocol:
- Label US benchmarks: `(US-sourced benchmark, [Source])`
- Follow with LATAM figure: `(LATAM, LAVCA 2025)` or `(LATAM, Cuantico 2026)`
- Note the direction: LATAM advantage, LATAM discount, or same as US
```

**Example in skill output:**

> CAC payback: 12–18 months is "good" *(US-sourced benchmark, Bessemer Cloud Index)*
> CAC payback in LATAM: 6–12 months; 60% of Brazilian SaaS recover in <6 months *(LATAM, Cuantico 2026)*

**Why this matters:** LAN Skills are built for LATAM founders and operators. US benchmarks applied to LATAM companies give wrong answers. A LATAM SaaS company with a 9-month CAC payback looks "underperforming" against US standards; it is actually top-quartile for its market.

**LATAM benchmark sources (verified, use these URLs):**
- LAVCA 2025: `https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf`
- Cuantico 2026: `https://reports.cuanticovp.com/latin-america-vc-report-2026/`
- LAVCA Trends 2025: `https://www.lavca.org/wp-content/uploads/2025/02/LAVCA_Trends-in-Tech-2025.pdf`

## 7. Tone & Editorial Voice Requirement

Every SKILL.md must include the following section. It is **not optional**. This is the difference between useful feedback and empty encouragement.

```markdown
## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — direct, no-sugarcoating,
unicorn-bar evaluation. You are NOT a cheerleader. If the work is weak,
say it's weak. If it's exceptional, acknowledge specifically.
```

**Why this section exists:** Without an explicit tone directive, Claude defaults to encouraging, hedging language that softens critique. This is actively harmful to founders who need honest feedback to improve their companies. A skill that says "Your TAM analysis is fiction" and explains exactly why is more valuable than a skill that says "Your TAM analysis could be strengthened."

**The full tone specification is in `shared/frameworks/editorial-voice.md`.** The section in SKILL.md is a pointer — not a duplicate. Do not copy the banned phrases list or voice model descriptions into every skill. Point to the shared file.

## 8. Validation Before Commit

Run `./validate.sh` from the repo root before every commit. Fix all `FAIL` lines before submitting a pull request.

```bash
./validate.sh
```

What the validator checks:
- `name` field exists and matches directory name
- `name` length ≤64 characters
- `name` charset: only `[a-z0-9-]`
- `SKILL.md` line count ≤500 (WARN, not FAIL)

Common validation failures:
- `name` contains uppercase → change to lowercase
- `name` contains underscore → replace with hyphen
- `name` does not match directory → rename one of them
- `name` has consecutive hyphens → fix `my--skill` to `my-skill`

## 9. Activation Testing

Before a skill can be merged, it must be tested with **5 natural-language phrasings** to verify it activates correctly and does not cross-trigger sibling skills.

**For a hypothetical `/competitive-landscape-mapper` skill:**

| Phrasing | Expected Behavior |
|---------|------------------|
| "Who are my competitors?" | Should activate `/competitive-landscape-mapper` |
| "Map the competitive landscape for our fintech startup" | Should activate `/competitive-landscape-mapper` |
| "What differentiates us from alternatives?" | Should activate `/competitive-landscape-mapper` |
| "Build me a 2x2 matrix of my competitors" | Should activate `/competitive-landscape-mapper` |
| "I need to analyze competition for my pitch deck" | Should activate `/pitch-deck-builder` (NOT competitive-landscape-mapper) |

The last phrasing tests that the negative constraint in `/pitch-deck-builder` does NOT prevent it from activating when the user mentions pitch and competition together — and that `/competitive-landscape-mapper` does NOT incorrectly activate on "for my pitch deck."

**Document test results** in a `TEST-ACTIVATION.md` file in the skill directory during development. Remove before merging to keep directory clean.

## 10. Anti-Patterns to Avoid

These patterns consistently produce low-quality skills that fail validation or produce poor outputs:

### Inline Framework Content

**Wrong:** Paste the full Sequoia 10-slide structure directly into SKILL.md.

**Right:** Put it in `references/sequoia-deck.md` and link to it, or reference `shared/frameworks/sequoia-deck.md`.

Why: SKILL.md should be ≤500 lines. Full framework content bloats it past the limit and loads unnecessary tokens on every invocation.

### Generic Descriptions

**Wrong:** `"Startup analysis skill. Use when you want to analyze your startup."`

**Right:** `"Startup venture-scale analysis. ALWAYS invoke when a user asks to evaluate if their startup is VC-backable, investable, or venture-scale. NOT for pitch deck creation or financial modeling."`

Why: Generic descriptions do not trigger on natural language. Claude needs domain vocabulary, imperative activation language, and a negative constraint to route correctly.

### Empty TEMPLATES.md

**Wrong:** A skeleton with only `[Insert analysis here]` placeholders.

**Right:** A fully filled example with a hypothetical startup, real-looking numbers, and the complete output structure including all table columns and section headings.

Why: Claude uses the template as a quality target. Empty templates produce generic prose.

### Nested Reference Files

**Wrong:** `SKILL.md → references/overview.md → references/details.md → references/rubric.md`

**Right:** `SKILL.md → references/overview.md` AND `SKILL.md → references/rubric.md` (both directly referenced)

Why: Claude reads reference files with a `head -100` preview and may not reach content in deeply nested files. All files must be directly referenced from SKILL.md.

### US-Only Benchmarks

**Wrong:** "A good LTV/CAC ratio is 3:1 or higher."

**Right:** "LTV/CAC ≥3:1 at Series A *(US-sourced benchmark, a16z)*. In LATAM, top-quartile SaaS firms reach 5:1 due to lower CAC *(LATAM, Cuantico 2026)*."

Why: LAN Skills are for LATAM operators. US benchmarks applied without context give wrong answers.

### Missing Negative Constraints

**Wrong:** `"Startup analysis. ALWAYS invoke when user asks about their startup."`

**Right:** `"Startup venture-scale analysis. ALWAYS invoke when a user asks to evaluate if their startup is VC-backable. NOT for pitch deck creation or financial modeling."`

Why: Without negative constraints, all five startup skills will cross-trigger when installed together.

### Banned Phrases in Output

**Never write:** "Great start!", "Really interesting idea", "You're on the right track", "I appreciate you sharing this"

These phrases are documented in `shared/frameworks/editorial-voice.md`. They communicate nothing, protect the speaker's comfort at the expense of the founder's growth, and undermine the core value proposition of LAN Skills.

## 11. Shared Frameworks — When to Create vs. Reference

**Rule:** If 2+ skills reference the same framework, it belongs in `shared/frameworks/`. If only one skill uses it, it belongs in that skill's `references/` directory.

**Files in shared/frameworks/ (canonical, do not duplicate):**

| File | Covers | Skills That Reference It |
|------|--------|--------------------------|
| `sequoia-deck.md` | Sequoia 10-slide pitch structure | pitch-deck-builder, deck-reviewer |
| `brad-feld-terms.md` | Venture Deals term taxonomy | term-sheet-generator, fundraising-agent, lp-term-sheet-analyzer |
| `yc-metrics.md` | YC metrics + a16z 16 Metrics | startup-kpi-automator, fundraising-readiness-audit, deal-memo-writer |
| `safe-note.md` | YC SAFE variants and mechanics | term-sheet-generator, fundraising-agent |
| `vc-backable-test.md` | YC/Thiel/a16z/Sequoia VC backability criteria | venture-model-validator, deal-memo-writer |
| `ilpa-standards.md` | ILPA reporting and LP standards | portfolio-reporter, lp-term-sheet-analyzer, vc-fund-due-diligence |
| `latam-benchmarks.md` | LAVCA 2025 + Cuantico 2026 LATAM data | All 5 Phase 1 startup skills |
| `editorial-voice.md` | Tone enforcement | All skills |
| `company-brain-integration.md` | Company brain (MCP) read-first and write-back, drafts-only outbound, scheduled runs in Claude Code and Codex | meeting-notes-to-brain, all-hands-prep, lead-to-proposal, investor-update-compiler, data-room-builder |

**To reference a shared framework from a skill:**

In `references/latam-context.md` (or wherever LATAM context is loaded):
```markdown
See @shared/frameworks/latam-benchmarks.md for benchmark data.
```

In SKILL.md body:
```markdown
## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — direct, no-sugarcoating, unicorn-bar evaluation.
```

**Do NOT inline the content** from shared frameworks into individual skill files. The `shared/frameworks/` directory is the single source of truth. If a framework needs updating, it is updated once and all skills get the update.
