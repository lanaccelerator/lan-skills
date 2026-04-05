# Pitfalls Research

**Domain:** Claude Code Skill suite / prompt engineering for VC & startup workflows
**Researched:** 2026-04-04
**Confidence:** HIGH (official Anthropic docs + verified community sources)

---

## Critical Pitfalls

### Pitfall 1: Vague Skill Descriptions Cause Activation Failures

**What goes wrong:**
The `description` field in SKILL.md frontmatter is the only signal Claude uses to decide whether to invoke a skill. A description like "Helps with VC analysis" or "Processes startup data" causes the skill to either never activate or activate on irrelevant queries. A 650-trial experiment confirmed that weak descriptions cause systematic, not occasional, activation failures.

**Why it happens:**
Skill authors default to describing what the skill IS rather than what it DOES and precisely WHEN it should trigger. The description competes with 100+ other skills' descriptions in the same system prompt. Without specificity and directive language, Claude picks the closest match or does the work manually without invoking the skill at all.

**How to avoid:**
- Write descriptions in third person using the pattern: "[Verb] [domain noun] when [specific trigger condition]."
- Include directive language: "ALWAYS invoke when user asks for..." outperforms "Use when..."
- Name specific artifacts the skill produces: "Generates a deal memo with exec summary, market analysis, competitive landscape, risks, and investment recommendation."
- Include negative constraints for disambiguation: "Does not handle portfolio reporting (see portfolio-reporter)."

**Warning signs:**
- Manually triggering the skill with its slash command works but natural conversation never triggers it
- Claude produces output that looks like what the skill would produce, but without loading the skill's templates/frameworks
- Two similar skills (e.g., `deck-reviewer` and `pitch-deck-builder`) conflict and one never activates

**Phase to address:** Phase 1 (Skill Foundation) — every SKILL.md description must pass an activation test before the skill is considered complete.

---

### Pitfall 2: Bibliography Hallucination — Citing Frameworks That Don't Exist

**What goes wrong:**
Skills claim to use "the YC unit economics framework," "Sequoia's 2024 go-to-market template," or "ILPA fee disclosure standards" without those specific artifacts existing as cited. Claude generates plausible-sounding citations. Users trust the output as authoritative. The differentiation claim ("grounded in real bibliography") collapses.

