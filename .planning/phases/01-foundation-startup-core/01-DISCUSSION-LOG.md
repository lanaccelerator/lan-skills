# Phase 1: Foundation + Startup Core - Discussion Log

> **Audit trail only.** Do not use as input to planning, research, or execution agents.
> Decisions are captured in CONTEXT.md — this log preserves the alternatives considered.

**Date:** 2026-04-04
**Phase:** 01-foundation-startup-core
**Areas discussed:** Skill anatomy, Shared frameworks organization, Install pipeline design, Description activation patterns
**Mode:** Auto (all recommended defaults selected)

---

## Skill Anatomy

| Option | Description | Selected |
|--------|-------------|----------|
| SKILL.md + TEMPLATES.md + flat references/ | Matches research: Claude uses head-100 on nested refs. One level deep only. | ✓ |
| SKILL.md only (all content inline) | Simpler but risks exceeding 500-line limit for complex skills | |
| SKILL.md + nested subdirectories | Allows more organization but Claude may miss nested content | |

**User's choice:** SKILL.md + TEMPLATES.md + flat references/ (auto-selected recommended)
**Notes:** Research confirmed that progressive disclosure with flat references is the optimal structure.

---

## Shared Frameworks Organization

| Option | Description | Selected |
|--------|-------------|----------|
| shared/frameworks/ with one file per framework | Single source of truth, prevents drift across 26 skills | ✓ |
| Inline all frameworks in each skill | No shared dependencies but high duplication risk | |
| External URL references only | No bundled content — relies on external availability | |

**User's choice:** shared/frameworks/ with one file per framework (auto-selected recommended)
**Notes:** Research emphasized that bundled content is more reliable than external URLs.

---

## Install Pipeline Design

| Option | Description | Selected |
|--------|-------------|----------|
| Install all skills in one command | Simple, full suite, negligible token overhead (~2.6k at session start) | ✓ |
| Suite-selective install (--suite flag) | More granular but adds complexity to v1 | |
| Plugin marketplace distribution | Requires plugin.json manifest, namespace skills | |

**User's choice:** Install all skills in one command (auto-selected recommended)
**Notes:** Suite-selective install deferred to v2 per ADV-05.

---

## Description Activation Patterns

| Option | Description | Selected |
|--------|-------------|----------|
| Three-component pattern (domain + trigger + negative) | Research-backed: prevents activation failure (#1 distribution problem) | ✓ |
| Simple description (just what the skill does) | Risk of cross-triggering between semantically adjacent skills | |
| Keyword-heavy description | May activate on false positives | |

**User's choice:** Three-component pattern (auto-selected recommended)
**Notes:** Research documented 17-40% activation failure with weak descriptions.

---

## Claude's Discretion

- YAML frontmatter fields beyond name and description
- Internal section ordering within SKILL.md body
- Specific LATAM benchmarks to include

## Deferred Ideas

None — auto-mode discussion stayed within phase scope
