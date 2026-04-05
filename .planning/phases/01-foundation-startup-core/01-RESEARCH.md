# Phase 1: Foundation + Startup Core — Research

**Researched:** 2026-04-04
**Domain:** Claude Code Skills authoring (SKILL.md format), VC/startup frameworks, LATAM benchmarks, shell install pipeline
**Confidence:** HIGH

---

<user_constraints>
## User Constraints (from CONTEXT.md)

### Locked Decisions

- **D-01:** Each skill is a self-contained directory with: SKILL.md (YAML frontmatter + markdown body, hard limit 500 lines), TEMPLATES.md (filled example enforcing output structure), and a flat references/ directory for bibliography. No nesting beyond one level.
- **D-02:** The directory name becomes the `/slash-command` name when installed (e.g., `venture-model-validator/` → `/venture-model-validator`).
- **D-03:** `shared/frameworks/` at repo root contains one file per canonical framework referenced by multiple skills. Files: `sequoia-deck.md`, `brad-feld-terms.md`, `yc-metrics.md`, `safe-note.md`, `vc-backable-test.md`, `ilpa-standards.md`, `latam-benchmarks.md`.
- **D-04:** Each shared framework file includes: framework name, source URL, key principles/criteria, and when-to-use guidance. Skills reference via relative paths.
- **D-05:** `install.sh` installs ALL skills in one command for v1. Uses `${HOME}` not `~`, includes `mkdir -p` guards, and prints per-skill success confirmation. Target: `~/.claude/skills/` directory.
- **D-06:** Suite-selective install (`--suite startups`) deferred to v2.
- **D-07:** Every skill description uses the three-component pattern: [domain identifier] + ["ALWAYS invoke when" directive] + [negative constraint disambiguating from sibling skills].
- **D-08:** Each skill must be tested with 5 natural-language phrasings before marking complete, to verify correct activation and no cross-triggering with sibling skills.
- **D-09:** Every skill output follows a standard structure: (1) Input gathering questions, (2) Structured analysis with tables/scorecards, (3) Framework citations with URLs, (4) LATAM Context section with LAVCA-adjusted benchmarks, (5) Actionable next steps ("Proximos Pasos").
- **D-10:** TEMPLATES.md must contain a FILLED example (not empty skeleton). "ALWAYS use this exact template structure" must appear in SKILL.md body.
- **D-11:** Build order: venture-model-validator → pitch-deck-builder → go-to-market-strategist → startup-kpi-automator → data-room-builder.

### Claude's Discretion

- Exact YAML frontmatter fields beyond `name` and `description` — use Claude Code-compatible fields as appropriate per skill
- Internal section ordering within SKILL.md body — follow natural flow for each skill's domain
- Specific LATAM benchmarks to include — use LAVCA 2025 and Cuantico LatAm VC Report data as available

### Deferred Ideas (OUT OF SCOPE)

- None — discussion stayed within phase scope
</user_constraints>

---

<phase_requirements>
## Phase Requirements

| ID | Description | Research Support |
|----|-------------|------------------|
| INFRA-01 | Repository has suites/ directory with 4 suite subdirectories (lp-angel, corporate, startup, vc-operator) | Repo structure pattern in ARCHITECTURE.md; build only startups/ in Phase 1 |
| INFRA-02 | Each skill is a self-contained directory with SKILL.md (YAML frontmatter + markdown body <500 lines) | STACK.md spec + ARCHITECTURE.md anatomy section |
| INFRA-03 | shared/frameworks/ directory with canonical bibliography files referenced by multiple skills | ARCHITECTURE.md shared resources section + D-03 from CONTEXT.md |
| INFRA-04 | install.sh with platform-safe paths (${HOME} not ~), mkdir -p guards, per-skill success confirmation | PITFALLS.md Pitfall 7 + ARCHITECTURE.md install pipeline + D-05 |
| INFRA-05 | README.md with project description, install instructions, full skill catalog with descriptions | Standard GitHub repo practice; contents defined by project scope |
| INFRA-06 | YAML frontmatter includes name, description (<250 chars activation trigger), and applicable Claude Code fields | STACK.md YAML spec section (HIGH confidence, official docs) |
| INFRA-07 | Every skill description uses three-component pattern: domain + ALWAYS + negative constraint | D-07; PITFALLS.md Pitfall 1; proven 100% activation rate per research |
| INFRA-08 | docs/how-to-create-skills.md contributor guide | No external research needed; template documented in ARCHITECTURE.md |
| QUAL-01 | Every skill produces structured markdown output (tables, scorecards, memos) | PITFALLS.md Pitfall 9; ARCHITECTURE.md Pattern 2 |
| QUAL-02 | Every skill has an input gathering flow — asks user for missing data before generating | FEATURES.md table stakes section |
| QUAL-03 | Every skill branches on stage input (pre-seed, seed, Series A) where applicable | FEATURES.md table stakes + skill-specific framework research |
| QUAL-04 | Every skill includes specific numbers and benchmarks from authoritative sources | Verified benchmark sources: LAVCA 2025, Cuantico 2026, BVP Cloud 100, YC Library |
| QUAL-05 | Every skill ends with actionable next steps section | PITFALLS.md UX section; D-09 mandates "Próximos Pasos" |
| QUAL-06 | Every evaluation skill calls out red flags and errors explicitly | FEATURES.md table stakes; D-09 |
| QUAL-07 | Every skill cites which framework is being applied with source reference | PITFALLS.md Pitfall 2 (bibliography hallucination prevention) |
| QUAL-08 | Every skill includes LATAM context annotations — LAVCA/Cuantico benchmarks | PITFALLS.md Pitfall 6; LAVCA 2025 + Cuantico 2026 verified sources |
| QUAL-09 | Every skill has TEMPLATES.md with a filled (not empty) example | PITFALLS.md Pitfall 4 + Pitfall 9; D-10 |
| QUAL-10 | Every skill's references/ files cite specific URLs that resolve to real, accessible sources | PITFALLS.md Pitfall 2; URL verification required before merging |
| STRT-01 | venture-model-validator — VC-backable scorecard, YC/Thiel/a16z/Sequoia/Gurley frameworks | Framework sources verified in research (see Code Examples section) |
| STRT-02 | pitch-deck-builder — Sequoia template, YC Series A, Kawasaki, Reid Hoffman frameworks | Sequoia 10-slide structure confirmed via official source |
| STRT-03 | go-to-market-strategist — Moore/Weinberg/YC/a16z frameworks, GTM channel plan, 90-day plan | Frameworks verified accessible |
| STRT-04 | startup-kpi-automator — BVP Cloud Index, OpenView, YC metrics, a16z 16 Metrics, Carta KPIs | All verified sources found and accessible (2025 editions) |
| STRT-05 | data-room-builder — Visible.vc template, NFX guide, Stripe Atlas data room | Visible.vc verified accessible; NFX and Stripe Atlas URLs to verify |
</phase_requirements>

