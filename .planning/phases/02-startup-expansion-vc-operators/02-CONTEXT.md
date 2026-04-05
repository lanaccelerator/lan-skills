# Phase 2: Startup Expansion + VC Operators - Context

**Gathered:** 2026-04-05
**Status:** Ready for planning

<domain>
## Phase Boundary

Deliver 8 remaining startup skills (deck-reviewer, unit-economics-calculator, fundraising-readiness-audit, competitive-landscape-mapper, rapid-mvp-builder, sales-playbook-generator, pricing-strategy-designer, fundraising-agent) and 5 VC operator skills (deal-memo-writer, portfolio-reporter, term-sheet-generator, fund-performance-analyzer, thesis-builder). All must follow Phase 1 quality standards (QUAL-01 through QUAL-11) and the established skill authoring pattern.

</domain>

<decisions>
## Implementation Decisions

### Carried Forward from Phase 1
All decisions D-01 through D-16 from Phase 1 CONTEXT.md remain locked and apply to every skill in Phase 2. Key ones:
- D-01: SKILL.md + TEMPLATES.md + flat references/, 500-line limit
- D-07/D-08: Three-component description with negative constraints, test 5 phrasings
- D-09: Standard output structure (input gathering → analysis → framework citations → LATAM context → next steps)
- D-10: Filled TEMPLATES.md with "ALWAYS use this exact template structure"
- D-12–D-16: Editorial voice — no sugarcoating, unicorn bar, pointer to @shared/frameworks/editorial-voice.md

### Cross-Suite Activation Disambiguation
- **D-17:** Every startup skill description includes "For STARTUP FOUNDERS" and a negative constraint naming the most likely cross-trigger sibling. Every VC operator skill includes "For VC FUND OPERATORS (not startup founders)".
- **D-18:** deck-reviewer MUST disambiguate from pitch-deck-builder: "ALWAYS invoke when reviewing or critiquing an EXISTING deck. NOT for creating a new deck (use pitch-deck-builder)."
- **D-19:** deal-memo-writer (VC analyst) MUST disambiguate from venture-model-validator (founder): "For VC FUND OPERATORS writing investment committee memos. NOT for founders evaluating their own startup."

### fundraising-agent Structure
- **D-20:** SKILL.md body covers the 3-phase workflow orchestration (Preparation → Fundraising → Closing per lore.vc framework). Heavy content goes in references/:
  - `references/lore-vc-framework.md` — Structured summary of lore.vc 3-phase framework (CC BY-NC-SA 4.0, attributed)
  - `references/investor-research-guide.md` — How to research investors using NFX Signal, Crunchbase, web search
  - `references/outreach-templates.md` — Email templates, intro request templates, follow-up cadence
- **D-21:** fundraising-agent integrates with 5 Phase 1 skills by referencing them in workflow: "Have you run /venture-model-validator?" → "Have you run /pitch-deck-builder?" → "Have you run /data-room-builder?" etc. Not a hard dependency — suggests but doesn't block.
- **D-22:** Investor target list output must be structured as a markdown table exportable to CSV (name, firm, stage, sector, geography, check size, thesis fit score, portfolio conflicts, warm intro path).

### VC Operator Audience Framing
- **D-23:** deal-memo-writer and thesis-builder assume GP/partner perspective — senior decision-maker voice.
- **D-24:** portfolio-reporter and fund-performance-analyzer assume analyst/associate perspective — quantitative, reporting-focused.
- **D-25:** term-sheet-generator serves both GP (drafting) and associate (review) — includes negotiation levers for GP and term explanations for associate.

### Shared Frameworks
- **D-26:** No new shared framework files needed. Existing 8 files cover all Phase 2 needs. Skill-specific content goes in each skill's references/ directory.
- **D-27:** VC operator skills reference brad-feld-terms.md, ilpa-standards.md, and yc-metrics.md from shared/frameworks/. Startup skills reference latam-benchmarks.md and other relevant shared files.

### Build Order
- **D-28:** Startup skills first (follow established pattern), then VC operator skills. Within startup skills: unit-economics-calculator first (no dependencies), then skills that reference it. fundraising-agent last (integrates with multiple skills).
- **D-29:** Within VC operator skills: deal-memo-writer first (establishes VC operator pattern), then term-sheet-generator, portfolio-reporter, fund-performance-analyzer, thesis-builder.

