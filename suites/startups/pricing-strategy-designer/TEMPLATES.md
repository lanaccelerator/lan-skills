# Pricing Strategy Designer — Output Template

ALWAYS use this exact structure. Every section is required. Do not change headings,
table columns, or field order. Fill every [bracketed placeholder] with real content
from the user's startup.

---

## Example Output: DocuFlux

*This is a filled example for DocuFlux — a hypothetical B2B SaaS for contract management
and e-signature based in Buenos Aires, Argentina. Currently at $1,200 ARR from 4 customers,
targeting Argentina, Mexico, and Colombia. Pre-revenue stage on pricing redesign.*

---

# Pricing Strategy: DocuFlux

**Date:** April 2026
**Stage:** Early Revenue ($1,200 ARR, 4 customers)
**Business Model:** B2B SaaS
**Geography:** Argentina, Mexico, Colombia (pan-LATAM)
**Current Pricing:** $25/month flat (no tiers)
**Analyzed by:** LAN Skills via Claude

---

## Value Metric Identification

**Selected value metric: Contracts created and e-signed per month**

Rationale: This metric meets all three criteria for a valid value metric:
1. **Customers understand it intuitively** — "You pay based on how many contracts you
   process" is immediately clear to any business user
2. **Scales with value received** — A company using DocuFlux for 200 contracts/month
   receives 10× the value of a company processing 20 contracts/month; pricing should
   reflect this
3. **Measurable and billable** — Contract events are discrete, logged actions; no
   ambiguity in billing

**Alternatives considered and rejected:**
- Seats/users: A 1-person legal team could process 500 contracts; a 20-person sales team
  might process 30. Seats do not correlate with value received.
- Storage (GB): Irrelevant to the core value — users don't care about storage, they care
  about closed contracts.
- Active users: Same problem as seats — proxies for usage, not for value.

**Pricing architecture:** Usage-based tier with subscription floor (hybrid model).
Pure usage-based creates revenue unpredictability at early stage (MRR swings with contract
volume). A subscription floor with usage scaling above the limit provides MRR predictability
while capturing expansion revenue from high-volume customers.

---

## Pricing Model Recommendation

**Recommended model: Subscription tiers with usage-based expansion above limits**

Rationale:
- At DocuFlux's current ARR ($1,200, 4 customers), pure usage-based pricing creates
  cash flow unpredictability — one slow month from a key customer impacts operations
- Subscription tiers with contract limits allow customers to predict their cost while
  giving DocuFlux expansion revenue from high-volume customers who exceed their tier
- This model is common in e-signature (DocuSign, HelloSign, PandaDoc) — customers
  understand it and the billing logic is clear

**Alternatives considered:**
- Pure usage-based: Better for enterprise; too unpredictable at this ARR level
- Flat pricing ($25 flat, current): No expansion revenue — every customer is the same
  regardless of volume or company size; caps revenue growth potential
- Freemium: LATAM conversion rates (1-3%) make this expensive — 97+ users who don't
  pay for every 3 who convert. Not recommended until $500k+ ARR with strong SEO/PLG motion.

---

## Packaging Tiers

| Tier | Monthly Price | Annual Price | Key Features | Limits | Target Segment |
|------|-------------|-------------|-------------|--------|----------------|
| Starter | $49 | $39/mo ($468/yr) | Unlimited e-signature, standard templates, email notifications, PDF export, basic audit trail | 3 users, 30 contracts/month | Solo founders, freelancers, startups 1-5 employees |
| Growth | $149 | $119/mo ($1,428/yr) | Starter + CRM integration (HubSpot/Pipedrive), bulk send, custom branding, advanced audit trail, priority support | 10 users, 150 contracts/month | SMEs 5-50 employees with active sales teams |
| Enterprise | Custom (floor $399) | Custom | Growth + SSO/SAML, API access, custom templates, SLA guarantee, dedicated CSM, CFDI Mexico invoice integration | Unlimited users + contracts | 50+ employee companies, legal teams, banks |

**Overage pricing (above tier limits):**
- Starter: $1.50 per additional contract above 30/month
- Growth: $0.80 per additional contract above 150/month (lower rate rewards growth)

**Annual discount:** 20-22% discount for annual commitment (industry standard for LATAM B2B;
do not go below 15% or above 30%).

---

## Competitive Pricing Table

| Competitor | Model | Entry Price | Mid-Tier | Enterprise |
|-----------|-------|-------------|----------|------------|
| DocuSign | Subscription (seat + envelope) | $25/mo (1 user, 5 envelopes/mo) | $65/mo per user | Custom |
| PandaDoc | Subscription (seat-based) | $35/mo per user | $65/mo per user | Custom |
| Holded (Spain/LATAM) | Subscription (flat per company) | €59/mo | €99/mo | €149/mo |
| **DocuFlux (proposed)** | **Subscription (contract volume)** | **$49/mo** | **$149/mo** | **$399+** |

