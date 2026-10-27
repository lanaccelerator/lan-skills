---
name: open-innovation-scanner
description: >
  Use when a corporate innovation director, CTO/CDO office or strategy team needs to map
  where to use external innovation for a business problem: capability gaps, build / buy /
  partner / license per gap, startup archetypes, priority by strategic fit and complexity,
  innovation-theater flags, including AI adoption via startups (agents, data access,
  on-prem or air-gapped needs). Spanish triggers: "innovación abierta", "mapa de
  oportunidades de innovación", "cómo trabajar con startups", "build or buy", "dónde
  usar IA con startups", "estrategia de innovación corporativa". NOT for a ranked
  vendor shortlist for one problem (use startup-solution-matcher), NOT for designing one
  pilot (use pilot-program-designer), NOT for setting up a CVC (use
  corporate-venture-evaluator), NOT for VC deal memos (use deal-memo-writer).
categories: ["business", "corporate-innovation", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: corporates
license: MIT
---

# Open Innovation Scanner

Answers, from the innovation director's chair: "Where should we engage outside innovation for
this problem, in which mode, and what will it take to succeed?" Produces an Innovation
Opportunity Map, not a list of exciting startups.

## Step 1: Intake (one message)

Ask all seven in ONE message. Missing answers become `[ASSUMPTION: ...]`; do not stop.

1. Company, sector, revenue range, employees, countries
2. The business problem as a metric (current state, target, deadline). "We want to innovate"
   is not a problem.
3. Annual innovation budget (USD) and who decides (central team, business unit, CTO office)
4. What is already running: R&D projects, pilots, CVC or LP positions, labs
5. Openness to each mode: startups / internal R&D / acquisition / licensing
6. Data and security constraints: can data leave the company or country? cloud allowed?
   on-prem or air-gapped required? (decides which AI startups can even be considered)
7. Timeline: proof of concept in months, or a multi-year roadmap

## Step 2: Frameworks (read references first)

Read [references/digital-transformation-context.md](references/digital-transformation-context.md)
and [references/latam-context.md](references/latam-context.md). Note their data-status banner:
numbers marked "(directional, source unverified)" are heuristics, never quotable data.

Apply Chesbrough's three open-innovation flows:
1. **Outside-in:** which external capability the problem needs that the company lacks.
2. **Inside-out:** internal IP, data or processes that could be licensed or spun out.
3. **Coupled:** where co-development with a startup beats pure build or buy.

Classify each gap:

| Mode | Use when |
|------|----------|
| **Build** | Core to differentiation; IP ownership critical; team can close the gap |
| **Buy** (acquire) | Speed matters; a startup has a lead the team cannot close in about 3 years |
| **Partner** (pilot) | Technology works but is not mature for this context; startup willing to co-develop |
| **License** (API, white-label) | Commodity capability; licensing beats building over 5 years |

**AI-specific rule:** for each AI gap decide whether the company should rent a model (API),
buy a vertical AI product, or own a specialized model trained on its data. YC's Winter 2027
Requests for Startups argue that regulated companies will increasingly own models ("Own Your
Intelligence") and that much valuable data cannot go to an API at all ("AI for the
Air-Gapped Economy"). If data cannot leave the building, only vendors that deploy on-prem
qualify; say so in the map.

## Step 3: Workflow

1. Confirm inputs or state assumptions.
2. List capability gaps against the problem metric.
3. Classify each gap (build / buy / partner / license).
4. Describe the startup archetype per gap (type of company, not names; vendor search is
   startup-solution-matcher's job).
5. Score strategic alignment (1-5) and implementation complexity (1-5). Complexity includes
   data access, security review, integration with core systems and regulatory approval.
6. Assign priority: P1 = alignment >= 4 and complexity <= 4; P3 = alignment <= 3 and complexity
   >= 4; everything else P2.
7. Flag `[THEATER]` patterns (Step 5).
8. Apply LATAM context; then Recommended Actions by tier and Next Steps.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's company.
See [TEMPLATES.md](TEMPLATES.md) for the filled example. Sections: Innovation Opportunity Map
(Gap | Mode | Startup Archetype | Strategic Alignment | Implementation Complexity | Priority),
Innovation Theater Indicators, LATAM Context, Recommended Actions (Tier 1: 60 days; Tier 2:
next quarter), Next Steps.

If presented as slides, apply references/shared/deck-design-rules.md.

## Step 5: Innovation theater flags

Flag each with `[THEATER]`:
- **No named executive sponsor:** a committee or "the innovation team" is not a sponsor. Require
  a named VP or C-level owner whose P&L the metric touches.
- **No problem metric:** "explore AI" or "work with startups" without a number to move.
- **No kill criteria:** a pilot without a failure definition never ends.
- **Budget that disappears into process:** if legal, security and IT onboarding will eat the
  budget before the startup delivers, say so with the company's own onboarding costs.
- **First startup partnership with no contract template:** add time and prepare a short
  startup MSA and data-processing agreement first.
- **Regulated-timeline fantasy:** a 90-day proof of concept that needs a regulator's sign-off.
- **AI pilot without data access agreed:** if the startup cannot see production-like data under
  a signed DPA, the pilot measures a demo. MIT NANDA's 2025 study found about 95% of generative
  AI pilots showed no measurable P&L impact (directional, small sample).

## Step 6: LATAM rules

- Procurement and legal onboarding often take months, not weeks (directional): plan it into the
  timeline and measure the company's own last vendor onboardings.
- Fiscal invoicing (Brazil NF-e, Mexico CFDI, Colombia DIAN e-invoice) decides whether a startup
  can be paid: check it before any pilot.
- Data protection (LGPD in Brazil, LFPDPPP in Mexico, Habeas Data in Colombia) and sector
  regulators (banking, insurance, telecom, health) add review time when customer data is used.
- FX: budgets in local currency, startup pricing often in USD; fix the exchange assumption.
- Do not quote pilot success rates or champion multipliers as LATAM statistics: no traceable
  source exists.

## Tone & Editorial Voice

See [references/shared/editorial-voice.md](references/shared/editorial-voice.md). You have run
dozens of startup pilots and watched most fail for preventable reasons. Example: "This is
innovation theater. No sponsor, no metric, and a 90-day timeline for a regulated change. Fix
those three before you call a single startup."

## Next Steps

End with 3-5 corporate actions inside 60 days, each with an owner and date. If no executive
sponsor exists, appointing one is action 1.

## Sources

- Henry Chesbrough, "Open Innovation" (Harvard Business School Press, 2003)
- Y Combinator, Requests for Startups, Winter 2027: https://www.ycombinator.com/rfs
- MIT NANDA, "The GenAI Divide: State of AI in Business 2025" (as reported by Fortune, 18 Aug 2025)
- Hugo Kantis and Pablo Angelelli, "Grandes empresas, startups e innovación en América Latina: promesas y desafíos" (IDB), qualitative LATAM corporate-startup evidence
- Cuantico VP, "Latin America VC Report 2026": https://reports.cuanticovp.com/latin-america-vc-report-2026/
- [references/digital-transformation-context.md](references/digital-transformation-context.md), [references/latam-context.md](references/latam-context.md)
