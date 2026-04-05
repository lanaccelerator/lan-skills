# Phase 3: LP & Angel + Corporate Suites - Context

**Gathered:** 2026-04-05
**Status:** Ready for planning

<domain>
## Phase Boundary

Deliver 5 LP/Angel investor skills (angel-investment-analyzer, vc-fund-due-diligence, portfolio-construction-advisor, lp-term-sheet-analyzer, startup-valuation-checker) and 4 Corporate innovation skills (open-innovation-scanner, startup-solution-matcher, corporate-venture-evaluator, pilot-program-designer). All 27 skills must be installable via `./install.sh` with per-skill success confirmations.

</domain>

<decisions>
## Implementation Decisions

### Carried Forward from Phase 1-2
All decisions D-01 through D-29 remain locked. Key pattern: SKILL.md + TEMPLATES.md + flat references/, 500-line limit, three-component description, editorial-voice.md tone pointer, LATAM benchmarks, filled TEMPLATES.md.

### LP vs Founder Perspective Mirroring
- **D-30:** angel-investment-analyzer and venture-model-validator (Phase 1) both use the `vc-backable-test.md` framework but from opposite perspectives. angel-investment-analyzer evaluates "should I invest in this?" while venture-model-validator evaluates "is my startup investable?". Explicit negative constraints in both directions.
- **D-31:** lp-term-sheet-analyzer inverts the perspective of term-sheet-generator (Phase 2). Same brad-feld-terms.md framework, but now from the LP/investor side analyzing terms presented TO them. No framework duplication — reference the shared file.
- **D-32:** startup-valuation-checker serves BOTH founders (checking if their valuation is reasonable) and investors (checking if a deal is fairly priced). Description must accommodate both audiences without confusing activation.

### Corporate Audience Voice
- **D-33:** Corporate skills serve innovation directors, CTO offices, and corporate development teams — NOT VCs or founders. Vocabulary shifts to corporate innovation language: pilot ROI, strategic alignment, internal champion, procurement cycle, innovation theater detection.
- **D-34:** Same editorial-voice.md no-sugarcoating standard applies. "This is innovation theater, not real corporate venturing" is a valid output. "Your pilot program has no kill criteria — that means it will zombie on forever" is the expected directness.
- **D-35:** All corporate skill descriptions include "For CORPORATE INNOVATION TEAMS (not startup founders or VC operators)" to prevent cross-activation with the other 2 suites.

### Digital Transformation PDF Usage
- **D-36:** The `references/digital-transformation-2025.pdf` is available at repo root. Each corporate skill gets a `references/digital-transformation-context.md` with the SUBSET of insights relevant to that skill's domain — not the full report duplicated 4 times.
- **D-37:** Corporate skills should also reference LATAM corporate innovation data from the PDF where available — corporate VC activity in LATAM, pilot success rates, digital adoption by sector.

