---
name: startup-solution-matcher
description: >
  For CORPORATE INNOVATION TEAMS (not startup founders or VC operators). ALWAYS
  invoke when an innovation director or corporate procurement team needs a ranked
  shortlist of startups or technology solutions solving a specific business problem
  — applying CB Insights market map methodology, Gartner evaluation framework, and
  LATAM corporate pilot data to produce a shortlist with pros/cons, pricing
  estimates, and integration complexity scores. NOT for building an innovation
  strategy (use open-innovation-scanner for that). NOT for VC fund operators
  sourcing deals (use deal-memo-writer for that).
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: corporates
license: MIT
---

# Startup Solution Matcher

Produces a ranked shortlist of startup archetypes and specific company examples for
a defined corporate business problem. Scores each shortlisted archetype on strategic
fit, LATAM availability, integration complexity, and enterprise readiness. Flags
procurement red flags that predict pilot failure. Designed for the corporate
procurement and innovation director's chair — not the investor's or founder's.

The question this skill answers is: "Which startups are actually procurement-ready
for our specific problem in our specific context?" — not "Which startups are exciting
in this space?"

## Step 1: Input Gathering

Ask all seven questions in ONE message. Do not begin the shortlist until answers
(or stated assumptions) are available for each.

1. **Company name and sector** (industry + geography + revenue scale)
2. **The specific problem being solved** — must be concrete and metric-driven:
   GOOD: "Reduce customer churn by 15% in 6 months via predictive analytics"
   BAD: "Improve customer experience"
   If problem is vague, flag it and ask for a measurable success metric.
3. **Current technology stack** — legacy ERP? cloud-native? on-premise? Which
   systems must the startup integrate with?
4. **Integration constraints** — APIs available? IT team size? IT team bandwidth
   for integration support? Cloud provider restrictions?
5. **Procurement criteria** — budget range (USD), timeline, minimum vendor size or
   compliance certifications required (SOC 2, ISO 27001, local data residency)
6. **LATAM geographic scope** — local country only, or multi-country? Which specific
   markets matter for the pilot?
7. **Internal champion status** — name and title of the person who OWNS this initiative
   inside the corporation. "We're exploring" without a named champion is a red flag.

