# Phase 2: Startup Expansion + VC Operators - Discussion Log

> **Audit trail only.** Do not use as input to planning, research, or execution agents.
> Decisions are captured in CONTEXT.md — this log preserves the alternatives considered.

**Date:** 2026-04-05
**Phase:** 02-startup-expansion-vc-operators
**Areas discussed:** Cross-suite activation, fundraising-agent structure, VC operator audience, Shared framework additions
**Mode:** Auto (all recommended defaults selected)

---

## Cross-Suite Activation Disambiguation

| Option | Description | Selected |
|--------|-------------|----------|
| Audience identifier in every description | "For STARTUP FOUNDERS" / "For VC FUND OPERATORS" + negative constraints | ✓ |
| Rely on domain keywords only | Simpler but higher cross-trigger risk with 18+ skills | |
| Namespace prefixes | `/startup-*` vs `/vc-*` naming convention | |

**User's choice:** Audience identifier (auto-selected recommended)
**Notes:** Per research pitfall #5 — cross-suite conflicts compound with 27 installed skills.

---

## fundraising-agent Complexity

| Option | Description | Selected |
|--------|-------------|----------|
| SKILL.md orchestration + heavy references/ | Keeps body under 500 lines, depth in 3 reference files | ✓ |
| Single monolithic SKILL.md | Would exceed 500-line limit for 3-phase workflow | |
| Split into 3 separate skills | Loses the integrated agent value proposition | |

**User's choice:** SKILL.md orchestration + heavy references/ (auto-selected recommended)
**Notes:** lore-vc-framework.md (CC BY-NC-SA 4.0), investor-research-guide.md, outreach-templates.md

---

## VC Operator Audience Framing

| Option | Description | Selected |
|--------|-------------|----------|
| Role-specific framing | GP for deal-memo/thesis, analyst for reporter/analyzer, both for term-sheet | ✓ |
| All GP perspective | Simpler but misses analyst use case | |
| All analyst perspective | Misses GP decision-making context | |

**User's choice:** Role-specific framing (auto-selected recommended)
**Notes:** Matches real VC team structure and workflow.

---

## Shared Framework Additions

| Option | Description | Selected |
|--------|-------------|----------|
| No new shared frameworks | Existing 8 files cover Phase 2 needs; skill-specific goes in references/ | ✓ |
| Add VC-specific shared frameworks | Would only serve 5 skills — better as skill references | |

**User's choice:** No new shared frameworks (auto-selected recommended)
**Notes:** Prevents framework bloat. If 2+ Phase 3 skills need the same content, promote then.

---

## Claude's Discretion

- Reference file count per skill (typically 2-3)
- TEMPLATES.md example company names (LATAM-appropriate)
- VC operator section ordering variations

## Deferred Ideas

None — auto-mode discussion stayed within phase scope