### Shared Framework Reuse
- **D-38:** No new shared framework files. LP/Angel skills reference existing: brad-feld-terms.md, ilpa-standards.md, vc-backable-test.md, latam-benchmarks.md. Corporate skills reference: latam-benchmarks.md. Skill-specific content goes in references/.
- **D-39:** lp-term-sheet-analyzer references brad-feld-terms.md (already built for Phase 2's term-sheet-generator) WITHOUT duplicating content. The skill adds the LP analysis perspective on top of the shared term definitions.

### Build Order
- **D-40:** LP/Angel skills first (closer to existing VC operator pattern), then Corporate skills (new audience pattern). Within LP/Angel: angel-investment-analyzer first (mirrors venture-model-validator), then vc-fund-due-diligence, portfolio-construction-advisor, lp-term-sheet-analyzer, startup-valuation-checker.
- **D-41:** Within Corporate: open-innovation-scanner first (establishes corporate pattern), then startup-solution-matcher, corporate-venture-evaluator, pilot-program-designer.

### Install Pipeline Verification
- **D-42:** install.sh and validate.sh already use `suites/*/` glob — no changes needed. Final verification: run both scripts after all 27 skills exist and confirm 27 [OK] confirmations from install.sh.

### Claude's Discretion
- TEMPLATES.md fictional company names for LP/Angel skills — use LATAM-appropriate fund/angel scenarios
- TEMPLATES.md fictional company names for Corporate skills — use LATAM corporate innovation scenarios (telecom, banking, CPG)
- Reference file count per skill (typically 2-3)
- Whether Carta Q1-2026 benchmarks are relevant for LP skills (yes — vc-fund-due-diligence and portfolio-construction-advisor should reference fund performance data)

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### Project Context
- `.planning/PROJECT.md` — Project vision, validated requirements from Phase 1-2
- `.planning/REQUIREMENTS.md` — Requirements LPAN-01 through LPAN-05, CORP-01 through CORP-04
- `.planning/ROADMAP.md` — Phase 3 goal, success criteria

### Phase 1-2 Patterns (MUST follow)
- `suites/startups/venture-model-validator/SKILL.md` — Reference startup skill pattern
- `suites/vc-operators/deal-memo-writer/SKILL.md` — Reference VC operator pattern
- `shared/frameworks/editorial-voice.md` — Tone standard
- `shared/frameworks/vc-backable-test.md` — Scoring framework for angel-investment-analyzer
- `shared/frameworks/brad-feld-terms.md` — Term sheet framework for lp-term-sheet-analyzer
- `shared/frameworks/ilpa-standards.md` — LP reporting standards for vc-fund-due-diligence
- `shared/frameworks/latam-benchmarks.md` — LATAM annotation protocol
- `docs/how-to-create-skills.md` — Contributor guide

### Prior Phase Contexts
- `.planning/phases/01-foundation-startup-core/01-CONTEXT.md` — D-01 through D-16
- `.planning/phases/02-startup-expansion-vc-operators/02-CONTEXT.md` — D-17 through D-29

### External Data
- `references/carta-fund-performance-q1-2026.pdf` — Real fund performance data for vc-fund-due-diligence and portfolio-construction-advisor
- `references/digital-transformation-2025.pdf` — Digital transformation insights for all 4 corporate skills

### Bibliography Sources
- Jason Calacanis "Angel" — angel-investment-analyzer
- Kauffman Foundation studies, Cambridge Associates — vc-fund-due-diligence
- AngelList data, Correlation Ventures — portfolio-construction-advisor
- ILPA Model LPA — lp-term-sheet-analyzer
- Damodaran (NYU), Bill Payne Scorecard, Dave Berkus — startup-valuation-checker
- Henry Chesbrough "Open Innovation" — open-innovation-scanner
- CB Insights, Gartner, Plug and Play — startup-solution-matcher
- BCG corporate venturing, GCV Institute — corporate-venture-evaluator
- Techstars, Wayra, 500 Global — pilot-program-designer

</canonical_refs>

<code_context>
## Existing Code Insights

### Reusable Assets
- 13 startup skills + 5 VC operator skills — two established patterns to follow
- 8 shared framework files — brad-feld-terms.md, ilpa-standards.md, vc-backable-test.md all directly reusable by LP/Angel skills
- install.sh and validate.sh — glob-based, auto-detect new skills
- latam-fund-context.md pattern from vc-operators/ — reusable structure for LP skills

### Established Patterns
- Startup skill YAML: `suite: startups`, audience "For STARTUP FOUNDERS"
- VC operator YAML: `suite: vc-operators`, audience "For VC FUND OPERATORS"
- LP/Angel will follow: `suite: lp-angel`, audience "For LP AND ANGEL INVESTORS"
- Corporate will follow: `suite: corporates`, audience "For CORPORATE INNOVATION TEAMS"

### Integration Points
- `suites/lp-angel/` directory exists (empty .gitkeep from Phase 1)
- `suites/corporates/` directory exists (empty .gitkeep from Phase 1)
- README.md skill catalog has placeholder rows for Phase 3 skills

</code_context>

<specifics>
## Specific Ideas

- angel-investment-analyzer should feel like the "other side" of venture-model-validator — same rigor, opposite perspective. An angel reading a deal memo should get the same brutal honesty a founder gets.
- Corporate skills should detect "innovation theater" — when a corporate claims to want innovation but actually wants a checkbox exercise. The editorial voice should be merciless about this.
- vc-fund-due-diligence should use Carta Q1-2026 real vintage data to benchmark GP performance claims — "Your GP claims top-quartile returns but the 2022 vintage median TVPI is 1.33x. Show me the actual numbers."
- pilot-program-designer must include kill criteria — the most common failure of corporate-startup pilots is that they zombie on without clear success/fail thresholds.

</specifics>

<deferred>
## Deferred Ideas

None — discussion stayed within phase scope

</deferred>

---

*Phase: 03-lp-angel-corporate-suites*
*Context gathered: 2026-04-05*