If the team does not answer a question, proceed with a stated assumption and flag it
as: `[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks — Startup Evaluation Methodology

Read [references/digital-transformation-context.md](references/digital-transformation-context.md)
before building the shortlist. Apply the following methodology in sequence:

**CB Insights market map approach:**
1. Define the market problem precisely (problem → solution category → sub-categories)
2. Identify startup archetype categories that solve the problem
3. Map active companies per archetype (funding stage, geography, enterprise readiness)
4. Filter by enterprise criteria: named customer references, LATAM availability, and
   compliance certifications matching corporate procurement requirements

**Gartner Hype Cycle positioning:**
For each startup archetype, assess which phase the underlying technology occupies:
- "Innovation Trigger" = higher risk, no enterprise references, longer integration timeline
- "Slope of Enlightenment" = tested, enterprise references exist, integration patterns known
- "Plateau of Productivity" = commoditized, use License/API over Partner/Build

**Enterprise readiness scoring (1–5):**
1 = pre-product or no enterprise customers | 2 = 1-3 enterprise customers, no enterprise support SLA |
3 = 5-10 enterprise customers, basic support | 4 = 10+ enterprises, SOC 2 Type II, named CSM |
5 = 50+ enterprise customers, formal enterprise procurement program, LATAM references

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (confirm answers or state assumptions)
2. Define the problem precisely — restate the problem as a metric with a deadline
   (if the team's statement lacks a measurable outcome, flag it before proceeding)
3. Generate startup archetype categories that solve the stated problem
4. Score each archetype on four dimensions:
   - Strategic fit (1–5): Does this archetype directly solve the defined problem?
   - LATAM availability (1–5): Does this archetype have LATAM legal entities or LATAM customer references?
   - Integration complexity (1–5): How hard is it to integrate given the stated tech stack?
   - Enterprise readiness (1–5): See scoring rubric in Step 2
5. Select top 3 archetypes — identify 3–5 specific company examples per top archetype
6. Produce Startup Shortlist per [TEMPLATES.md](TEMPLATES.md)
7. Flag procurement red flags with `[RED FLAG]` prefix
8. Flag innovation theater indicators with `[THEATER]` prefix
9. Apply LATAM context — read [references/latam-context.md](references/latam-context.md)
10. End with Próximos Pasos

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). Do not change
section headings, table columns, or field order. Fill every section with real analysis.

The output is a Startup Shortlist containing:

- **Problem Definition Box** — refined problem statement, success metric, and timeline
- **Startup Shortlist Table** — one row per archetype:
  Archetype | Example Companies | Strategic Fit (1–5) | LATAM Availability (1–5) |
  Integration Complexity (1–5) | Enterprise Readiness (1–5) | Estimated Pilot Cost (USD) | Recommendation
- **Procurement Red Flags** — explicit `[RED FLAG]` callouts for each flag found
- **Innovation Theater Indicators** — explicit `[THEATER]` callouts for each pattern found
- **LATAM Context Box** — LATAM procurement benchmarks labeled with source
- **Recommended Next Steps for Evaluation** — concrete procurement actions
- **Próximos Pasos** — 4–5 concrete actions

## Step 5: Procurement Red Flag Detection

Flag every instance with `[RED FLAG]` prefix. Do not soften or bury them.

**[RED FLAG] patterns that predict pilot failure:**

- **Startup has <10 enterprise customers** — No proof of enterprise readiness. The
  corporate becomes the de facto QA team for the product.
- **No LATAM legal entity** — Contract must go through US subsidiary → FX complexity,
  US tax withholding, longer contract setup (average 5 months extra vs. LATAM entity).
- **No API documentation** — Integration planning is impossible. Complexity score
  cannot be verified. Add 3-4 months to integration timeline.
- **Pricing not transparent** — "Contact sales for pricing" with no published ranges
  means the startup will anchor 3-5× above the corporate's pilot budget. Budget holder
  will kill the initiative before it starts.
- **No named customer success contact** — Post-sales support is undefined. When the
  pilot hits problems (and it will), there is no one to call. Pilot will stall.
- **Startup has <2 years in market** — Legal teams will flag this. Procurement will
  stall on vendor risk assessment. Budget for 6 extra months of procurement friction.

## Step 6: Innovation Theater Detection

Flag every instance with `[THEATER]` prefix. Do not soften or bury them.

**[THEATER] patterns that predict corporate initiative failure:**

- **Problem statement is a wish, not a metric** — "improve customer experience" is
  a wish. "Reduce NPS-driven churn by 12% in Q2" is a metric. Without a metric,
  the pilot has no success condition and will never graduate to production.
- **No internal champion named** — A committee cannot own a startup pilot. One named
  person with budget authority must be the internal champion. No name = no pilot.
- **IT team cannot support integration complexity > 3/5** — Check IT team bandwidth.
  If IT has no available resource for 6 months, every startup shortlisted at complexity
  > 3/5 is theoretical, not procurable.
- **Procurement timeline < 3 months for complexity > 3/5** — LATAM enterprise procurement
  for complex integrations takes 4–9 months. A 90-day timeline is a press release, not
  a pilot plan. Either extend timeline or reduce complexity requirement.
- **Budget < $50k for complexity > 2/5** — LATAM procurement overhead (legal, IT,
  onboarding) consumes $30-50k before any startup delivers value. Budget under $50k
  with complexity > 2/5 means the entire budget disappears into process, not product.

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) before producing final
recommendations. Apply LATAM-specific adjustments to all shortlist recommendations.

Key LATAM adjustments for corporate startup procurement:

- **Legal entity check:** Most top global startups have no LATAM legal entity. Contract
  must go through US subsidiary → US tax withholding, FX exposure, and an average
  5-month contract setup (vs. 6-8 weeks for LATAM-native vendors).
- **Prefer LATAM-native:** Startups with LATAM offices or LATAM customer references close
  corporate pilots 3× faster. Weight LATAM availability heavily in shortlist scoring.
- **Pilot budget calibration:** LATAM enterprise pilot budgets average $50-150k USD vs.
  $200-500k in US enterprise markets. Size your shortlist recommendations accordingly.
- **Fiscal compliance:** Startups unfamiliar with Brazilian NF-e, Mexican CFDI, or
  Colombian e-invoicing requirements create accounting blocks at contract close.
  Verify fiscal compliance capability before shortlisting.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — direct, no-sugarcoating, applied to the
corporate procurement and innovation context. You are a corporate innovation advisor
who has run dozens of startup evaluations and seen procurement committees kill good
pilots for preventable reasons.

Expected tone: "Three of your five shortlisted startups have no LATAM legal entity.
Your procurement will take 6-9 months and require US subsidiary contracting with FX
and tax complexity. Either accept that complexity or prioritize LATAM-native startups.
Here are the two LATAM-native alternatives in your shortlist that can close in 8 weeks."

## Step 6: Próximos Pasos

End EVERY analysis with 4–5 concrete procurement actions. Use the header
`## Próximos Pasos`.

Actions must be specific and corporate-facing (not startup advice):

- GOOD: "Issue an RFI to top 3 shortlisted startups requiring: LATAM reference customers
  (minimum 2 enterprises in your sector), LATAM legal entity confirmation, SOC 2 Type II
  documentation, and transparent pricing within 30 days."
- BAD: "Explore more startups in this space."

Always include: "Issue an RFI to top [N] shortlisted startups requiring LATAM reference
customers and LATAM legal entity confirmation."

## Sources

- [Digital Transformation Context](references/digital-transformation-context.md) — CB
  Insights market map methodology + Gartner Hype Cycle + enterprise readiness criteria
- [LATAM Corporate Procurement Context](references/latam-context.md) — LATAM procurement
  timelines, pilot budgets, fiscal compliance requirements
- [shared/frameworks/editorial-voice.md](../../../../shared/frameworks/editorial-voice.md) — tone standard
- [shared/frameworks/latam-benchmarks.md](../../../../shared/frameworks/latam-benchmarks.md) — LATAM corporate LP base context
- CB Insights Corporate-Startup Partnerships: https://www.cbinsights.com/research/report/startup-corporate-partnerships/
- Gartner Hype Cycle methodology: https://www.gartner.com/en/research/hype-cycle
- Plug and Play Corporate matching methodology: https://www.plugandplaytechcenter.com/corporate/
- McKinsey LATAM Corporate Innovation 2024: https://www.mckinsey.com/featured-insights/sustainable-inclusive-growth/latin-america-corporate-innovation
