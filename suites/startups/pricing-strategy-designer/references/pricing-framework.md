# Pricing Framework Reference

**Sources:**
- ProfitWell value metric methodology: Patrick Campbell / ProfitWell (now Paddle) value-based pricing method; the original profitwell.com articles are offline
- Kyle Poyar, Growth Unhinged (usage and hybrid pricing research): https://www.growthunhinged.com/
- Sequoia Pricing Guide: https://www.sequoiacap.com/article/pricing-your-product/
- "Monetizing Innovation" (Simon-Kucher): https://www.simon-kucher.com/en/book/monetizing-innovation
- Tversky and Kahneman, Science, 1974: https://www.science.org/doi/10.1126/science.185.4157.1124
- Huber, Payne and Puto, Journal of Consumer Research, 1982: https://doi.org/10.1086/208899
- Van Westendorp, P. (1976). NSS Price Sensitivity Meter, ESOMAR Congress.

---

## Value Metric Taxonomy

The value metric is the unit of value that scales with what the customer gets from the
product. Pricing tied to a value metric creates expansion revenue as customers grow,
without requiring seat additions or price increases.

### Common Value Metric Types

| Metric | Definition | Best for | Example Products |
|--------|-----------|---------|-----------------|
| **Seats / Users** | Active users who can log in | Products where each human user gets distinct value | Slack, Notion, HubSpot CRM |
| **Usage volume** | API calls, messages sent, documents processed | API products, infrastructure, AI agents | Twilio, SendGrid, Stripe |
| **Revenue processed** | % of GMV or transaction value | Payment processing, marketplaces | Stripe, Shopify Payments |
| **Records / entities** | Contacts, invoices, contracts, vehicles | CRM, invoicing, contract and fleet tools | DocuSign, Pipedrive |
| **Data storage** | GB stored or processed | Storage, backup, data warehouse | AWS S3, Supabase |
| **Active events** | Monthly active users, active projects | Tools where usage drives value | Mixpanel (MTUs) |
| **Outcomes** | Savings achieved, revenue recovered, leads converted, cases resolved | Products that do the work end to end and can measure the result | Agent-based services, collections, recruiting |

### Value Metric Selection Criteria

A valid value metric must satisfy all three:
1. **Customer understands it intuitively:** "I pay based on [metric]" needs no explanation.
2. **Scales with value received:** a customer getting 10x more value pays roughly 10x more.
3. **Measurable and billable without ambiguity:** countable, logged, auditable by both sides.

### Anti-Pattern: Seat-Only Pricing for Products That Do the Work

When an AI agent does part of the work, the customer needs fewer human seats exactly as
the product delivers more value. Revenue falls while value rises (seat compression). Per
seat only is no longer enough. Keep seats as one line of the recurring base if access
control matters, and add usage and outcome components.

### Anti-Pattern: Flat Pricing

A single monthly fee with no limits gives no expansion revenue, overcharges small
customers, undercharges large ones, and hides which customers get the most value. It works
only when every user receives identical value (a single-user tool).

---

## Mixed Billing: the Four Components

| Component | What it charges | When to use | Rules |
|---|---|---|---|
| **Setup fee** (one-time) | Integration, data migration, configuration, training | Any B2B product with onboarding effort | At or above your onboarding cost. Separate invoice line. 50% on signature in LATAM. One-time revenue: never inside MRR or ARR |
| **Recurring base** | Platform access and an included capacity | Always: it is the predictable floor | Covers fixed cost to serve plus margin. Seats can be one line inside it |
| **Usage / variable** | Units of work above the included volume | When usage varies widely across customers | Price per unit above included volume; monthly cap the buyer can budget; lower unit price in higher plans |
| **Outcome or % of savings** | A share of the measured result | When the result is measurable, attributable and auditable | Written baseline before start; agreed data source; cap and floor; billed in arrears; recalculate the baseline on a fixed schedule |

