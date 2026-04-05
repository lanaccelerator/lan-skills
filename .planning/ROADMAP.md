# Roadmap: LAN Skills & Agents

## Overview

LAN Skills delivers 26 execution-focused Claude Code Skills across 4 audience suites (Startups, VC Operators, LP/Angel, Corporates) plus a LAN OS platform integration. The journey starts with infrastructure guardrails and the 5 highest-impact startup skills, expands to cover all 27 skills across all suites, and culminates in the /skills route and in-platform AI assistant. Every phase delivers a coherent, installable product increment.

## Phases

**Phase Numbering:**
- Integer phases (1, 2, 3): Planned milestone work
- Decimal phases (2.1, 2.2): Urgent insertions (marked with INSERTED)

Decimal phases appear between their surrounding integers in numeric order.

- [ ] **Phase 1: Foundation + Startup Core** - Repository infrastructure, quality standards, and the 5 priority startup skills
- [ ] **Phase 2: Startup Expansion + VC Operators** - Remaining 7 startup skills and full 5-skill VC Operator suite
- [ ] **Phase 3: LP & Angel + Corporate Suites** - 5 LP/Angel skills and 4 Corporate skills completing all 27 skills
- [ ] **Phase 4: LAN OS Integration** - Landing page section, /skills route, skills-catalog.ts, and in-platform AI assistant

## Phase Details

### Phase 1: Foundation + Startup Core
**Goal**: A functional repository with infrastructure guardrails and 5 production-quality startup skills that LAN portfolio companies can install and use today
**Depends on**: Nothing (first phase)
**Requirements**: INFRA-01, INFRA-02, INFRA-03, INFRA-04, INFRA-05, INFRA-06, INFRA-07, INFRA-08, QUAL-01, QUAL-02, QUAL-03, QUAL-04, QUAL-05, QUAL-06, QUAL-07, QUAL-08, QUAL-09, QUAL-10, QUAL-11, STRT-01, STRT-02, STRT-03, STRT-04, STRT-05
**Success Criteria** (what must be TRUE):
  1. Running `./install.sh` on macOS, Linux, and WSL copies all 5 startup skills to ~/.claude/skills/ with no errors
  2. Claude auto-activates the correct skill when a user phrases a startup workflow request naturally (e.g., "validate my startup model" triggers venture-model-validator)
  3. Each of the 5 skills asks for missing inputs, produces structured markdown output (scorecard/memo/outline), cites a specific authoritative framework with URL, and ends with a next steps section
  4. Each skill includes a TEMPLATES.md with a filled example that enforces output structure consistency across runs
  5. Every skill includes a LATAM Context section with LAVCA-sourced benchmarks annotating US figures
**Plans**: 5 plans

Plans:
- [x] 01-01-PLAN.md — Repo scaffold + install pipeline (directories, install.sh, validate.sh)
- [x] 01-02-PLAN.md — Shared frameworks + docs (7 framework files, README.md, contributor guide)
- [x] 01-03-PLAN.md — venture-model-validator skill (VC-backability scorecard)
- [ ] 01-04-PLAN.md — pitch-deck-builder + go-to-market-strategist skills
- [ ] 01-05-PLAN.md — startup-kpi-automator + data-room-builder skills (completes Phase 1)

### Phase 2: Startup Expansion + VC Operators
**Goal**: A complete 13-skill Startup suite covering the full founder journey (including a full fundraising co-pilot) plus a 5-skill VC Operator suite for LAN's deal workflow — all following Phase 1 quality standards
**Depends on**: Phase 1
**Requirements**: STRT-06, STRT-07, STRT-08, STRT-09, STRT-10, STRT-11, STRT-12, STRT-13, VCOP-01, VCOP-02, VCOP-03, VCOP-04, VCOP-05
**Success Criteria** (what must be TRUE):
  1. A founder can run the full workflow — from VC-backability check through deck, GTM, KPIs, data room, unit economics, fundraising readiness, competitive map, MVP, sales playbook, pricing, and end-to-end fundraising — without leaving the skill suite
  2. deck-reviewer and pitch-deck-builder activate on distinct natural-language inputs without cross-triggering each other
  3. deal-memo-writer (VC analyst perspective) and pitch-deck-builder (founder perspective) are explicitly distinguished by audience in their descriptions and do not cross-activate
  4. All 5 VC Operator skills produce work products (memos, term sheets, reports) grounded in verified bibliographic sources with accessible URLs
**Plans**: TBD

### Phase 3: LP & Angel + Corporate Suites
**Goal**: All 27 skills complete across all 4 suites — LP/Angel investors and corporate innovation teams can install and run their respective skills
**Depends on**: Phase 2
**Requirements**: LPAN-01, LPAN-02, LPAN-03, LPAN-04, LPAN-05, CORP-01, CORP-02, CORP-03, CORP-04
**Success Criteria** (what must be TRUE):
  1. angel-investment-analyzer (LP side) and venture-model-validator (founder side) use the same scoring criteria from opposite perspectives without cross-activating
  2. lp-term-sheet-analyzer references brad-feld-terms.md (the shared framework file already built for term-sheet-generator in Phase 2) without duplicating content
  3. All 4 Corporate skills activate for corporate innovation roles and include a LATAM Context section with corporate-specific benchmarks
  4. Running `./install.sh` installs all 27 skills across 4 suite directories with per-skill success confirmations
**Plans**: TBD

### Phase 4: LAN OS Integration
**Goal**: LAN OS platform surfaces all 27 skills with a discovery UI and in-platform AI assistant that routes skill invocations through BYOK billing
**Depends on**: Phase 3
**Requirements**: LANOS-01, LANOS-02, LANOS-03, LANOS-04, LANOS-05
**Success Criteria** (what must be TRUE):
  1. The LAN OS landing page displays a "Skills & Agents" section with 4 suite cards matching the existing design system (gradient border, hover glow, DM Serif heading)
  2. The /skills route shows all 27 skills in a filterable grid and a user can find any skill by suite in under 5 seconds
  3. Clicking [Usar] on any skill opens the in-platform AI assistant with that skill's SKILL.md pre-loaded as the system prompt
  4. For startups with Supabase records, the AI assistant injects their KPI, deck, and metrics context alongside the skill system prompt
**UI hint**: yes
**Plans**: TBD

## Progress

**Execution Order:**
Phases execute in numeric order: 1 → 2 → 3 → 4

| Phase | Plans Complete | Status | Completed |
|-------|----------------|--------|-----------|
| 1. Foundation + Startup Core | 3/5 | In Progress|  |
| 2. Startup Expansion + VC Operators | 0/TBD | Not started | - |
| 3. LP & Angel + Corporate Suites | 0/TBD | Not started | - |
| 4. LAN OS Integration | 0/TBD | Not started | - |