---

## Summary

Phase 1 delivers the repository scaffold and 5 production-quality startup skills in dependency order. The primary technical challenge is not code — it is prompt engineering discipline. Skills must balance brevity (under 500 lines), specificity (grounded in verifiable bibliography), and LATAM relevance (LAVCA/Cuantico benchmarks alongside US-sourced frameworks). The infrastructure layer (install.sh, shared/frameworks/, YAML linting, README) must be built and tested before any skill is authored, because violations discovered mid-authoring are expensive to retrofit across 5 skills.

The five skills in this phase form a complete fundraising preparation pipeline: venture-model-validator (should I raise?) → pitch-deck-builder (how do I pitch?) → go-to-market-strategist (what's my GTM?) → startup-kpi-automator (what do I track?) → data-room-builder (what documents do I need?). Each skill output feeds the next, and data-room-builder is explicitly the integration point for all prior outputs.

The LATAM context requirement is non-negotiable — every skill with quantitative benchmarks must carry LAVCA 2025 and Cuantico 2026 annotations. The 2025 LATAM VC data is now available (LAVCA published 2025 Startup Ecosystem Insights; Cuantico published LatAm VC Report 2026 with 2025 actuals) and provides verified, citable sources for all five startup skills.

**Primary recommendation:** Build infrastructure first (repo layout, shared frameworks, install.sh, validate.sh, README), then author skills in D-11 dependency order, with each skill requiring a filled TEMPLATES.md and 5-query activation test before merging.

---

## Standard Stack

### Core

| Technology | Version | Purpose | Why Standard |
|------------|---------|---------|--------------|
| SKILL.md (YAML frontmatter + markdown body) | Agent Skills open spec (agentskills.io) | The required file per skill | Claude Code implements this natively. Only `name` + `description` load at startup; body loads on invocation. Progressive disclosure design keeps session token cost minimal. |
| CommonMark markdown | N/A | Skill body content | Agents read markdown naturally. Human-readable, version-controllable, renders in GitHub. |
| YAML | YAML 1.1 (frontmatter) | Frontmatter format | Standard for Claude Code skills. Whitespace-sensitive — must validate. |
| Bash shell script | POSIX-compatible | install.sh | Zero runtime dependency. Copies skill dirs to `~/.claude/skills/`. Required by INFRA-04. |

### Supporting Files Per Skill

| File | Purpose | Required? |
|------|---------|-----------|
| `SKILL.md` | Frontmatter + core instructions | YES — spec requires it |
| `TEMPLATES.md` | Filled output example enforcing structure | YES per QUAL-09 and D-10 |
| `references/` | Bibliography files (frameworks, benchmarks, red flags) | YES per QUAL-10; one level deep only |

### Repo-Level Supporting Files

| File/Dir | Purpose |
|----------|---------|
| `shared/frameworks/` | Canonical bibliography referenced by multiple skills |
| `install.sh` | One-command install to `~/.claude/skills/` |
| `validate.sh` | Pre-commit SKILL.md YAML linter (name length, charset, description length) |
| `README.md` | Install instructions + full skill catalog (INFRA-05) |
| `docs/how-to-create-skills.md` | Contributor guide (INFRA-08) |

### What NOT to Use

| Avoid | Why |
|-------|-----|
| npm packages | Skills are self-contained markdown; no install step should be required |
| API calls in skill bodies | Skills have no runtime; they instruct Claude, not execute code |
| Embedded credentials | Skills are committed to version control |
| `~` in shell scripts | `~` expansion is shell-specific; use `${HOME}` instead (PITFALLS.md Pitfall 7) |
| Nested references (A → B → C) | Claude uses `head -100` preview on nested files; never reaches deep content (PITFALLS.md Pitfall 10) |
| Uppercase or underscores in skill names | Violates Agent Skills spec |
| Consecutive hyphens in skill names | Violates Agent Skills spec (`--` is invalid) |

---

## Architecture Patterns

### Repository Structure (Phase 1 Scope)

```
lan-skills/
├── suites/
│   ├── lp-angel/               # Empty dir — placeholder for Phase 3
│   ├── corporates/             # Empty dir — placeholder for Phase 3
│   ├── startups/               # Phase 1 deliverable
│   │   ├── venture-model-validator/
│   │   │   ├── SKILL.md
│   │   │   ├── TEMPLATES.md
│   │   │   └── references/
│   │   │       ├── vc-backable-criteria.md
│   │   │       ├── latam-context.md
│   │   │       └── comparable-companies.md
│   │   ├── pitch-deck-builder/
│   │   │   ├── SKILL.md
│   │   │   ├── TEMPLATES.md
│   │   │   └── references/
│   │   │       ├── sequoia-deck.md
│   │   │       └── latam-context.md
│   │   ├── go-to-market-strategist/
│   │   │   ├── SKILL.md
│   │   │   ├── TEMPLATES.md
│   │   │   └── references/
│   │   │       ├── gtm-channels.md
│   │   │       └── latam-context.md
│   │   ├── startup-kpi-automator/
│   │   │   ├── SKILL.md
│   │   │   ├── TEMPLATES.md
│   │   │   └── references/
│   │   │       ├── kpi-benchmarks.md
│   │   │       └── latam-context.md
│   │   └── data-room-builder/
│   │       ├── SKILL.md
│   │       ├── TEMPLATES.md
│   │       └── references/
│   │           ├── folder-structure.md
│   │           └── latam-context.md
│   └── vc-operators/           # Empty dir — placeholder for Phase 2
├── shared/
│   └── frameworks/
│       ├── sequoia-deck.md
│       ├── brad-feld-terms.md
│       ├── yc-metrics.md
│       ├── safe-note.md
│       ├── vc-backable-test.md
│       ├── ilpa-standards.md
│       └── latam-benchmarks.md
├── docs/
│   └── how-to-create-skills.md
├── install.sh
├── validate.sh
└── README.md
```

**Key constraint from D-01:** references/ files must be one level deep only. SKILL.md links directly to each references/ file. No file-in-references may link to another file.

### Pattern 1: YAML Frontmatter (Authoritative Spec)

```yaml
---
name: venture-model-validator
description: >
  Startup venture-scale analysis. ALWAYS invoke when a user asks to evaluate
  if their startup is VC-backable, investable, or venture-scale. Applies YC
  idea evaluation, Thiel monopoly test, a16z PMF criteria, and Sequoia enduring
  companies framework. NOT for pitch deck creation or financial modeling.
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---
```

**Critical validation rules (from STACK.md, HIGH confidence):**

| Field | Rule | Failure mode |
|-------|------|-------------|
| `name` | 1–64 chars, lowercase+numbers+hyphens only, no leading/trailing/consecutive hyphens | Skill silently ignored by Claude Code |
| `description` | Max 1024 chars; first 250 chars shown in listings; must be non-empty; no XML tags | Wrong trigger or no trigger |
| Name must match directory name | `venture-model-validator/` → `name: venture-model-validator` | Slash-command mismatch |

### Pattern 2: Three-Component Description (INFRA-07 + D-07)

```
[domain identifier] + [ALWAYS invoke when] + [negative constraint]
```

Examples verified to achieve reliable activation:

```
venture-model-validator:
"Startup venture-scale analysis. ALWAYS invoke when a user asks to evaluate
if their startup is VC-backable, investable, or venture-scale, or asks 'is my
startup fundable?' NOT for pitch deck creation or financial modeling."

pitch-deck-builder:
"Startup investor presentation builder. ALWAYS invoke when a user wants to
create, structure, or outline a pitch deck or investor presentation. Applies
Sequoia 10-slide framework. NOT for reviewing an existing deck (use
deck-reviewer) or validating the business model."

go-to-market-strategist:
"Startup go-to-market strategy designer. ALWAYS invoke when a user asks how
to acquire customers, design a GTM plan, choose growth channels, or build a
90-day launch plan. NOT for pitch deck creation or unit economics calculation."

startup-kpi-automator:
"Startup KPI system designer. ALWAYS invoke when a user asks what metrics to
track, how to build a KPI dashboard, or how to prepare an investor update.
NOT for pitch deck creation or GTM strategy."

data-room-builder:
"Startup investor data room builder. ALWAYS invoke when a user asks what
documents investors need, how to organize a data room, or wants to prepare
for fundraising due diligence. NOT for pitch deck creation or GTM planning."
```

### Pattern 3: Standard SKILL.md Body Structure (D-09)

Every skill body must contain these sections in this order:

```markdown
# [Skill Name]

## Input Gathering
[Numbered questions Claude asks before starting work]
[Must not assume user has answers ready — provide defaults/estimates]

## Framework Applied
[What framework is being used and why]
[Link to references/ file for each framework]

## Workflow
[Numbered steps Claude executes]

## Output Format
ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md).
[Brief description of what the template contains]

## LATAM Context
[Loaded from references/latam-context.md — Claude must read this before scoring]

## Próximos Pasos
[Every skill ends with 3-5 specific next actions]

## Sources
[Inline citation list matching references/ files]
```

### Pattern 4: Filled TEMPLATES.md (QUAL-09 + D-10)

TEMPLATES.md must show a **filled** example, not a skeleton. Rationale from PITFALLS.md Pitfall 4: empty templates lead to generic outputs. Instruction required in SKILL.md:

```markdown
ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.
```

### Pattern 5: install.sh Pattern (INFRA-04 + D-05)

```bash
#!/usr/bin/env bash
set -euo pipefail

SKILLS_DIR="${HOME}/.claude/skills"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing LAN Skills to ${SKILLS_DIR}..."
mkdir -p "${SKILLS_DIR}"

INSTALLED=0
FAILED=0

for suite_dir in "${SCRIPT_DIR}"/suites/*/; do
  for skill_dir in "${suite_dir}"*/; do
    [ -d "${skill_dir}" ] || continue
    skill_name=$(basename "${skill_dir}")
    target="${SKILLS_DIR}/${skill_name}"

    rm -rf "${target}"
    cp -r "${skill_dir}" "${target}"

    if [ -f "${target}/SKILL.md" ]; then
      echo "  [OK] ${skill_name}"
      INSTALLED=$((INSTALLED + 1))
    else
      echo "  [FAIL] ${skill_name} — SKILL.md not found after copy"
      FAILED=$((FAILED + 1))
    fi
  done
done

echo ""
echo "Installed: ${INSTALLED} skills | Failed: ${FAILED}"
echo "Restart Claude Code and type '/' to see available skills."
```

**Why `${HOME}` not `~`:** `~` is expanded by the shell, but behavior differs in subshells, cron jobs, and WSL contexts. `${HOME}` is always the user's home directory.

### Pattern 6: validate.sh (INFRA-08 enabler + PITFALLS.md Pitfall 8)

```bash
#!/usr/bin/env bash
# Validates all SKILL.md files for spec compliance
# Run before commit: ./validate.sh
set -euo pipefail

ERRORS=0

for skill_md in suites/*/*/SKILL.md; do
  name=$(grep "^name:" "${skill_md}" | head -1 | sed 's/name: //')
  desc_line_count=$(awk '/^description:/,/^[a-z]/' "${skill_md}" | wc -l)
  dir_name=$(basename "$(dirname "${skill_md}")")

  # Check name matches directory
  if [ "${name}" != "${dir_name}" ]; then
    echo "FAIL [${skill_md}]: name '${name}' does not match directory '${dir_name}'"
    ERRORS=$((ERRORS + 1))
  fi

  # Check name length
  if [ ${#name} -gt 64 ]; then
    echo "FAIL [${skill_md}]: name '${name}' exceeds 64 chars"
    ERRORS=$((ERRORS + 1))
  fi

  # Check name charset (lowercase, numbers, hyphens only)
  if echo "${name}" | grep -qP '[^a-z0-9\-]'; then
    echo "FAIL [${skill_md}]: name '${name}' contains invalid characters"
    ERRORS=$((ERRORS + 1))
  fi

  # Check SKILL.md line count
  line_count=$(wc -l < "${skill_md}")
  if [ "${line_count}" -gt 500 ]; then
    echo "WARN [${skill_md}]: ${line_count} lines (limit: 500)"
  fi
done

if [ ${ERRORS} -gt 0 ]; then
  echo "${ERRORS} validation error(s) found."
  exit 1
else
  echo "All SKILL.md files valid."
fi
```

### Anti-Patterns to Avoid

- **Inline framework content:** Never paste the full Sequoia deck or Thiel monopoly test into SKILL.md. Put it in references/ and link it.
- **Generic descriptions:** "Startup analysis skill" will not trigger on natural language. Description must include domain-specific vocabulary users actually say.
- **Empty TEMPLATES.md:** An empty skeleton causes Claude to produce generic output. Filled example is required.
- **Nested reference files:** SKILL.md → references/overview.md → references/templates.md → references/details.md. Claude reads the first file with `head -100` and may never reach templates. Keep all files directly linked from SKILL.md.
- **US-only benchmarks without LATAM annotation:** LAN users are LATAM-based. Every quantitative benchmark must carry a LATAM footnote.
- **Missing negative constraints in descriptions:** Without "NOT for pitch deck creation," venture-model-validator can fire on deck-related queries when all 5 skills are installed.

---

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| YAML frontmatter validation | Custom regex parser | Simple bash grep + sed in validate.sh | Agent Skills spec is stable and minimal — 4 rules to check, no library needed |
| Skill distribution | npm package / registry | `install.sh` + GitHub repo | Skills are markdown; no build step; GitHub is sufficient distribution |
| Version pinning | Custom lock file format | `skills-lock.json` via `npx skills` CLI | CLI handles lock file semantics; hand-rolling produces incompatible format |
| Bibliography index | Database or JSON registry | `shared/frameworks/` flat markdown files + `docs/bibliography.md` | Skills reference files, not a query system; markdown is sufficient |
| Cross-skill data pipeline | Skill-to-skill API calls | Instructions like "run /startup-kpi-automator first, then paste output here" | Skills are prompt injections, not functions; chaining requires subagent setup with no benefit at this scope |

---

## LATAM Benchmark Reference (QUAL-08 + D-09)

All five startup skills must include LATAM context annotations. The following benchmarks are verified from current sources (2025/2026 editions):

### Capital Markets Context (from Cuantico LatAm VC Report 2026)

| Metric | Value | Source |
|--------|-------|--------|
| Total VC invested in LATAM 2025 | US$4.126B across 681 rounds | Cuantico 2026 |
| YoY growth | +13.8% (vs US$3.627B in 2024) | Cuantico 2026 |
| Average ticket size | US$6.1M (up from US$5.2M) | Cuantico 2026 |
| Pre-seed deals 2025 | 152 deals (-39% vs 2024, -77% vs 2022 peak) | Cuantico 2026 |
| Brazil + Mexico share | 78.5% of regional funding | Cuantico 2026 |
| Fintech sector dominance | Continues to attract most VC dollars | LAVCA 2025 |
| Early-stage rounds (2025) | US$2.2B — 52% of total | LAVCA 2025 |
| Median gap between rounds | 20 months (vs 12–15 months US) | LAVCA 2025 |

### SaaS-Specific LATAM Benchmarks

| Metric | LATAM Value | US Benchmark | Delta |
|--------|-------------|--------------|-------|
| CAC payback | 6–12 months (60% of Brazilian SaaS recover in <6 months) | 12–18 months (Bessemer "good") | LATAM advantage |
| LTV/CAC at Series A | ≥3:1 expected; top firms reach 5:1 | ≥3:1 | Same |
| Revenue multiple discount | ~30–50% discount to US peers at equivalent growth | — | LATAM discount |
| SaaS market projected CAGR 2024–2030 | ~25% | ~17% global | LATAM advantage |

**Source URLs (for references/ files):**
- LAVCA 2025 Startup Ecosystem Insights: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- LAVCA Trends in Tech 2025: https://www.lavca.org/wp-content/uploads/2025/02/LAVCA_Trends-in-Tech-2025.pdf

---

## Common Pitfalls

### Pitfall 1: Skill Description Too Weak — Activation Failure

**What goes wrong:** Natural language queries don't trigger the skill even though it's installed. Claude does the work manually without loading the skill's templates and frameworks.

**Why it happens:** Description says what the skill IS, not precisely when to invoke it. Missing directive language ("ALWAYS invoke when") and missing negative constraints cause adjacent skills to collide.

**How to avoid:** Use the three-component description pattern (D-07). Test with 5 natural phrasings before marking a skill complete (D-08). Descriptions must use imperative language that is "pushy" toward invocation — official Claude docs confirm Claude has a tendency to under-trigger.

**Warning signs:** Slash command `/skill-name` works but natural conversation never triggers it. Claude produces similar output without loading the skill.

### Pitfall 2: Bibliography Hallucination

**What goes wrong:** Skill claims to apply "YC frameworks" or "Sequoia's GTM template" — but these specific artifacts don't exist at the cited location. Output appears authoritative but is fabricated.

**Why it happens:** LLM citation hallucination rates run 17–40% even in careful work. Skill authors instruct Claude to "apply YC frameworks" without specifying which document and URL.

**How to avoid:** Every cited source in references/ must be verified to resolve at a specific URL before the skill ships (QUAL-10). Cite the artifact, not the institution: "YC Series A Diligence Checklist at ycombinator.com/library/3h-series-a-diligence-checklist" not "YC frameworks."

**Warning signs:** A cited framework cannot be found via direct web search. Source is listed as institution name only.

### Pitfall 3: SKILL.md Exceeds 500 Lines

**What goes wrong:** SKILL.md bloats past the 500-line limit as authors add edge cases, examples, and template variants. Context window cost per invocation climbs.

**Why it happens:** Authors treat SKILL.md as a comprehensive manual. Every framework, edge case, and template variant gets added inline.

**How to avoid:** SKILL.md is a table of contents + workflow. Move detailed content to references/ and templates/. Apply the challenge test: "Does Claude already know this?" If yes, delete it. Run `wc -l SKILL.md` before committing.

### Pitfall 4: YAML Frontmatter Silent Failure

**What goes wrong:** A small YAML error (extra whitespace before `---`, `name` with uppercase, description with angle brackets) causes Claude Code to silently ignore the skill — no error message, skill just doesn't appear.

**Why it happens:** YAML is whitespace-sensitive. Validation happens at parse time, not invocation time. The skill "looks right" to humans but fails machine parsing.

**How to avoid:** Run validate.sh before every commit. Use the SKILL.md template from docs/how-to-create-skills.md — do not write frontmatter from scratch.

### Pitfall 5: US Benchmarks Without LATAM Annotation

**What goes wrong:** Skills apply US VC benchmarks to LATAM startups. "VC backable" is judged against US fund theses. SaaS LTV/CAC uses US benchmarks. Output is systematically wrong for LAN's user base.

**Why it happens:** All canonical bibliography (YC, a16z, Sequoia) is US/global-north authored. LATAM diverges significantly: fintech captures 61% of LATAM VC vs 13% SaaS; revenue multiples trade at 30–50% discount; median gap between rounds is 20 months not 12–15.

**How to avoid:** Every skill with quantitative benchmarks must include a `latam-context.md` in references/ citing LAVCA 2025 and Cuantico 2026. US benchmarks in output must be labeled "US-sourced benchmark" with a LATAM-adjusted figure below.

### Pitfall 6: install.sh Path Failures

**What goes wrong:** Install script copies to wrong location or fails silently. Skills are nowhere Claude Code looks.

**Why it happens:** `~` expansion is shell-specific. `cp -r` doesn't create intermediate directories by default. No post-copy verification.

**How to avoid:** Use `${HOME}` not `~`. Include `mkdir -p` before every copy. After copy, verify `SKILL.md` exists at destination and print per-skill success/failure (D-05). Test on macOS, Linux, and WSL before first skill ships (INFRA-04).

### Pitfall 7: Empty or Skeleton TEMPLATES.md

**What goes wrong:** Skill produces output that varies in structure between runs. Output reads like generic AI analysis rather than a real work product.

**Why it happens:** Template shows empty fields (`[Insert market analysis here]`) instead of a filled example. Claude sees blank fields and fills them with generic content.

**How to avoid:** TEMPLATES.md must show a filled hypothetical startup output. Instruction in SKILL.md must say "ALWAYS use this exact template structure" with specific column names and section headings (D-10). Reject any skill where two runs on similar inputs produce structurally different output.

---

## Code Examples

### SKILL.md Frontmatter (venture-model-validator)

```yaml
---
name: venture-model-validator
description: >
  Startup venture-scale analysis. ALWAYS invoke when a user asks to evaluate
  if their startup is VC-backable, investable, or venture-scale, or when they
  ask "is my startup fundable?" or "would VCs invest in this?" Applies YC idea
  evaluation, Thiel monopoly test, a16z PMF, Sequoia enduring companies, and
  Gurley market sizing. NOT for pitch deck creation or financial modeling.
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---
```

### SKILL.md Body (standard five-section structure)

```markdown
# Venture Model Validator

## Step 1: Input Gathering

Ask the user for the following (ask all questions in one message, numbered):

1. **Company name and one-sentence description**
2. **Business model** (SaaS / marketplace / transactional / fintech / hardware / other)
3. **Current stage** (idea / pre-product / pre-revenue / early revenue / growth)
4. **Current metrics** (MRR, users, growth rate — enter "none" if pre-revenue)
5. **Target market** (geography + customer segment)
6. **Why now?** (what has changed in the last 2–3 years that makes this possible/urgent?)

If the user does not answer, proceed with stated assumptions and flag them.

## Step 2: Apply Frameworks

Load and apply each framework in sequence:

1. **VC-Backable Test** — See [references/vc-backable-criteria.md](references/vc-backable-criteria.md)
2. **Thiel Monopoly Test** — Does this become a monopoly in a large market?
3. **a16z PMF Signal** — See [references/vc-backable-criteria.md](references/vc-backable-criteria.md)
4. **Sequoia Enduring Companies** — See [references/vc-backable-criteria.md](references/vc-backable-criteria.md)
5. **Gurley Market Sizing** — See [references/vc-backable-criteria.md](references/vc-backable-criteria.md)

## Step 3: Produce Output

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md).
Do not change section headings, table columns, or scoring scale.

## LATAM Context

Before finalizing scores, read [references/latam-context.md](references/latam-context.md).
Apply LATAM-adjusted benchmarks where the startup operates in Latin America.
Flag any US-sourced benchmark used with "⚠️ US benchmark — see LATAM note below."

## Próximos Pasos

End every analysis with 3–5 specific, actionable next steps based on the lowest-scoring dimensions.

## Sources

- [YC Key Startup Metrics](https://www.ycombinator.com/library/KR-key-startup-metrics)
- [Sequoia Company Design](https://www.sequoiacap.com/article/writing-a-business-plan/)
- [LAVCA 2025 Startup Ecosystem Insights](https://www.lavca.org/research/2025-latin-american-startup-ecosystem-insights/)
- [Cuantico LatAm VC Report 2026](https://reports.cuanticovp.com/latin-america-vc-report-2026/)
```

### TEMPLATES.md (filled example pattern — venture-model-validator)

```markdown
# Venture Model Validator — Output Template

ALWAYS use this exact structure. Every section is required.

---

## Startup: [Company Name]

**Date:** [Date]
**Stage:** [Pre-seed / Seed / Series A]
**Analyst:** LAN Skills via Claude

---

## VC-Backable Scorecard

| Dimension | Score (1–5) | Weight | Weighted | Commentary |
|-----------|-------------|--------|----------|------------|
| Market Size (TAM ≥$1B) | 4 | 25% | 1.0 | Fintech lending in Mexico — TAM ~$45B, serviceable ~$8B |
| Revenue Potential ($100M+ ARR in 7 yrs) | 3 | 20% | 0.6 | Achievable but requires 2 adjacencies after core market |
| Growth Rate (10x in 5 yrs possible) | 4 | 20% | 0.8 | Current 22% MoM; B2SME lending historically grows fast in LatAm |
| Team (domain + execution) | 5 | 15% | 0.75 | Founder: 6 yrs Kueski risk team; CTO: ex-Nubank |
| Defensibility / Moat | 3 | 10% | 0.3 | Data moat developing; no strong network effects yet |
| Timing (Why Now) | 5 | 10% | 0.5 | CNBV sandbox open; Nubank exit validates category in Mexico |
| **TOTAL** | | 100% | **3.95 / 5.0** | |

**Verdict:** CONDITIONALLY VC-BACKABLE — strong market + team, moat needs development

---

## Red Flags

| # | Red Flag | Severity | Recommendation |
|---|----------|----------|----------------|
| 1 | No network effects in lending product | HIGH | Design credit bureau data sharing as moat |
| 2 | CAC not measured (pre-revenue) | MEDIUM | Run 50-customer pilot to establish CAC baseline |
| 3 | Single geography (CDMX only) | LOW | Acceptable at pre-seed; plan Mexico national in 18 months |

---

## LATAM Context

⚠️ **US benchmark applied above (adjusted below):**
- US VC expects 10x return in 7 years → LATAM VC typically models 5–7x (longer exit timelines, smaller exit multiples)
- Median gap between LATAM funding rounds: **20 months** vs 12–15 months US (LAVCA 2025)
- 2025 pre-seed LATAM deal count fell 39% YoY (Cuantico 2026) — raise pre-seed NOW or wait for seed traction

**LATAM-specific opportunity:**
- Fintech = 61% of LATAM VC investment (vs 13% SaaS) — this category is well-understood by regional VCs
- Kaszek, ALLVP, and SoftBank LatAm all have fintech-lending thesis alignment

---

## Comparables

| Company | Stage at Seed | Exit/Status | Comparable Reason |
|---------|--------------|-------------|-------------------|
| Kueski (Mexico) | Pre-revenue | $600M valuation | B2C fintech lending same market |
| Addi (Colombia) | $1.5M ARR | $200M Series C | B2B BNPL same region |
| Credijusto (Mexico) | $500K ARR at Seed | Acquired by Bank of Montreal | SME lending exact vertical |

---

## Próximos Pasos

1. **Run 50-customer pilot** to measure CAC and first repayment rate (kill/go signal for investors)
2. **Model network effects** — identify one data-sharing mechanism that creates defensibility
3. **Map LATAM investor targets** — pitch Kaszek, ALLVP, and Nazca for seed round (all fintech-thesis aligned)
4. **Run /pitch-deck-builder** with these results to build your first investor deck
5. **Run /startup-kpi-automator** to set up the KPI system investors will ask to see at Series A
```

### shared/frameworks/latam-benchmarks.md (canonical source pattern)

```markdown
# LATAM VC Benchmarks

**Sources:** LAVCA 2025, Cuantico LatAm VC Report 2026
**Last updated:** April 2026
**When to use:** Any skill that applies US-sourced quantitative benchmarks to LATAM startups

## Investment Climate (2025 Actuals)

- Total VC: US$4.126B across 681 rounds (+13.8% YoY)
- Average ticket: US$6.1M (up from US$5.2M)
- Pre-seed collapse: 152 deals in 2025 (-39% vs 2024; -77% vs 2022 peak of 661 deals)
- Brazil + Mexico: 78.5% of regional funding
- Median funding gap between rounds: 20 months

## Stage-Specific Context

| Stage | LATAM Reality | US Equivalent |
|-------|--------------|---------------|
| Pre-seed | US$66M total in 2025 (vs $110M 2024) | Much larger pool |
| Seed | Increasingly competitive; checks growing | Competitive |
| Series A+ | Concentrating around proven names | Broader |

## Sector Distribution

- Fintech: ~61% of VC investment
- E-commerce: second largest
- SaaS/B2B software: ~13% (vs 30%+ in US)

## SaaS-Specific

- CAC payback: 6–12 months typical (60% of Brazilian SaaS recover in <6 months)
- LTV/CAC: same 3:1 baseline; top LATAM companies reach 5:1 via organic channels
- Revenue multiple: ~30–50% discount to US peers at equivalent growth rates
- CAGR 2024–2030: ~25% (vs ~17% global)

## Key LATAM VCs by Stage

| Stage | Active Funds |
|-------|-------------|
| Pre-seed | Nazca, Palo Alto Lab, Canary |
| Seed | ALLVP, Kaszek, Angel Ventures |
| Series A+ | Kaszek, SoftBank LatAm, Monashees, General Atlantic |

## Source URLs

- LAVCA 2025 Startup Ecosystem Insights: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- LAVCA Trends in Tech 2025: https://www.lavca.org/wp-content/uploads/2025/02/LAVCA_Trends-in-Tech-2025.pdf
- Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- LAVCA Q3 2025 Industry Data: https://www.lavca.org/research/q3-2025-industry-data-analysis/
```

---

## Per-Skill Framework Sources (QUAL-07 + QUAL-10)

The following sources are verified accessible and must be cited in each skill's references/:

### STRT-01: venture-model-validator

| Framework | Source URL | What It Provides |
|-----------|-----------|-----------------|
| YC Series A Diligence Checklist | https://www.ycombinator.com/library/3h-series-a-diligence-checklist | Investor-required documents and metrics by stage |
| YC Key Startup Metrics | https://www.ycombinator.com/library/KR-key-startup-metrics | Core metrics definitions and benchmarks |
| Sequoia Company Design | https://www.sequoiacap.com/article/writing-a-business-plan/ | 10-slide framework, market-first evaluation |
| Rebel Fund Theorem 4.0 | https://www.rebelfund.vc/blog-posts/rebel-fund-2025-seed-checklist-yc-alumni-rebel-theorem-4-0 | YC alumni VC-backable checklist 2025 |
| Cuantico LatAm VC Report 2026 | https://reports.cuanticovp.com/latin-america-vc-report-2026/ | LATAM benchmarks |

### STRT-02: pitch-deck-builder

| Framework | Source URL | What It Provides |
|-----------|-----------|-----------------|
| Sequoia Pitch Deck Template | https://www.sequoiacap.com/article/writing-a-business-plan/ | 10-slide framework with slide guidance |
| YC Series A Diligence Checklist | https://www.ycombinator.com/library/3h-series-a-diligence-checklist | Series A deck expectations |
| YC Common Deck Errors | https://www.ycombinator.com/library (various) | Common mistakes per slide |

### STRT-03: go-to-market-strategist

| Framework | Source URL | What It Provides |
|-----------|-----------|-----------------|
| YC Startup Library GTM | https://www.ycombinator.com/library | Channel strategy, traction channel heuristics |
| BVP GTM Playbooks | https://www.bvp.com/atlas | Channel selection for B2B SaaS |
| LAVCA 2025 Ecosystem | https://www.lavca.org/research/2025-latin-american-startup-ecosystem-insights/ | LATAM GTM channel context |

### STRT-04: startup-kpi-automator

| Framework | Source URL | What It Provides |
|-----------|-----------|-----------------|
| YC Key Startup Metrics | https://www.ycombinator.com/library/KR-key-startup-metrics | Core metric definitions by model |
| BVP Cloud 100 Benchmarks 2025 | https://www.bvp.com/atlas/the-cloud-100-benchmarks-report | SaaS KPI benchmarks |
| High Alpha / OpenView SaaS Benchmarks 2025 | https://www.highalpha.com/saas-benchmarks | Annual SaaS benchmark report |
| Bessemer Efficiency Score | https://www.bvp.com/atlas | Rule of 40, efficiency benchmarks |
| Carta Startup Metrics | https://carta.com/learn/startups/metrics/ | Stage-appropriate metrics |

### STRT-05: data-room-builder

| Framework | Source URL | What It Provides |
|-----------|-----------|-----------------|
| Visible.vc Investor Data Room Guide | https://visible.vc/blog/startup-data-room/ | Essential data room components and checklist |
| Visible.vc Ultimate Guide | https://visible.vc/blog/investor-ready-data-rooms/ | Investor-ready data room structure |
| YC Series A Diligence Checklist | https://www.ycombinator.com/library/3h-series-a-diligence-checklist | Documents investors request at Series A |
| Going VC Data Room Checklist | https://www.goingvc.com/post/vc-checklist-guide-everything-investors-expect-in-your-data-room | VC-complete checklist 2025 |

**Note on NFX data room:** The NFX data room guide referenced in STRT-05 requirements should be verified for current URL before authoring references/. NFX publishes at nfx.com/post — confirm the specific guide URL is accessible.

**Note on Stripe Atlas:** Stripe Atlas data room reference in STRT-05 should be verified at stripe.com/atlas. If unavailable, substitute with Visible.vc as the primary template source.

---

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| Skills as single flat SKILL.md files | Skills as directories with SKILL.md + supporting files | 2025 (Agent Skills spec) | Progressive disclosure; references load on demand not at startup |
| Claude Code commands (.claude/commands/) | Claude Code skills (.claude/skills/) | 2025 | Skills are the superset; commands deprecated into skill system |
| Install via package manager | Install via `npx skills` CLI or `install.sh` | 2025 | No build step; GitHub is the registry |
| Generic AI VC tools (roleplay personas) | Execution-focused tools (scorecards, memos, templates) | 2025–2026 | LAN Skills differentiation: work products not entertainment |
| US-only VC frameworks | US frameworks + LATAM annotations | 2026 (LAVCA/Cuantico annual cadence) | LATAM-specific context built in, not added as afterthought |

**Deprecated:**
- `@supabase/auth-helpers-nextjs` style patterns (not relevant but noted for LAN OS integration context in Phase 4)
- Claude Code custom commands (`.claude/commands/`) — merged into skills system; use SKILL.md format

---

## Open Questions

1. **NFX data room guide specific URL**
   - What we know: NFX publishes VC resources at nfx.com
   - What's unclear: The exact current URL for their data room template/guide
   - Recommendation: Verify at nfx.com before authoring STRT-05 references/; substitute Visible.vc if not accessible

2. **Stripe Atlas data room reference for STRT-05**
   - What we know: Stripe Atlas provides startup templates
   - What's unclear: Whether a dedicated data room guide exists at stripe.com/atlas
   - Recommendation: Verify during STRT-05 authoring; the requirements list it as a cited framework

3. **Guy Kawasaki 10-20-30 rule — current canonical URL**
   - What we know: The 10-20-30 rule is widely cited for pitch decks (STRT-02)
   - What's unclear: Whether the original blog post at blog.guykawasaki.com is still accessible
   - Recommendation: Verify URL before authoring pitch-deck-builder references/; multiple secondary sources can substitute if needed

4. **Output language convention**
   - What we know: CLAUDE.md says "Spanish UI labels in LAN OS integration, English for skill internals"
   - What's unclear: Whether skill TEMPLATES.md should be in Spanish or English; PITFALLS.md UX section says "output templates must include a 'Responde en español' instruction or language detection logic"
   - Recommendation: Skill bodies in English (technical framework content); TEMPLATES.md headers in Spanish; every skill ends with "Próximos Pasos" (Spanish next steps); SKILL.md body includes "Respond in the user's language" instruction

---

## Environment Availability

Step 2.6: SKIPPED — This phase involves no external dependencies. All deliverables are markdown files, a bash script, and a validate.sh script. The only runtime is bash, which is confirmed available (GNU bash 3.2.57 on macOS ARM64, Python 3.14.3 available for any optional scripts).

---

## Validation Architecture

`workflow.nyquist_validation` is set to `false` in `.planning/config.json`. Validation Architecture section skipped per configuration.

However, the following manual acceptance tests are required by D-08 and PITFALLS.md:

**Per-skill acceptance tests (manual, not automated):**

| Test | Criteria | Method |
|------|----------|--------|
| Activation test | 5 natural-language queries each trigger the correct skill | Manually test in Claude Code with fresh session |
| No cross-triggering | Adjacent skills don't fire on each other's queries | Install all 5, test ambiguous queries |
| Output structure stability | Two runs on similar inputs produce structurally identical output | Compare two runs, check table columns and section headings match |
| Red flags called out | Evaluation output explicitly names problems, not just affirms | Review output for negative findings |
| LATAM annotation present | Every quantitative benchmark has a LATAM note | Scan each skill output |
| install.sh success | All 5 skills install and SKILL.md verified at destination | Run on macOS + verify with `ls ~/.claude/skills/` |
| YAML validation clean | `./validate.sh` exits 0 | Run validate.sh after each skill authored |

---

## Sources

### Primary (HIGH confidence)

- [Extend Claude with Skills — Claude Code Docs](https://code.claude.com/docs/en/skills) — SKILL.md format, frontmatter fields, install locations, progressive disclosure
- [Agent Skills Overview — Anthropic Platform](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) — Loading architecture, token costs, Level 1/2/3 disclosure
- [Skill Authoring Best Practices — Anthropic Platform](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices) — Description writing, activation trigger, "pushy" descriptions
- [Agent Skills Specification — agentskills.io](https://agentskills.io/specification) — Complete open spec
- [LAVCA 2025 Startup Ecosystem Insights PDF](https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf) — LATAM benchmarks
- [Cuantico LatAm VC Report 2026](https://reports.cuanticovp.com/latin-america-vc-report-2026/) — 2025 actuals: $4.126B total, pre-seed -39%, ticket growth
- [Sequoia Pitch Deck — sequoiacap.com](https://www.sequoiacap.com/article/writing-a-business-plan/) — 10-slide framework source
- [YC Key Startup Metrics Library](https://www.ycombinator.com/library/KR-key-startup-metrics) — Core metrics definitions
- [YC Series A Diligence Checklist](https://www.ycombinator.com/library/3h-series-a-diligence-checklist) — Series A document requirements
- [BVP Cloud 100 Benchmarks Report 2025](https://www.bvp.com/atlas/the-cloud-100-benchmarks-report) — SaaS benchmarks
- [High Alpha / OpenView 2025 SaaS Benchmarks](https://www.highalpha.com/saas-benchmarks) — Annual benchmark report
- [Visible.vc Investor Data Room Guide](https://visible.vc/blog/startup-data-room/) — Data room components
- [.planning/research/STACK.md] — SKILL.md format spec (built from official sources, fetched 2026-04-04)
- [.planning/research/ARCHITECTURE.md] — Repo structure, skill anatomy, install pipeline
- [.planning/research/PITFALLS.md] — 10 critical pitfalls with prevention strategies
- [.planning/research/FEATURES.md] — Competitive landscape, feature requirements per skill

### Secondary (MEDIUM confidence)

- [Cuantico LatAm VC Report 2025](https://reports.cuanticovp.com/latin-america-venture-capital-report-2025/) — Prior year for trend comparison
- [LAVCA Trends in Tech 2025](https://www.lavca.org/wp-content/uploads/2025/02/LAVCA_Trends-in-Tech-2025.pdf) — Sector distribution data
- [LatAm SaaS State 2024 — Nasdaq/LatAm Tech Weekly](https://www.nasdaq.com/articles/latam-tech-weekly:-state-of-saas-latam-2024) — SaaS-specific LATAM benchmarks
- [Rebel Fund Theorem 4.0 — 2025 Seed Checklist](https://www.rebelfund.vc/blog-posts/rebel-fund-2025-seed-checklist-yc-alumni-rebel-theorem-4-0) — Updated VC-backable criteria

### Tertiary (LOW confidence — flag for validation)

- NFX data room guide URL: needs verification at nfx.com before STRT-05 authoring
- Guy Kawasaki 10-20-30 original post: URL needs verification before pitch-deck-builder references/

---

## Metadata

**Confidence breakdown:**
- SKILL.md format and YAML spec: HIGH — verified against official Anthropic docs (fetched 2026-04-04)
- Install pipeline pattern: HIGH — pattern matches official examples and PITFALLS.md prevention strategies
- LATAM benchmarks: HIGH — LAVCA 2025 PDF and Cuantico 2026 report are current, published 2025–2026
- VC framework source URLs: HIGH for YC/Sequoia/BVP; LOW for NFX and Guy Kawasaki (need URL verification)
- Skill content standards: HIGH — derived from official best practices + verified pitfall research

**Research date:** 2026-04-04
**Valid until:** LATAM benchmarks valid for ~12 months (annual cadence). SKILL.md spec valid for ~90 days (stable open standard, backward-compatible).