**Capture range.** Total price (all components, monthly equivalent) captures 10-30% of
delivered value (directional). The customer must keep most of the value or the deal does
not close.

**Outcome fee design checklist:**
1. Baseline: the number before you start (overdue balance, hours, cost line), dated and signed.
2. Attribution: what counts as your result and what does not (seasonality, price changes).
3. Data source: the report both sides trust (bank statement, ERP export, CRM report).
4. Share: % of the result, usually higher in exchange for a lower base or a guarantee.
5. Cap and floor: a monthly or quarterly maximum the buyer can budget, and a minimum that
   covers your cost to serve.
6. Timing: billed monthly or quarterly in arrears, after the data closes.
7. Reset: when and how the baseline is recalculated (quarterly is common).

**Mix per client.** The same plan flexes by buyer: fixed annual budget means higher base,
capped variable, small outcome share. Shared risk means lower base, higher outcome share.
Keep the total captured value in range; change the mix, not the value.

---

## Three Plans: Mínimo, Estándar, Premium

Three plans replace Starter / Growth / Enterprise by users. Each plan has a job.

### Mínimo (the door opener)
- **Job:** convert most proposals into a first "yes", prove value fast, then upsell.
- **Scope:** narrow. One team, one branch, one process or one segment of their data.
- **Term:** 30-90 days, then converts to Estándar or ends.
- **Price:** fixed and known up front (no outcome fee), sized under the buyer's approval
  threshold. Reduced setup, credited in full against the Estándar setup on conversion.
- **Must:** written success criteria, the conversion meeting date and the Estándar price
  in the same document. Gross margin positive. Narrow enough not to cannibalize Estándar.
- **Target:** most proposals accept it. If fewer than about 6 of 10 do, it is too
  expensive or too broad (directional).

### Estándar (the plan you sell)
- **Job:** the average standard work. Most revenue and most customers land here.
- **Scope:** full standard scope for a typical customer.
- **Price:** all billing components. Captures 10-30% of delivered value. Marked as
  "recomendado" in every proposal.
- **Target:** the default destination of Mínimo conversions and direct sales.

### Premium (the anchor)
- **Job:** make Estándar look reasonable and capture the few buyers who want everything.
- **Scope:** what costs you to deliver: dedicated person, SLA, custom integrations,
  guarantee, multi-entity, higher outcome share.
- **Price:** 2.5-4x the typical Estándar monthly total (directional). The one who buys it
  pays like several Estándar customers.
- **Must:** profitable if bought. An anchor you cannot deliver damages trust.
- **Target:** 5-15% of deals (directional).

### Presenting the three plans
- Show all three side by side, Premium on the left or first, Estándar highlighted. The
  first price seen sets the reference (anchoring, Tversky and Kahneman, 1974); a clearly
  richer, more expensive option pulls choice toward the middle (asymmetric dominance,
  Huber, Payne and Puto, 1982).
- Never more than three. A fourth plan splits attention and slows the decision.
- In a proposal for a named prospect, compute each plan with the prospect's own volumes.

### Upsell path
Mínimo to Estándar is agreed at the sale: success criteria, measurement date, conversion
price, setup credit. Estándar to Premium is triggered by volume above the included
capacity, a second entity or a request for SLA. The post-sale execution (results review,
health, renewal) is run by customer-retention-expansion.

### Annual prepay
- 15-20% discount for annual prepaid; never above 25%.
- Do not offer an annual discount if monthly churn is above 5%: fix retention first.
- The discount applies to the recurring base, not to setup or outcome fees.

---

## Willingness-to-Pay Methods

### Van Westendorp Price Sensitivity Meter (Van Westendorp, 1976)
Ask 10-30 buyers from the ICP four questions about the offer (a free form works):
1. At what price would it be so cheap you would doubt its quality?
2. At what price is it a bargain?
3. At what price does it start to feel expensive, but you would still consider it?
4. At what price is it too expensive to consider?
Plot cumulative curves; the acceptable range sits between the crossing of "too cheap" with
"expensive" and the crossing of "bargain" with "too expensive". Use it for the recurring
base of Estándar. Small samples are directional.

