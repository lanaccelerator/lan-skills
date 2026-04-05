---
name: pricing-strategy-designer
description: >
  For STARTUP FOUNDERS. Pricing strategy and packaging design.
  ALWAYS invoke when a founder asks how to price their product,
  what pricing model to use (subscription vs usage vs freemium),
  how to structure packaging tiers, or whether their current prices
  are right. NOT for calculating unit economics or LTV/CAC
  (use unit-economics-calculator for those calculations).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---

# Pricing Strategy Designer

Designs a pricing strategy using the Patrick Campbell / ProfitWell value metric
methodology. Produces a pricing model recommendation with value metric identification,
three-tier packaging, competitive pricing table, and LATAM-specific context on
currency denomination and chronic underpricing.

## Step 1: Input Gathering

Ask all eight questions in ONE message. Do not start designing until you have answers
(or stated assumptions) for each.

1. **Business model and product description:** What the product does and who uses it
2. **Current pricing:** What do you charge today? If nothing, what have you been thinking?
3. **Customer segments:** Do you have different customer types with different budgets and
   usage patterns?
4. **Value metric candidates:** What do customers get more of when they use your product
   more? (Examples: contracts signed, invoices sent, API calls made, records stored,
   seats/users, revenue processed)
5. **Competitor pricing:** What do 2-3 closest competitors charge? (model + entry price
   if known — "I don't know" is acceptable)
6. **Business model type:** SaaS / marketplace / transactional / API / fintech
7. **Geography:** LATAM-only / US-only / global? (Major impact on price point and
   currency denomination decision)
8. **Stage:** Pre-revenue (designing from scratch) / Early revenue (optimizing existing)
   / Growth (restructuring tiers)

If the user does not answer a question, proceed with a stated assumption and flag it
as: `[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/pricing-framework.md](references/pricing-framework.md) BEFORE designing.
Apply these frameworks in order:

1. **Patrick Campbell / ProfitWell value metric framework** — The value metric is what
   customers pay for that scales with the value they receive. Pricing that is not tied to
   a value metric is flat pricing — it cannot grow without seat expansion or price increases.
   Source: https://www.profitwell.com/recur/all/saas-pricing
2. **OpenView Partners SaaS Pricing Survey** — Product-led growth pricing benchmarks,
   usage-based pricing adoption rates, expansion revenue patterns.
   Source: https://openviewpartners.com/2023-saas-pricing-survey/
3. **Sequoia Pricing Guide** — Pricing is the most powerful lever in your business;
   a 1% improvement in price = 11× the profit impact of a 1% improvement in volume.
   Source: https://www.sequoiacap.com/article/pricing-your-product/
4. **"Monetizing Innovation" (Simon-Kucher)** — Feature packaging and willingness-to-pay
   methodology. Price to value, not to cost.
   Source: https://www.simon-kucher.com/en/book/monetizing-innovation

## Step 3: Workflow

Execute in this exact order:

1. **Identify the value metric** — What does the customer pay for that scales with the
   value they receive? The value metric must meet three criteria: (a) customers understand
   it intuitively, (b) it increases as customers get more value, (c) it can be measured
   and billed reliably.
2. **Recommend the pricing model** — usage-based / subscription (seat or flat) / hybrid /
   freemium+paid / transaction fee — with explicit rationale for why this model over alternatives
3. **Design 3 pricing tiers** — Starter / Growth / Enterprise — with feature sets, price
   anchors, and target customer segments per tier
4. **Build a competitive pricing table** — user's proposed price vs 2-3 competitors
5. **Price sensitivity estimate** — rough willingness-to-pay based on segment, geography,
   and delivered value (value-based pricing, not cost-plus)
6. **Flag chronic underpricing** if present — this is common in LATAM and must be addressed
   directly. Do not soften it. If the founder is underpriced, say so and give the evidence.
7. Apply LATAM context annotations from
   [references/latam-context.md](references/latam-context.md)
8. Output using [TEMPLATES.md](TEMPLATES.md) structure
9. **Próximos Pasos** including a specific A/B price test recommendation

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). Every section
is required. Fill every [bracketed placeholder] with real analysis.

The output contains:
- **Value metric identification** — the one metric that scales with customer value, with
  rationale for why this metric over alternatives
- **Pricing model recommendation** — with explicit reasoning vs alternatives considered
- **Packaging tiers table:** Tier | Monthly Price | Annual Price | Key Features | Limits | Target Segment
- **Competitive pricing table:** Competitor | Model | Entry Price | Mid-Tier | Enterprise/Top
- **Price sensitivity estimate** — with value-based justification
- **LATAM Context box** — currency denomination decision, billing cadence, underpricing check
- **Próximos Pasos** — including specific A/B test recommendation

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing the output.

Key LATAM pricing realities:

- **Chronic underpricing:** LATAM SaaS is systematically underpriced. The most common
  LATAM startup pricing error is setting prices at 20-30% of delivered value because
  founders fear churn. If a founder's case studies show $1,000+ in annual savings per
  customer but they charge $29/month, they are at 2% of delivered value. Raise prices
  before raising capital.
- **LATAM discount is real but overstated:** 40-60% below US equivalent is common and
  usually justified by lower customer LTV and willingness to pay. But "we're in LATAM"
  is not a justification for pricing at 5-10% of delivered value.
- **Currency denomination decision:**
  - USD pricing: Signals international ambition, provides FX hedge against devaluation.
    Right choice for multi-country LATAM products and any product targeting US customers.
  - Local currency: Reduces psychological friction, increases conversion. Right choice
    for single-country B2C products where customers are price-sensitive.
  - Hybrid: USD list price, local currency payment option via Mercado Pago or Stripe.
    Often best of both worlds.
- **Annual vs monthly billing in LATAM:** LATAM B2B customers often require 3+ months
  of proof before committing to annual contracts. Lead with monthly pricing at 1.2-1.3×
  the annual equivalent (not annual-first as in US SaaS). Example: $49/month OR $39/month
  billed annually.
- **Freemium conversion in LATAM:** 1-3% conversion rate vs 2-5% in US. Shorter free
  tiers with more friction to upgrade are more effective than open-ended free plans.
  If using freemium, design for conversion, not for adoption.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md. Challenge underpricing directly and specifically.

If a founder is chronically underpriced, say so with evidence:
"At $29/month you are leaving money on the table. Your 3 case studies show $1,400 average
annual savings per customer. You are priced at 2% of your delivered value. At this price
point you have a math problem: to reach $1M ARR you need 2,873 customers. At $99/month
you need 841 customers. Run the shadow test before assuming customers will churn."

Pricing changes are reversible. Under-pricing for 18 months before realizing it is not.

## Step 6: Próximos Pasos

Always include a specific A/B pricing test recommendation. Not "test your pricing" —
a specific test with a method.

Example: "Run a shadow pricing test for 30 days: send 50% of new trial signups to a $99
tier page vs your current $29 page. Measure the signup rate difference. A drop of less than
20% in signup rate means the market can absorb the higher price — raise prices immediately.
Shadow tests require no engineering: two landing pages, split by even/odd day of week."

## Sources

- ProfitWell value metric: https://www.profitwell.com/recur/all/saas-pricing
- OpenView Pricing Survey: https://openviewpartners.com/2023-saas-pricing-survey/
- Sequoia Pricing Guide: https://www.sequoiacap.com/article/pricing-your-product/
- Monetizing Innovation: https://www.simon-kucher.com/en/book/monetizing-innovation
- [Pricing Framework](references/pricing-framework.md) — value metric taxonomy, model decision tree
- [LATAM Context](references/latam-context.md) — currency decisions, benchmarks, chronic underpricing
