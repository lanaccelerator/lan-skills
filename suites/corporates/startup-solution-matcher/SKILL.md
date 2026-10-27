---
name: startup-solution-matcher
description: >
  Use when a corporate innovation, procurement or IT team needs a ranked shortlist of
  startups or vendors for one specific business problem: archetypes, named example
  companies verified on the web, scores for fit, LATAM availability, integration
  complexity and enterprise readiness, pilot cost range, procurement red flags, and an
  RFI plan; covers AI vendors (deployment model, data use, security certifications).
  Spanish triggers: "qué startups resuelven esto", "buscame proveedores", "shortlist de
  startups", "scouting de startups", "qué solución de IA compramos". NOT for the overall
  innovation strategy (use open-innovation-scanner), NOT for designing the pilot (use
  pilot-program-designer), NOT for VC deal sourcing or memos (use deal-memo-writer).
categories: ["business", "corporate-innovation", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: corporates
license: MIT
---

# Startup Solution Matcher

Answers, from the procurement and innovation chair: "Which startups are actually buyable for
our problem, in our country, with our systems?" Not "which startups are exciting".

## Step 1: Intake (one message)

Ask all seven in ONE message. Missing answers become `[ASSUMPTION: ...]`; do not stop.

1. Company, sector, countries, revenue scale
2. The problem as a metric with a deadline ("cut shrinkage 20% in 50 stores in 12 months").
   If vague, rewrite it as a metric and flag it.
3. Systems the vendor must integrate with (ERP, core banking, CRM, data warehouse), cloud or
   on-prem
4. IT capacity for integration (people x months)
5. Procurement criteria: budget range, timeline, certifications (SOC 2 Type II, ISO 27001,
   ISO/IEC 42001 for AI management, local data residency)
6. Countries where the pilot runs and where the vendor must invoice
7. Named internal champion with budget authority

## Step 2: Method (read references first)

Read [references/digital-transformation-context.md](references/digital-transformation-context.md)
and [references/latam-context.md](references/latam-context.md); respect their data-status banner.

1. **Market map:** problem, solution categories, archetypes (CB Insights market-map approach).
2. **Technology maturity:** place each archetype on the Gartner Hype Cycle; early-cycle means
   fewer references and longer integration.
3. **Enterprise readiness (1-5):** 1 = no enterprise customers; 2 = 1-3, no support SLA;
   3 = 5-10, basic support; 4 = 10+, SOC 2 Type II, named customer success manager; 5 = 50+,
   formal enterprise program and LATAM references.
4. **AI vendors, extra checks:** where the model runs (vendor cloud, customer cloud, on-prem,
   air-gapped); whether customer data trains shared models; model and data retention; how
   accuracy is measured on the customer's own cases; what happens when the underlying model
   provider changes. If data cannot leave the company, only on-prem or private deployments
   qualify (YC RFS Winter 2027, "AI for the Air-Gapped Economy").

## Step 3: Workflow

1. Confirm inputs or state assumptions; restate the problem as a metric.
2. Generate archetypes that solve it.
3. Score each archetype 1-5: strategic fit, LATAM availability (entity, local invoicing,
   local references), integration complexity, enterprise readiness.
4. Pick the top 3 archetypes and name 3-5 example companies each. **Verify every named company
   at run time** with web search: website live, product matches, legal entities, public
   customer references, certifications, pricing signals. Never assert a startup's customers,
   entities or certifications from memory; if you cannot verify, mark the cell "unverified".
5. Estimate pilot cost ranges from the vendor's public pricing or quotes; otherwise give a range
   and label it as an estimate.
6. Flag `[RED FLAG]` and `[THEATER]` items (Steps 5-6).
7. LATAM adjustments, the RFI plan, Next Steps.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's problem.
See [TEMPLATES.md](TEMPLATES.md) for the filled example. Sections: Problem Definition, Startup
Shortlist (Archetype | Example Companies | Strategic Fit | LATAM Availability | Integration
Complexity | Enterprise Readiness | Estimated Pilot Cost (USD) | Recommendation), Procurement
Red Flags, Innovation Theater Indicators, LATAM Context, Recommended Next Steps for
Evaluation, Next Steps.

## Step 5: Procurement red flags

Flag each with `[RED FLAG]`:
- **Few enterprise customers:** the corporate becomes the vendor's QA team.
- **No local entity or reseller:** no local invoice (CFDI, NF-e, DIAN e-invoice) means accounts
  payable cannot pay; cross-border contracting adds withholding tax and months of setup.
- **No API documentation:** integration cannot be scoped.
- **Opaque pricing:** "contact sales" with no ranges usually anchors far above a pilot budget.
- **No named customer success contact:** nobody to call when the pilot breaks.
- **Very young company in a regulated buyer:** vendor-risk review will stall; plan for it.
- **AI vendor that trains shared models on customer data by default**, or cannot run where the
  data must stay.

## Step 6: Theater flags

Flag each with `[THEATER]`:
- The problem is a wish ("improve customer experience"), not a metric.
- No named champion with budget authority; a committee owns it.
- IT has no capacity, yet the shortlist is full of complexity 4-5 integrations.
- A 90-day timeline for a complex, regulated integration.
- A budget that procurement, legal and security review will consume before the pilot starts.

## Step 7: LATAM rules

- Check local invoicing capability (CFDI, NF-e, DIAN) before shortlisting, not at contract.
- Weight LATAM availability heavily: local references and entities shorten legal, tax and
  security review (directional).
- LATAM pilot budgets are usually smaller than US ones (directional): size the shortlist to the
  real budget and ask vendors for pilot pricing.
- Data protection: LGPD, LFPDPPP, Colombia's Ley 1581; sector regulators may require data
  residency.
- Do not quote LATAM procurement statistics (share of vendors without entities, "3x faster"
  closes): no traceable source exists.

## Tone & Editorial Voice

See [references/shared/editorial-voice.md](references/shared/editorial-voice.md). Example:
"Three of your five vendors cannot invoice in Mexico. Either accept months of cross-border
setup or move the two local vendors to the top."

## Next Steps

End with 4-5 procurement actions with owners and dates, always including: "Issue an RFI to the
top [N] vendors requiring local customer references in your sector, local entity or reseller
confirmation, security documentation (SOC 2 Type II or ISO 27001; ISO/IEC 42001 for AI) and
pilot pricing within 30 days."

## Sources

- CB Insights, research on corporate-startup partnerships: https://www.cbinsights.com/research/report/startup-corporate-partnerships/
- Gartner Hype Cycle methodology (gartner.com)
- ISO/IEC 42001:2023, AI management systems: https://www.iso.org/standard/81230.html
- Y Combinator, Requests for Startups, Winter 2027: https://www.ycombinator.com/rfs
- Plug and Play, corporate innovation platform: https://www.plugandplaytechcenter.com/corporate/
- [references/digital-transformation-context.md](references/digital-transformation-context.md), [references/latam-context.md](references/latam-context.md)