### Claude's Discretion
- Exact number of reference files per skill — use what's needed, typically 2-3
- TEMPLATES.md example company names — use LATAM-appropriate fictional companies
- Internal section ordering variations for VC operator skills — may differ from startup pattern where domain requires it

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### Project Context
- `.planning/PROJECT.md` — Project vision, constraints, key decisions
- `.planning/REQUIREMENTS.md` — Full v1 requirements (STRT-06 through STRT-13, VCOP-01 through VCOP-05)
- `.planning/ROADMAP.md` — Phase 2 goal, success criteria, requirement mappings

### Phase 1 Pattern (MUST follow)
- `suites/startups/venture-model-validator/SKILL.md` — Reference implementation for SKILL.md structure
- `suites/startups/venture-model-validator/TEMPLATES.md` — Reference implementation for filled templates
- `shared/frameworks/editorial-voice.md` — Tone standard for all skills
- `shared/frameworks/latam-benchmarks.md` — LATAM annotation protocol
- `docs/how-to-create-skills.md` — Contributor guide with all authoring rules

### Phase 1 Context
- `.planning/phases/01-foundation-startup-core/01-CONTEXT.md` — D-01 through D-16 decisions

### External Sources (for fundraising-agent)
- lore.vc — The Fundraising Lore (CC BY-NC-SA 4.0)
- signal.nfx.com — NFX Signal investor database reference
- Brad Feld "Venture Deals" — term sheet and negotiation frameworks

### Carta Fund Performance Data (MUST READ)
- `references/carta-fund-performance-q1-2026.pdf` — Carta Fund Performance report with real IRR, TVPI, DPI benchmarks by vintage year and percentile. Incorporate these actual market benchmarks into VC operator skills (fund-performance-analyzer, portfolio-reporter) and LP skills (Phase 3). This is real data, not estimates.

</canonical_refs>

<code_context>
## Existing Code Insights

### Reusable Assets
- 5 complete startup skills in `suites/startups/` — established pattern for directory structure, YAML frontmatter, body sections, TEMPLATES.md, references/
- 8 shared framework files in `shared/frameworks/` — brad-feld-terms.md (term sheets), yc-metrics.md (KPIs), safe-note.md (SAFE variants), ilpa-standards.md (LP reporting), latam-benchmarks.md (LATAM context), editorial-voice.md (tone)
- `install.sh` and `validate.sh` — already handle new skill directories automatically via glob patterns
- `docs/how-to-create-skills.md` — contributor guide that documents all conventions

### Established Patterns
- YAML frontmatter: name + description (three-component) + argument-hint + categories + author + version
- Body: 6-8 sections (Input Gathering → Framework Applied → Workflow → Output Format → LATAM Context → Tone → Proximos Pasos → Sources)
- TEMPLATES.md: Filled LATAM example with [DATA NEEDED] flags, framework citations, benchmark annotations
- references/: 2-3 flat files per skill, each with specific source URLs

### Integration Points
- New skills auto-detected by install.sh (`suites/*/`)
- New skills auto-validated by validate.sh (`suites/*/*/SKILL.md`)
- README.md skill catalog already has placeholder rows for Phase 2 skills
- VC operator skills create a new pattern in `suites/vc-operators/` (empty dir exists)

</code_context>

<specifics>
## Specific Ideas

- fundraising-agent is the most complex skill — 3-phase workflow with investor research, outreach templates, and term sheet analysis. Must reference lore.vc framework with proper CC BY-NC-SA 4.0 attribution.
- deck-reviewer must have a fundamentally different tone from pitch-deck-builder — reviewer tears apart an existing deck, builder creates from scratch. The descriptions must make this crystal clear.
- VC operator skills serve a different user (fund managers, not founders) — the output format, terminology, and benchmarks shift accordingly. But the quality standards (QUAL-01 through QUAL-11) still apply.
- sales-playbook-generator should include WhatsApp outreach sequences for LATAM B2B — per go-to-market-strategist pattern from Phase 1.

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 02-startup-expansion-vc-operators*
*Context gathered: 2026-04-05*
