# Phase 4: LAN OS Integration - Context

**Gathered:** 2026-04-05
**Status:** Ready for planning

<domain>
## Phase Boundary

Integrate the 27-skill suite into the LAN OS platform (~/lan-os/). Deliver: (1) landing page "Skills & Agents" section with 4 suite cards, (2) /skills platform route with filterable grid, (3) skills-catalog.ts static TypeScript file, (4) [Usar] button that opens AI assistant with skill pre-loaded, (5) startup data context injection for program companies.

This phase operates in the **~/lan-os/** codebase (Next.js 14+, App Router, TypeScript, Tailwind, shadcn/ui) — NOT in ~/lan-skills/.

</domain>

<decisions>
## Implementation Decisions

### Landing Page Section
- **D-43:** New component `skills-agents-section.tsx` in `src/app/(public)/components/landing/`. Placed after `<MetricsSection />` and before `<TrackRecordSection />` in the landing page.
- **D-44:** Title uses DM Serif Display: "Skills & Agents — AI Tools para el Ecosistema". Subtitle: "Herramientas de inteligencia artificial para startups, inversores y corporativos. Construidas por LAN, potenciadas por Claude."
- **D-45:** 4 cards with gradient border and hover glow effect (matching existing LAN OS design language):
  1. "Para Inversores" — badge "Angels & LPs", 5 skills
  2. "Para Corporativos" — badge "Open Innovation", 4 skills
  3. "Para Startups" — badge "Build & Scale", 13 skills
  4. "Para VCs" — badge "Fund Operations", 5 skills
- **D-46:** CTA button: "Explorar Skills →" linking to /skills route.

### Platform /skills Route
- **D-47:** New route at `src/app/(platform)/skills/page.tsx`. Grid layout with suite filter tabs (Todos, Startups, VC Operators, LP & Angel, Corporates).
- **D-48:** Each skill card shows: name, description (truncated), suite badge, [Usar] button. Cards use existing shadcn/ui Card component pattern.
- **D-49:** Data source: static `skills-catalog.ts` file — NOT runtime markdown parsing. The catalog mirrors SKILL.md frontmatter (name, description, suite, version).

### skills-catalog.ts
- **D-50:** Static TypeScript file at `src/data/skills-catalog.ts` or `src/lib/skills-catalog.ts`. Array of skill objects with: id, name, description, suite, categories, version, skillPath (relative path in lan-skills repo). Generated once, updated when skills change.
- **D-51:** Type: `SkillEntry { id: string; name: string; description: string; suite: 'startups' | 'vc-operators' | 'lp-angel' | 'corporates'; categories: string[]; version: string; skillPath: string; }`

### [Usar] Button / AI Assistant
- **D-52:** [Usar] button opens the existing AI assistant (if one exists in LAN OS) or a new chat interface with the skill's SKILL.md content pre-loaded as system prompt context.
- **D-53:** For the initial implementation, [Usar] can copy the `/skill-name` command to clipboard for use in Claude Code. Full in-platform AI assistant is a Phase 5 concern if it doesn't exist yet.
- **D-54:** If LAN OS already has an AI chat route, integrate there. If not, a simple "copy command" + link to Claude Code is sufficient for v1.

### Startup Data Context Injection
- **D-55:** For program startups (authenticated users with startup role), the AI assistant injects their Supabase data alongside the skill system prompt: KPIs from startup_kpis table, deck URL, metrics snapshot.
- **D-56:** This is a post-MVP enhancement. If the AI assistant doesn't exist yet in LAN OS, defer to v2. The skills work standalone via Claude Code regardless.

### Claude's Discretion
- Exact Tailwind classes for gradient border/hover glow — match existing LAN OS components
- Whether to use framer-motion animations (the landing page already uses motion/react)
- How to structure the /skills page layout (grid columns, responsive breakpoints)
- Whether skills-catalog.ts lives in src/data/ or src/lib/

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### LAN OS Codebase (~/lan-os/)
- `src/app/(public)/page.tsx` — Landing page composition (section order)
- `src/app/(public)/components/landing/metrics-section.tsx` — Design pattern reference (motion/react, Tailwind)
- `src/app/(public)/components/landing/hero-section.tsx` — DM Serif Display heading pattern
- `src/app/(public)/data/landing-data.ts` — Static data pattern for landing sections
- `src/components/ui/` — shadcn/ui component library
- `CLAUDE.md` — LAN OS project constraints and conventions

### LAN Skills (~/lan-skills/)
- `README.md` — Full 27-skill catalog with descriptions (source for skills-catalog.ts)
- All `suites/*/*/SKILL.md` files — Frontmatter data for catalog generation

### Prior Phase Contexts
- `.planning/phases/01-foundation-startup-core/01-CONTEXT.md` — Skill format decisions
- `.planning/phases/02-startup-expansion-vc-operators/02-CONTEXT.md` — Cross-suite disambiguation
- `.planning/phases/03-lp-angel-corporate-suites/03-CONTEXT.md` — Suite audience framing

</canonical_refs>

<code_context>
## Existing Code Insights

### Reusable Assets
- Landing page section components in `src/app/(public)/components/landing/` — 14 existing sections, all follow same pattern (motion/react animations, Tailwind styling, DM Serif Display headings)
- `src/app/(public)/data/landing-data.ts` — Static data for landing sections (METRICS array, etc.)
- `src/components/ui/` — shadcn/ui: Card, Button, Badge, Tabs components available
- `motion/react` — Already used throughout landing page for animations

### Established Patterns
- Landing sections: 'use client', motion import, intersection observer for scroll animations
- Platform pages: `src/app/(platform)/` route group with sidebar layout
- Data: Static TypeScript files for mock data, Supabase queries for real data
- Spanish UI labels: All user-facing text in Spanish

### Integration Points
- Landing page: Insert new component between MetricsSection and TrackRecordSection in page.tsx
- Platform: New route at `src/app/(platform)/skills/page.tsx`
- Navigation: Add "Skills" link to platform sidebar (if sidebar exists)
- Data: skills-catalog.ts provides the skill data for both landing section and /skills route

</code_context>

<specifics>
## Specific Ideas

- The landing section should feel premium — gradient borders, subtle glow on hover, consistent with the existing dark/emerald LAN OS aesthetic
- The /skills route should be instantly filterable — click a suite tab, see only those skills. No page reload.
- [Usar] for v1 is pragmatic: copy `/skill-name` to clipboard + toast notification. Full AI integration comes later.
- The 4 suite cards on the landing page should each show the skill count and a 1-line value proposition, not a list of all skills

</specifics>

<deferred>
## Deferred Ideas

- Full in-platform AI assistant with BYOK routing (requires AI chat infrastructure)
- Startup data auto-injection into skill prompts (requires authenticated AI chat)
- Skill usage analytics/tracking
- Skill rating/feedback system

</deferred>

---

*Phase: 04-lan-os-integration*
*Context gathered: 2026-04-05*