**Positioning insight:** DocuFlux's proposed Starter ($49) is above DocuSign's entry ($25)
but DocuSign's entry limits to 5 envelopes/month — a real business cannot operate at that
limit. DocuFlux at $49 includes 30 contracts, making it legitimately more valuable at entry.
The mid-tier ($149 for 150 contracts) is significantly more favorable than DocuSign ($65 per
user × typical team of 3 = $195) or PandaDoc ($65 per user × 3 = $195).

---

## Price Sensitivity Estimate

**Willingness-to-pay analysis (value-based):**

DocuFlux customers in the Growth tier (SMEs, 5-50 employees) use the product to:
- Eliminate paper contract printing and mailing (~4 hours/week for contracts coordinator)
- Reduce contract cycle time from 5-7 days to same-day (cited by all 4 current customers)
- Eliminate DocuSign per-envelope costs at volume

**Estimated delivered value per month for a Growth-tier customer:**
- Time savings: 4 hrs/week × $15/hr (LATAM average contract coordinator) = $240/month
- Cycle time reduction: 1 recovered deal/quarter at $2,000 ACV = $167/month in recovered revenue
- **Total estimated monthly value delivered: ~$400/month**

**At $149/month Growth tier:** DocuFlux captures 37% of delivered value. This is healthy
pricing — not a "give it away" price, not a "price them out" price.

**At current $25/month flat:** DocuFlux captures 6% of delivered value. This is chronic
underpricing. The $25 price was set as a "low to get customers" decision — a common and
expensive mistake.

---

## LATAM Context

**Currency denomination decision: USD pricing, local payment options**

DocuFlux targets Argentina, Mexico, and Colombia simultaneously. USD pricing is the correct
choice for three reasons:
1. **FX stability:** The Argentine peso has devalued ~80% vs USD in the past 3 years.
   ARS-denominated pricing would require constant repricing and creates ARR calculation
   problems for investors.
2. **International signal:** USD pricing signals that DocuFlux is not an Argentine-only
   product — important for customer trust in Mexico and Colombia.
3. **Payment execution:** Accept local currency payment via Mercado Pago (covers all three
   countries) while pricing in USD. This is the best of both worlds.

**Annual vs monthly billing in LATAM:**
Lead with monthly pricing. DocuFlux's current customer base has been using the product for
<6 months — offer annual only as an upgrade option after Month 3. A/B test annual-first
onboarding at Month 6 after establishing retention data.

**Chronic underpricing — flag for DocuFlux:**
DocuFlux's current $25/month flat pricing is significantly below market and below value
delivered. This is the #1 pricing error in LATAM SaaS: setting "low prices to get customers"
and creating a ceiling that requires 4× the customer count to reach the same ARR. Raise
prices at the next cohort. Existing customers can be grandfathered at $25 for 90 days with
advance notice.

---

## Próximos Pasos

1. **Raise prices for all new customers immediately.** Stop signing customers at $25. The
   market rate for this category is $49-149. DocuFlux's 4 current customers signed at $25
   because that was the only option — not because that is the market price. Grandfather
   existing customers at $25 for 90 days with written notice.

2. **Run a shadow pricing test for 30 days:** Send 50% of new trial signups to a $49 Starter
   page vs your current $25 page (alternate by even/odd day of week). Measure signup rate
   difference. A drop of less than 20% in signup rate means the market can absorb $49 —
   which your case studies already suggest it can.

3. **Introduce the Growth tier at $149 within 60 days.** At least 2 of your 4 current
   customers have teams of 3-5 people — they are Growth-tier customers paying Starter rates.
   Offer an upgrade path with the 10-user limit as the key feature unlock.

4. **Build the competitive pricing table into your sales pitch.** DocuFlux's per-contract
   pricing is more favorable than DocuSign for businesses using 30+ contracts/month. Show
   this explicitly in the sales deck — buyers do not naturally do the math.

5. **USD pricing decision:** Register DocuFlux's Stripe or Mercado Pago account in USD
   immediately. Repricing from ARS to USD after you have 50+ customers is painful.
   Implement this before the next 10 customers sign.

---

## Sources

- ProfitWell value metric: https://www.profitwell.com/recur/all/saas-pricing
- OpenView Partners Pricing Survey: https://openviewpartners.com/2023-saas-pricing-survey/
- Sequoia Pricing Guide: https://www.sequoiacap.com/article/pricing-your-product/
- DocuSign pricing: https://www.docusign.com/products/electronic-signature/pricing
- PandaDoc pricing: https://www.pandadoc.com/pricing/
