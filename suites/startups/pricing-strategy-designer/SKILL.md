---
name: pricing-strategy-designer
description: >
  Use when a founder asks how to price or package their product: "cuánto cobro", "cómo armo
  mis planes de precios", "suscripción, por uso o freemium", "estoy cobrando muy barato?",
  "cómo cobro un producto de AI o un agente", "precios en dólares o moneda local". Finds the
  value metric (ProfitWell method), picks the model (seat, flat, usage, outcome, hybrid,
  transaction), designs 3 tiers, benchmarks competitors, flags LATAM chronic underpricing and
  ends with a concrete price test. Covers AI-native pricing with inference cost as a floor.
  NOT for computing CAC, LTV, payback or contribution margin (use unit-economics-calculator),
  valuation or the round price (use startup-valuation-benchmark), or the sales process and
  pipeline (use sales-playbook-generator).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
license: MIT
---

# Pricing Strategy Designer

Designs a pricing strategy using the Patrick Campbell / ProfitWell value metric
methodology. Produces a pricing model recommendation with value metric identification,
three-tier packaging, competitive pricing table, and LATAM-specific context on
currency denomination and chronic underpricing.

## Step 1: Input Gathering

Ask all questions in ONE message. Do not start designing until you have answers
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

9. **AI cost per unit (AI products only):** model/inference cost per task, conversation or
   active user, if known

If the user does not answer a question, proceed with a stated assumption and flag it
as: `[ASSUMPTION: ...]`. Do not silently skip inputs. If a company brain (LAN Brain or
another MCP-connected knowledge base) is available, pull current pricing, customer case
studies and competitor notes from it before asking.

## Step 2: Apply Frameworks

Read [references/pricing-framework.md](references/pricing-framework.md) BEFORE designing.
Apply these frameworks in order:

1. **Patrick Campbell / ProfitWell value metric framework** — The value metric is what
   customers pay for that scales with the value they receive. Pricing that is not tied to
   a value metric is flat pricing — it cannot grow without seat expansion or price increases.
   Source: Patrick Campbell / ProfitWell (now Paddle) value-based pricing method; the original profitwell.com articles are offline
2. **Kyle Poyar, Growth Unhinged** (former OpenView pricing lead; OpenView's surveys are
   offline since the firm closed): usage-based and hybrid pricing patterns, PLG pricing,
   and the 2025 SaaS Benchmarks Report with High Alpha (12 Nov 2025).
   Source: https://www.growthunhinged.com/
3. **Price is the strongest profit lever** (Marn and Rosiello, "Managing Price, Gaining
   Profit", HBR, Sep-Oct 1992, 2,400+ companies): a 1% price improvement with no volume
   loss lifts operating profit 11.1%, vs 3.3% for a 1% volume improvement.
   Source: https://hbr.org/1992/09/managing-price-gaining-profit
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
5. **Margin floor check (AI and usage-heavy products):** price per unit must cover
   inference and third-party API cost with gross margin of at least 60% at the expected
   usage of the median customer; show the math. AI products average far below SaaS margins
   (Step 5, AI-native pricing). Cap or meter heavy usage in
   every tier so one power user cannot turn a customer unprofitable.
6. **Price sensitivity estimate:** rough willingness-to-pay based on segment, geography,
   and delivered value (value-based pricing, not cost-plus)
7. **Flag chronic underpricing** if present: this is common in LATAM and must be addressed
   directly. Do not soften it. If the founder is underpriced, say so and give the evidence.
8. Apply LATAM context annotations from
   [references/latam-context.md](references/latam-context.md)
9. Output using [TEMPLATES.md](TEMPLATES.md) structure
10. **Next Steps** including a specific A/B price test recommendation

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
- **Next Steps** — including specific A/B test recommendation

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing the output.

Key LATAM pricing realities:

- **Chronic underpricing:** LATAM SaaS is systematically underpriced. The most common
  LATAM startup pricing error is setting prices at 20-30% of delivered value because
  founders fear churn. If a founder's case studies show $1,000+ in annual savings per
  customer but they charge $29/month, they are at 2% of delivered value. Raise prices
  before raising capital.
- **LATAM discount is real but overstated:** LATAM prices sit well below US equivalents
  (directional: no rigorous LATAM pricing survey exists). Lower willingness to pay can
  justify part of the gap; "we're in LATAM" does not justify pricing at 5-10% of
  delivered value.
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
- **Freemium conversion in LATAM:** expect low single-digit free-to-paid conversion
  (directional; measure your own). Shorter free
  tiers with more friction to upgrade are more effective than open-ended free plans.
  If using freemium, design for conversion, not for adoption.
- **AI-native products: price the outcome, not the seat.** Across YC S26, a16z speedrun
  and top-fund portfolios (LAN idea-engine radar, Oct 2026), outcome and usage pricing is
  replacing per-seat SaaS: pay per operation, per milestone, per recovered dollar or per
  confirmed conversion, often with no annual contract. Sequoia's services-as-software thesis
  (Julien Bek): sell the work, not the tool, so each model improvement widens your margin
  instead of commoditizing you. If the product replaces work an agent does end to end,
  model at least one outcome-based option before defaulting to seats.
  Market data: in ICONIQ's State of AI snapshot (Jan 2026), usage-based pricing rose from
  19% to 35% of AI companies and outcome-based from 2% to 18% in six months, and AI product
  gross margins average around 50%, well below SaaS. Price above the inference cost floor.

## Tone & Editorial Voice

See references/shared/editorial-voice.md. Challenge underpricing directly and specifically.

If a founder is chronically underpriced, say so with evidence:
"At $29/month you are leaving money on the table. Your 3 case studies show $1,400 average
annual savings per customer. You are priced at 2% of your delivered value. At this price
point you have a math problem: to reach $1M ARR you need 2,873 customers. At $99/month
you need 841 customers. Run the shadow test before assuming customers will churn."

Pricing changes are reversible. Under-pricing for 18 months before realizing it is not.

## Step 6: Next Steps

Always include a specific A/B pricing test recommendation. Not "test your pricing" —
a specific test with a method.

Example: "Run a shadow pricing test for 30 days: send 50% of new trial signups to a $99
tier page vs your current $29 page. Measure the signup rate difference. A drop of less than
20% in signup rate means the market can absorb the higher price — raise prices immediately.
Shadow tests require no engineering: two landing pages, split by even/odd day of week."

Then hand off: run `/unit-economics-calculator` with the new price to confirm LTV/CAC and
payback, and `/sales-playbook-generator` if the new tiers change who sells and how.

## Sources

- ProfitWell value metric: Patrick Campbell / ProfitWell (now Paddle) value-based pricing method; the original profitwell.com articles are offline
- Kyle Poyar, Growth Unhinged (pricing research; replaces the offline OpenView survey): https://www.growthunhinged.com/
- Marn and Rosiello, "Managing Price, Gaining Profit", HBR 1992: https://hbr.org/1992/09/managing-price-gaining-profit
- ICONIQ State of AI bi-annual snapshot, Jan 2026 (summary: SaaStr, 28 Jan 2026): https://saastr.com/inference-costs-average-23-of-revenue-at-ai-b2b-companies-how-will-you-pay-for-it
- Monetizing Innovation: https://www.simon-kucher.com/en/book/monetizing-innovation
- [Pricing Framework](references/pricing-framework.md) — value metric taxonomy, model decision tree
- [LATAM Context](references/latam-context.md) — currency decisions, benchmarks, chronic underpricing
