# Pricing Framework Reference

**Sources:**
- ProfitWell value metric methodology: Patrick Campbell / ProfitWell (now Paddle) value-based pricing method; the original profitwell.com articles are offline
- Kyle Poyar, Growth Unhinged (pricing research; replaces the offline OpenView survey): https://www.growthunhinged.com/
- Sequoia Pricing Guide: https://www.sequoiacap.com/article/pricing-your-product/
- "Monetizing Innovation" (Simon-Kucher): https://www.simon-kucher.com/en/book/monetizing-innovation

---

## Value Metric Taxonomy

The value metric is the unit of value that scales with what the customer gets from the
product. Pricing tied to a value metric creates expansion revenue automatically as customers
grow — without requiring seat additions or price increases.

### Common Value Metric Types

| Metric | Definition | Best for | Example Products |
|--------|-----------|---------|-----------------|
| **Seats / Users** | Active users who can log in | Products where access controls matter; each user has distinct value | Slack, Notion, HubSpot CRM |
| **Usage volume** | API calls, messages sent, emails delivered | API products, infrastructure, communication | Twilio, SendGrid, Stripe |
| **Revenue processed** | % of GMV or transaction value | Payment processing, marketplaces | Stripe (2.9%), Shopify Payments |
| **Records / entities** | Contacts, customers, invoices, contracts | CRM, invoicing, contract management | DocuSign, Pipedrive, HubSpot |
| **Data storage** | GB stored or processed | Storage, backup, data warehouse | AWS S3, Supabase, Notion |
| **Active events** | Monthly active users, active projects | Tools where usage drives value | Mixpanel (MTUs), Linear (seats+) |
| **Outcomes** | Leads generated, hires made, bugs caught | Results-based businesses (rare, high trust) | Clearbit (lead enrichment) |

### Value Metric Selection Criteria

A valid value metric must satisfy all three:
1. **Customer understands it intuitively:** "I pay based on [metric]" should not require
   explanation. If a sales rep needs to explain how billing works, the metric is wrong.
2. **Scales with value received:** A customer getting 10× more value pays roughly 10× more.
   If high-usage customers pay the same as low-usage customers, you have a flat pricing problem.
3. **Measurable and billable without ambiguity:** The metric must be countable, logged,
   and unambiguous. "Active users" requires a clear definition of "active."

### Anti-Pattern: Flat Pricing

Flat pricing (single monthly fee, no limits) is the most common SaaS pricing mistake.

Problems with flat pricing:
- No expansion revenue: every customer pays the same regardless of usage or size
- Misalignment: small customers overpay relative to value; large customers massively underpay
- No signal: you cannot identify which customers are getting the most value
- Revenue ceiling: to 10× revenue, you must 10× customer count

Exception: Flat pricing works for products where all users genuinely receive identical
value and expansion is only via seat additions (e.g., a single-user tool).

---

## Pricing Model Decision Tree

### Step 1: What does the customer pay for that scales with value?

If the answer is:
- **Number of users/seats** → Subscription (per-seat)
- **Volume of transactions/usage** → Usage-based or usage tiers
- **% of value transacted** → Transaction fee (marketplace, fintech)
- **No clear scaling metric** → Subscription flat tier (add a usage limit to create expansion)

### Step 2: What is the customer acquisition motion?

- **Product-led growth (PLG):** Freemium or free trial → Usage-based or seat-based conversion
- **Sales-led growth:** Demo → proposal → contract → Subscription tiers with custom Enterprise
- **Hybrid (PLG + Sales above $X ARR):** Freemium/trial below $500 MRR, Sales above

### Step 3: What stage is the business?

- **Pre-revenue:** Start with the model you believe in. Price to capture 15-30% of
  delivered value at entry tier. Do not price to maximize signups — price to validate
  willingness-to-pay.
- **Early revenue (<$500k ARR):** Optimize for NRR expansion. If NRR < 100%, pricing
  does not expand — investigate churn drivers before restructuring.
- **Growth ($500k-5M ARR):** Restructure tiers to capture Enterprise value. Usage-based
  expansion is most powerful at this stage.

### Pricing Model Comparison