### Gabor-Granger
Show one price, ask yes or no; move up or down and repeat. Gives a demand curve and the
revenue-maximizing price. Useful for the Mínimo fixed price.

### Conjoint (Simon-Kucher, "Monetizing Innovation")
Buyers choose between bundles of features and prices. Best for deciding what goes into
Estándar vs Premium. Needs a larger sample; use when you have 50+ reachable buyers.

### Value-based estimate (no survey possible)
Price = delivered value per month x capture rate (10-30%).
Example: the product saves a customer USD 2,000/month; total price USD 200-600/month.

### Live test
Send the next 10 proposals with the three plans and record which plan each prospect picks
and why they rejected the others. Real choices beat stated preferences.

**Rule of thumb by segment (US, directional):**
- Solo/micro business: USD 20-80/month entry
- SME (5-50 employees): USD 80-300/month
- Mid-market (50-500 employees): USD 300-1,500/month
- Enterprise (500+ employees): USD 2,000+/month or custom

**LATAM adjustment:** LATAM prices often sit 40-60% below these (directional), but never
below the margin floor.

---

## Pricing Model Decision Tree

1. **What scales with value?** Users: seats inside the base. Volume: usage. % of value
   transacted: transaction fee. A measurable result: outcome fee. Nothing clear: base with
   an included capacity, to create expansion.
2. **Acquisition motion?** Product-led: free trial into usage or base. Sales-led: three
   plans in a proposal, Mínimo as the entry. Hybrid: self-serve Mínimo below a threshold,
   sales above.
3. **Stage?** Pre-revenue: start with the model you believe in and test willingness to
   pay; do not price to maximize signups. Early revenue: watch NRR; below 100% means the
   pricing does not expand. Growth: Premium and usage expansion matter most.

### Model Comparison

| Model | Best for | NRR potential | Complexity | Risk |
|-------|---------|--------------|------------|------|
| Flat subscription | Simple single-user tools | Low | Low | Revenue ceiling |
| Per-seat only | Team tools where humans do the work | Medium | Low | Seat compression with AI |
| Usage-based | API, infrastructure, agents | High | Medium | Revenue predictability |
| Mixed (setup + base + usage) | B2B with onboarding and variable use | High | Medium | Billing transparency |
| Mixed with outcome fee | Products that deliver a measurable result | Very high | High | Measurement disputes |
| Transaction fee | Marketplaces, fintech | Very high | Medium | Volume dependency |

---

## Common Pricing Anti-Patterns (and Fixes)

| Anti-Pattern | Description | Fix |
|-------------|-------------|-----|
| **Cost-plus pricing** | Price = cost + margin. Ignores customer value | Price at 10-30% of delivered value; cost is the floor, not the price |
| **Competitor-copy pricing** | Copying a price without knowing their economics | Price to your value; competitors are a sanity check |
| **Chronically underpriced** | Price set to avoid losing deals, never raised | Live test with three plans; raise prices for new customers first |
| **Seat-only with AI** | Revenue falls as the agent does more work | Add usage and outcome components |
| **Free pilot** | Pilot with no price and no conversion terms | Paid Mínimo with success criteria and pre-agreed Estándar price |
| **Fake Premium** | Anchor nobody can justify and you cannot deliver | Premium with real, costly-to-deliver scope, profitable if bought |
| **Outcome fee without baseline** | Monthly argument over what you caused | Signed baseline, data source, cap and floor before start |
| **Setup waived** | Onboarding cost absorbed, unserious buyers enter | Charge setup; credit it on conversion instead of waiving it |
| **Setup inside ARR** | One-time revenue reported as recurring | Report setup apart; investors will find it |
| **Too many plans** | 4+ plans slow the decision | Three: Mínimo, Estándar, Premium |
| **No annual option** | Monthly-only loses retention | Annual at 15-20% off the base, after month 3 |