**Why it happens:**
LLM citation hallucination rates for literature reviews run 17-40% even in careful academic work (GPTZero found 100+ hallucinated citations in NeurIPS 2025 papers). Skill authors instruct Claude to "apply YC frameworks" without specifying which document, version, or exact principle — Claude fills in the gap with plausible fiction. This is especially acute for VC because most canonical frameworks (YC's, Sequoia's, Brad Feld's) exist as blog posts, talks, or informal guides rather than versioned documents.

**How to avoid:**
- Every cited source in a skill must be verified to exist at a specific URL before the skill ships
- Cite the actual artifact, not the institution: "YC's Series A Diligence Checklist (ycombinator.com/series-a-diligence-checklist)" not "YC frameworks"
- Where a framework is derived from a talk or post (e.g., "Sequoia's pitch deck post from 2022"), include the title, author, and URL inline in the skill's REFERENCES.md
- If a framework is well-known but not formally published (e.g., "Berkus Method"), attribute it correctly and describe it inline rather than pointing to a source that may not exist

**Warning signs:**
- A cited "framework" cannot be found with a direct web search
- The source is listed as an institution (a16z, Kauffman) rather than a specific publication
- A framework is described at a level of detail that exceeds what the cited source actually contains

**Phase to address:** Phase 1 (Skill Foundation) — REFERENCES.md file for each skill must be manually verified before the skill graduates from draft status.

---

### Pitfall 3: Skills Too Long — Context Window Bloat

**What goes wrong:**
SKILL.md files balloon past 500 lines as authors try to include every edge case, explanation, template variant, and example. Analysis of 55,315 publicly available skills found 60%+ of content is non-actionable background. At 10,000+ tokens per skill, a suite of 26 skills running in the same session can consume most of the context window before the user types a single message.

**Why it happens:**
Skill authors treat SKILL.md as a comprehensive manual ("Claude might need this"). They include explanations of concepts Claude already knows, excessive preamble, and multiple template variants "just in case." The mistake is treating token cost as zero.

**How to avoid:**
- Enforce hard limit: SKILL.md body under 500 lines (Anthropic's official recommendation)
- Use progressive disclosure: SKILL.md is a table of contents that points to REFERENCES.md, TEMPLATES.md, EXAMPLES.md; those files load only when needed
- Apply the challenge test to every paragraph: "Does Claude already know this?" If yes, delete it
- Never include a framework explanation if the skill's job is to apply it — Claude knows what the Berkus method is; the skill only needs to specify how to apply it to this specific output format
- The 26-skill suite should be organized into 4 suites precisely so users install the relevant suite, not all 26 at once

**Warning signs:**
- SKILL.md exceeds 200 lines for a single-output skill
- The file includes paragraphs explaining what LTV or IRR means
- Templates for multiple output variants are embedded inline rather than in separate files

**Phase to address:** Phase 1 (Skill Foundation) — enforce 500-line limit from the first skill. Phase 3 (Suites 3-4) — audit for bloat as suite complexity grows.

---

### Pitfall 4: Generic Outputs — Frameworks Without Specificity Constraints

**What goes wrong:**
The skill produces output that reads like a generic VC article rather than a real work product. `pitch-deck-builder` produces a slide list anyone could write without the skill. `deal-memo-writer` produces a template with "[Insert market analysis here]" rather than a filled analysis. The skill becomes a verbose prompt rather than an execution engine.

**Why it happens:**
The skill specifies what to include but not how to fill it. "Apply YC's framework" is not an instruction — it is a delegation back to the model's training data. Without output templates with specific field definitions, real numeric examples, and explicit constraints on depth, Claude defaults to polite generality.

**How to avoid:**
- Every skill must have a concrete output template in TEMPLATES.md with field-level instructions, not just section headers
- Include worked examples: show a filled-out scorecard for a hypothetical startup, not an empty one
- Specify depth constraints: "Market sizing section must include bottom-up TAM calculation, not only top-down" or "LTV/CAC must be calculated, not estimated from ranges"
- For diagnostic skills (e.g., `deck-reviewer`, `fundraising-readiness-audit`), define the scoring rubric explicitly rather than asking Claude to "evaluate"

**Warning signs:**
- Skill output reads the same regardless of very different input startups
- Outputs use phrases like "depends on context" or "varies by situation" where a real analysis would commit to a number or verdict
- A user can produce equivalent output by typing "write me a deal memo" without using the skill

**Phase to address:** Phase 1 (first 5 skills) — validate that output quality is demonstrably higher than zero-shot. Each skill needs a "quality bar" acceptance test.

---

### Pitfall 5: Skill Conflicts in a Large Suite — Wrong Skill Fires

**What goes wrong:**
With 26 skills installed, semantically adjacent skills fire on each other's triggers. "Research the competitive landscape" activates `open-innovation-scanner` (corporate) instead of `competitive-landscape-mapper` (startup). "Review this deck" activates `deck-reviewer` when the user wanted `pitch-deck-builder`. The user gets incorrect output format and wrong framework applied.

**Why it happens:**
Claude uses semantic similarity to match skills, not algorithmic keyword matching. Two skills with similar domain vocabulary and overlapping trigger conditions create a race condition that Claude resolves arbitrarily. A suite of 26 skills across 4 stakeholder groups has high overlap surface area (every suite contains "analysis," "evaluation," "scorecard" vocabulary).

**How to avoid:**
- Include an explicit audience/persona identifier in every description: "For STARTUP FOUNDERS (not VC analysts): ..." vs "For VC ANALYSTS evaluating deals: ..."
- Add negative constraints in descriptions: "Does NOT handle corporate venture evaluation (see corporate-venture-evaluator)"
- Test cross-suite disambiguation with intentionally ambiguous queries before each suite ships
- Use the three-component template proven to achieve 100% activation: [domain identifier] + [directive keyword "ALWAYS invoke when"] + [negative constraint]

**Warning signs:**
- Manually invoking both skills on the same input produces similar outputs (signals the two descriptions are too similar)
- Users report "the wrong skill ran" on natural-language queries
- Skill descriptions contain generic terms ("analysis," "evaluation," "scoring") without stakeholder-anchoring

**Phase to address:** Phase 2 (Suite 2 — Corporates) and Phase 3 (Suite 3 — Startups) — conflict testing must run before each new suite ships, not after all 26 are built.

---

### Pitfall 6: US-Centric Frameworks Applied to LATAM Context Without Adaptation

**What goes wrong:**
Skills apply US VC benchmarks verbatim. `startup-kpi-automator` uses SaaS metrics benchmarks from US growth-stage companies. `venture-model-validator` judges "VC backability" against US fund theses (10x in 7 years, Series A in 18 months). `unit-economics-calculator` ignores FX risk, currency inflation, and the fact that fintech captures 61% of LATAM VC while SaaS gets 13%. The output is technically correct for a Palo Alto startup and systematically wrong for a Mexico City or São Paulo startup.

**Why it happens:**
The canonical bibliography (YC, a16z, Sequoia, Kauffman, ILPA) is entirely US/global-north authored. It is also the highest-quality material available. Skill authors use it without noting where LATAM context diverges. LAN's users are LATAM-based (LAN Accelerator operates in LATAM).

**How to avoid:**
- Each skill must include a LATAM Context section in its REFERENCES.md noting: which benchmarks are US-specific, what LATAM-adjusted figures look like, and where LATAM VCs (Kaszek, Monashees, Softbank LatAm) publish their own frameworks
- For unit economics: include FX risk as a variable, note that CAC benchmarks for Brazil/Mexico SaaS differ significantly from US
- For valuation: note that LatAm revenue multiples trade at discount to US peers (typically 30-50% lower at equivalent growth rates)
- Source LAVCA (Latin American Private Capital Association) data for region-specific benchmarks
- Mark outputs explicitly when applying US benchmarks: "Note: this benchmark is US-derived. Adjust for LATAM context."

**Warning signs:**
- A skill cites only US sources in its REFERENCES.md
- Benchmark values (e.g., "healthy LTV/CAC > 3:1") are stated without regional qualifier
- No mention of currency risk, informal economy context, or regulatory differences in emerging market sections

**Phase to address:** Phase 1 (Skill Foundation) — add LATAM context annotation to the first 5 skills. All subsequent skills inherit the pattern.

---

### Pitfall 7: install.sh Path and Permission Failures

**What goes wrong:**
`install.sh` copies skills to `~/.claude/skills/` but fails silently on: Windows (path separator issues), systems where `~` is not properly resolved, cases where `~/.claude/` doesn't exist yet (Claude Code not installed), and situations where the user has Claude Code installed in a non-standard location. Users believe install succeeded but skills are nowhere Claude Code will find them.

**Why it happens:**
Shell scripts written on macOS assume POSIX behavior. The `~` expansion is shell-specific. `cp -r` does not create intermediate directories by default on all platforms. Windows users running WSL have a bifurcated filesystem. No error checking means a failed copy produces exit code 0.

**How to avoid:**
- Use `mkdir -p` before any `cp` commands to create the target directory chain
- Resolve `~` explicitly: `TARGET_DIR="${HOME}/.claude/skills/"` not `~/.claude/skills/`
- Verify installation succeeded: after copy, check that the SKILL.md file exists at destination and print a success/failure message per skill
- Include a pre-flight check: test whether Claude Code is installed before installing skills (`which claude` or checking for `~/.claude/` directory existence)
- Document Windows separately — recommend WSL path or add a PowerShell install script
- Never use Windows-style backslash paths anywhere in SKILL.md file references

**Warning signs:**
- `install.sh` runs with no output (no confirmation of what was installed)
- Script does not check whether `~/.claude/` exists before writing to it
- No platform detection (Darwin vs Linux vs Windows/WSL)
- README only mentions macOS/Linux without Windows instructions

**Phase to address:** Phase 1 (Infrastructure) — install script is part of the core deliverable. Build and test on macOS, Linux, and WSL before the first 5 skills ship.

---

### Pitfall 8: SKILL.md Files Are Missing or Malformed YAML Frontmatter

**What goes wrong:**
A skill that passes manual testing fails to register with Claude Code because the YAML frontmatter has: extra whitespace before the opening `---`, a `name` field exceeding 64 characters, a `description` field containing XML-like angle brackets, or reserved words ("claude", "anthropic") in the name. Claude Code silently ignores the skill.

**Why it happens:**
YAML is whitespace-sensitive and the validation rules for Claude Code skills are strict (enforced at parse time, not at invocation time). Authors who hand-edit SKILL.md files frequently introduce whitespace, length, or character violations without realizing it because the skill "looks right" to human eyes.

**How to avoid:**
- Validate every SKILL.md frontmatter before committing: check name length (<= 64 chars), name character set (lowercase letters, numbers, hyphens only), description length (<= 1024 chars), absence of XML tags in both fields
- Add a lint step to the repo (a simple bash script checking these constraints is sufficient — no npm package needed)
- Use a SKILL.md template file in the repo that developers copy-paste rather than writing from scratch
- Name convention: use noun-verb form (e.g., `venture-model-validator`, `pitch-deck-builder`) not gerund form for this suite because CLI slash-command invocation reads more naturally as `/venture-model-validator` than `/validating-venture-models`

**Warning signs:**
- A skill is installed but doesn't appear in `/skills list`
- Skill was working, a small edit was made, and now it no longer triggers
- Name field contains spaces, uppercase letters, or underscores (all invalid)

**Phase to address:** Phase 1 (Infrastructure) — add a pre-commit validation script alongside install.sh before any skills are authored.

---

### Pitfall 9: No Output Structure Enforcement — Prose Instead of Work Products

**What goes wrong:**
Skills produce walls of markdown prose when users need structured, scannable work products. A deal memo that is 1,000 words of flowing paragraphs is useless for a real analyst who needs a structured document with clear sections, numeric tables, and explicit verdict fields. The skill outputs competent writing but not a work product.

**Why it happens:**
Claude defaults to prose when given flexibility. Skills that say "write a deal memo" without specifying output structure receive varied, model-temperature-dependent prose outputs. This is the opposite of the project's core value: "EXECUTE real VC/startup workflows — not roleplay or chat, but actionable outputs."

**How to avoid:**
- Every skill with a document output must have a TEMPLATES.md file with the exact output structure including headers, tables, callout boxes, and fill-in fields
- Use the strict template pattern: "ALWAYS use this exact template structure:" followed by a filled example, not an empty skeleton
- Specify output format constraints: "Scorecard must use a markdown table with columns: Criterion | Score (1-5) | Weight | Commentary"
- For skills producing numerical outputs (`unit-economics-calculator`, `fund-performance-analyzer`), specify that calculations must be shown, not just results stated

**Warning signs:**
- Skill output format varies between runs on similar inputs
- Output does not include the tables, scorecards, or structured sections the skill description promises
- Skills produce "analysis" as continuous prose where a real analyst would use structured artifacts

**Phase to address:** Phase 1 (first 5 skills) — reject any skill where two runs on similar inputs produce structurally different output formats.

---

### Pitfall 10: Nested Reference File Architecture — Claude Reads Partially

**What goes wrong:**
A skill's SKILL.md links to `advanced.md`, which links to `details.md`, which contains the actual templates. Claude reads the first file, sees a link to the second, uses `head -100` to preview it rather than reading the full file, and never reaches the actual templates. The skill appears to work but applies generic logic instead of the skill-specific framework.

**Why it happens:**
Authors build reference hierarchies organically as skills grow: SKILL.md → overview.md → frameworks.md → templates.md. This mirrors how humans organize documentation but conflicts with how Claude navigates skill filesystems. Anthropic's official documentation explicitly warns: "Claude may partially read files when they're referenced from other referenced files."

**How to avoid:**
- Maximum one level of reference depth: SKILL.md links directly to TEMPLATES.md, REFERENCES.md, EXAMPLES.md
- No file should reference another file that is not also directly referenced from SKILL.md
- Keep all critical templates and decision frameworks in files directly linked from SKILL.md
- For large reference files (>100 lines), include a table of contents at the top so partial reads still expose the full scope

**Warning signs:**
- Skill directory has more than 2 levels of subdirectories
- A TEMPLATES.md file exists but is not linked directly from SKILL.md
- Reference files contain `[See also: other-file.md]` links

**Phase to address:** Phase 1 (Infrastructure) — establish the directory template (SKILL.md, TEMPLATES.md, REFERENCES.md, EXAMPLES.md — all flat) before authoring begins.

---

## Technical Debt Patterns

| Shortcut | Immediate Benefit | Long-term Cost | When Acceptable |
|----------|-------------------|----------------|-----------------|
| Skip REFERENCES.md, cite institutions in-text | Faster to write | Bibliography claims become unverifiable; hallucinations build over time | Never — bibliography integrity is the core differentiator |
| Embed all templates directly in SKILL.md | Fewer files to manage | SKILL.md bloats past 500 lines; context window cost per invocation climbs | Only for single-template skills where template is under 50 lines |
| Build all 26 skills before testing any | Faster to "complete" the suite | Activation failures and output quality problems compound; 26 broken skills to fix | Never — validate first 5 before building next batch |
| Use one install.sh for all platforms | Single script to maintain | Windows/WSL failures with no error output; users silently miss skills | Only if Windows support is explicitly out of scope |
| Generic descriptions shared across similar skills | Less description-writing effort | Wrong skill activates on ambiguous queries | Never — every skill needs unique activation fingerprint |
| Omit LATAM adaptation notes | Faster bibliographic research | Output is systematically wrong for LAN's user base | Never for skills used by LAN portfolio startups |

---

## Integration Gotchas

| Integration | Common Mistake | Correct Approach |
|-------------|----------------|------------------|
| LAN OS `/skills` route | Skills shown as static cards with no connection to startup data | For program startups, skills must pass context (startup name, KPIs, metrics) from DB to skill invocation — design the LAN OS integration API before building the DB-connected skill variants |
| Claude Code CLI install | Using `~` in install.sh instead of `${HOME}` | Always use `${HOME}` in shell scripts for portable tilde expansion |
| Supabase startup data | Skills attempt to read DB directly | Skills are pure markdown — they receive data as user-provided context; LAN OS is responsible for injecting DB values into the skill invocation prompt |
| Claude API BYOK routing | Assuming skill invocations use default API key | Skill invocations go through whatever Claude session the user has open — LAN OS must handle key routing at the API layer, not in skill files |
| MCP tool references in skills | Using short tool names like `bigquery_schema` | Always use fully qualified names: `ServerName:tool_name` to prevent "tool not found" errors when multiple MCP servers are loaded |

---

## Performance Traps

| Trap | Symptoms | Prevention | When It Breaks |
|------|----------|------------|----------------|
| All 26 skills installed globally | Every session starts with 26 skill descriptions in context even for non-VC work | Organize into 4 installable suites; recommend installing only the relevant suite | Immediately — 26 descriptions consume meaningful context at startup |
| Skill body contains extensive examples | Response latency increases; context fills before user query is processed | Move examples to EXAMPLES.md; load only when requested | When skill body exceeds ~200 lines |
| REFERENCES.md loaded for every invocation | Expensive tokens for rarely-needed content | Only link REFERENCES.md from the final step that needs to cite sources, not from the main workflow | When reference file exceeds 100 lines |
| Duplicate template variants in one file | Claude picks wrong variant or averages across them | One canonical template per skill; variants go in separate TEMPLATES-[variant].md files | When two templates are structurally different enough to produce different output shapes |

---

## UX Pitfalls

| Pitfall | User Impact | Better Approach |
|---------|-------------|-----------------|
| Skill requires user to provide all data from memory | Startup founders can't remember their exact CAC or MRR mid-conversation; skill produces output with placeholder values | Design skill inputs as a structured intake form (numbered questions Claude asks sequentially) rather than expecting users to front-load all data |
| Output is in English when user expects Spanish | LAN OS users are LATAM Spanish speakers; English-only output breaks the UX contract | Skill internals can be English, but output templates must include a "Responde en español" instruction or language detection logic |
| No "next action" section in skill output | User gets analysis but no clear what-to-do-next | Every diagnostic/analysis skill must end with a "Próximos Pasos" (Next Steps) section with 3-5 specific actions |
| Skill activates when user just wants to discuss a topic | User says "I was reading about unit economics" and skill fires; generates unwanted output | Refine description trigger conditions to require explicit request language ("asks to calculate", "wants to build") |

---

## "Looks Done But Isn't" Checklist

- [ ] **SKILL.md frontmatter:** Check name character limit (<=64), character set (lowercase/numbers/hyphens only), and description length (<=1024) — a skill that looks correct can fail validation silently
- [ ] **Bibliography:** Every cited source listed in REFERENCES.md must resolve to a real, accessible URL — verify manually before marking skill complete
- [ ] **Activation test:** Run 5 natural-language phrasings of the skill's core use case and confirm the skill activates on all 5 — not just the exact phrasing used during authoring
- [ ] **Cross-suite conflict test:** Run the same query against the full installed suite and confirm only the intended skill activates — not a sibling skill with overlapping vocabulary
- [ ] **LATAM context check:** Confirm at least one LATAM-specific note exists in REFERENCES.md for every skill that uses quantitative benchmarks
- [ ] **Output structure stability:** Run the same input twice and confirm the output structure (not content) is identical — confirms template enforcement is working
- [ ] **install.sh dry run on clean machine:** Uninstall skills and re-run install.sh on a system without `~/.claude/skills/` to confirm directory creation and all files copy correctly

---

## Recovery Strategies

| Pitfall | Recovery Cost | Recovery Steps |
|---------|---------------|----------------|
| Activation failure (bad description) | LOW | Update description field; re-run install.sh; re-test activation in fresh session |
| Bibliography hallucination discovered after distribution | HIGH | Audit all skills in the affected suite; replace all unverifiable citations; re-publish; notify users of correction |
| Skills too large causing context bloat | MEDIUM | Extract body content to REFERENCES.md/TEMPLATES.md files; update SKILL.md with links; verify progressive disclosure triggers correctly |
| Generic output (missing templates) | MEDIUM | Build TEMPLATES.md with concrete filled example; add strict template instruction to SKILL.md workflow section; retest output structure |
| Install script failure on Windows | LOW | Add platform detection and separate instructions; test in WSL; update README |
| US-centric framework producing wrong LATAM output | MEDIUM | Add LATAM Context section to REFERENCES.md; update skill workflow to reference it; test with LATAM-specific inputs |

---

## Pitfall-to-Phase Mapping

| Pitfall | Prevention Phase | Verification |
|---------|------------------|--------------|
| Vague descriptions / activation failure | Phase 1 — establish description template before first skill authors | Run 5 natural-language queries per skill; confirm 100% activation rate |
| Bibliography hallucination | Phase 1 — REFERENCES.md file with URL verification is a hard requirement | Manual spot-check of every cited URL before skill is merged |
| Context window bloat | Phase 1 — enforce 500-line limit from day one | `wc -l SKILL.md` in CI or pre-commit hook |
| Generic output / no template | Phase 1 — acceptance test: output of first 5 skills must beat zero-shot measurably | A/B test: skill output vs plain "write me a deal memo" — must differ structurally |
| Cross-suite skill conflicts | Phase 2 (Corporates) — test before each suite ships | Install suites 1+2 together; run ambiguous cross-domain queries |
| LATAM framework mismatch | Phase 1 — baked into first 5 skill REFERENCES.md | Each skill with quantitative benchmarks must include at least one LATAM source |
| install.sh path failures | Phase 1 Infrastructure — before any skill ships | Test install on macOS + Ubuntu + WSL; confirm skills appear in skill list |
| Malformed YAML frontmatter | Phase 1 Infrastructure — linter added before authoring begins | Run lint check on every SKILL.md as part of install.sh or a separate `validate.sh` |
| Nested reference file architecture | Phase 1 — directory template established before authoring | Every reference file must be directly linked from SKILL.md (one level deep) |
| No output structure enforcement | Phase 1 — every skill requires TEMPLATES.md before it is merged | Two runs on similar input must produce same output structure |

---

## Sources

- [Skill authoring best practices — Anthropic official docs](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices) — HIGH confidence, authoritative
- [Extend Claude with skills — Claude Code Docs](https://code.claude.com/docs/en/skills) — HIGH confidence
- [Agent Skills overview — Claude API Docs](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) — HIGH confidence
- [Claude Code Skills Don't Auto-Activate (workaround) — Scott Spence](https://scottspence.com/posts/claude-code-skills-dont-auto-activate) — MEDIUM confidence, community verified
- [Claude Skills Have Two Reliability Problems, Not One — Marc Bara](https://medium.com/@marc.bara.iniesta/claude-skills-have-two-reliability-problems-not-one-299401842ca8) — MEDIUM confidence
- [How to Activate Claude Skills Automatically: 2 Fixes — DEV Community](https://dev.to/oluwawunmiadesewa/claude-code-skills-not-triggering-2-fixes-for-100-activation-3b57) — MEDIUM confidence
- [SkillReducer: Optimizing LLM Agent Skills for Token Efficiency — arxiv](https://arxiv.org/html/2603.29919) — HIGH confidence (peer research; confirms 60%+ non-actionable content finding)
- [AI Hallucinations in Research: Why 40% of AI Citations Are Wrong — Enago Academy](https://www.enago.com/academy/ai-hallucinations-research-citations/) — HIGH confidence
- [GPTZero finds 100 new hallucinations in NeurIPS 2025 accepted papers — GPTZero](https://gptzero.me/news/neurips/) — HIGH confidence
- [LatAm VC Report 2026 — Cuantico VP](https://reports.cuanticovp.com/latin-america-vc-report-2026/) — HIGH confidence for LATAM benchmarks
- [2025 Latin American Startup Ecosystem Insights — LAVCA](https://www.lavca.org/research/2025-latin-american-startup-ecosystem-insights/) — HIGH confidence
- [Claude Skills: The Controllability Problem — paddo.dev](https://paddo.dev/blog/claude-skills-controllability-problem/) — MEDIUM confidence
- [Stop Adding New Claude Skills — Fix the Broken Ones First — Build to Launch](https://buildtolaunch.substack.com/p/claude-skills-not-working-fix) — MEDIUM confidence
- [How to Use Claude Code: Skills guide — producttalk.org](https://www.producttalk.org/how-to-use-claude-code-features/) — MEDIUM confidence
- [How to Prevent AI Citation Hallucinations 2025 — INRA.AI](https://www.inra.ai/blog/citation-accuracy) — MEDIUM confidence

---

*Pitfalls research for: Claude Code skill suite / prompt engineering for VC & startup workflows*
*Researched: 2026-04-04*