| Model | Best for | NRR potential | Complexity | Risk |
|-------|---------|--------------|------------|------|
| Flat subscription | Simple products, identical users | Low (expansion only via seats) | Low | Revenue ceiling |
| Per-seat subscription | Team tools, access controls matter | Medium (add seats as team grows) | Low | Discounts at volume |
| Usage-based | API, infrastructure, communication | High (unbounded expansion) | Medium | Revenue predictability |
| Hybrid (floor + usage) | SaaS with variable usage | High | Medium | Billing transparency |
| Transaction fee | Marketplaces, fintech | Very high | Medium | Volume dependency |
| Freemium + paid | PLG, high organic acquisition | Medium-High | High | Free tier cost |

---

## Three-Tier Packaging Structure

The standard B2B SaaS packaging structure (Starter / Growth / Enterprise) serves three
distinct purposes:

### Starter tier
- **Purpose:** Acquire customers. Not for revenue maximization.
- **Pricing:** Set at a level where it feels accessible but not free. Entry pricing should
  capture 15-25% of delivered value.
- **Limits:** Set limits that make Starter genuinely constraining for growth-stage customers.
  If Starter customers never hit limits, Growth tier has no urgency.
- **Target:** Micro-businesses, solo founders, early-stage startups. Typically <5 users.

### Growth tier
- **Purpose:** Primary revenue driver. Designed for your most common customer profile.
- **Pricing:** Set at 2-4× Starter. Capture 25-40% of delivered value. Most customers should
  arrive at Growth via upgrade from Starter or direct signup.
- **Limits:** Aligned with mid-market companies (10-50 employees). Most customers should
  not hit Growth limits until they are genuinely large customers.
- **Target:** SMEs, scale-ups, established teams.

### Enterprise tier
- **Purpose:** Revenue ceiling removal + strategic customer acquisition.
- **Pricing:** Custom negotiated. Floor should be 3-5× Growth tier.
- **Features:** SSO, SLA, API access, custom contracts, dedicated support. Enterprise
  customers pay for security, compliance, and control — not for more of the core feature.
- **Target:** 100+ employee companies, regulated industries, companies with legal/security
  procurement requirements.

### Annual discount structure
- Standard: 15-20% for annual prepaid (12 months for the price of 10)
- Maximum: 25% (beyond 25%, you're training customers to wait for annual)
- Minimum: Do not offer annual discount if monthly churn > 5% — fix retention first

---

## Willingness-to-Pay Estimation Heuristics

In the absence of formal WTP research (surveys, Van Westendorp analysis), use these heuristics:

**Value-based pricing formula:**
Entry price = Delivered value per month × Target capture rate (15-30%)

Example: If the product saves a customer $500/month, entry tier should be $75-150/month.

**Competitor-relative positioning:**
- Premium (10-30% above competitors): Requires demonstrably better product or service
- Parity (within 10% of competitors): Default unless differentiation is clear
- Economy (10-30% below competitors): Only if you have significantly lower cost structure
  or are buying market share deliberately

**Rule of thumb by segment:**
- Solo/micro business: $20-80/month entry
- SME (5-50 employees): $80-300/month
- Mid-market (50-500 employees): $300-1,500/month
- Enterprise (500+ employees): $2,000+/month or custom

**LATAM adjustment:** Apply 40-60% discount to US benchmarks above, but do not go below
the floor where unit economics break (Gross Margin must be positive at every tier).

---

## Common Pricing Anti-Patterns (and Fixes)

| Anti-Pattern | Description | Fix |
|-------------|-------------|-----|
| **Cost-plus pricing** | Price = cost + margin. Ignores customer value. | Switch to value-based: what does the customer save/earn? Price at 15-30% of that. |
| **Competitor-copy pricing** | Copying competitor price without knowing their unit economics | Price to your value, use competitors for sanity check only |
| **Chronically underpriced** | Price set to avoid losing deals; never raised | Run shadow test; raise prices quarterly until churn response is measurable |
| **Too many tiers** | 5+ pricing tiers creates confusion | Simplify to 3: Starter, Growth, Enterprise (custom) |
| **No annual option** | Monthly-only pricing loses LTV and retention | Add annual at 20% discount immediately |
| **Freemium with no conversion path** | Free users stay free forever | Design a feature wall that triggers conversion (usage limit, team collaboration, integrations) |
| **Flat pricing with no limits** | All customers pay the same regardless of usage | Add usage or seat limits; create expansion revenue path |
