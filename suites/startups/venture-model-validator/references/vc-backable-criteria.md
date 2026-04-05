# VC Backability Scoring Criteria

**Source:**
- [YC Essential Startup Advice](https://www.ycombinator.com/library/Em-yc-s-essential-startup-advice)
- [Zero to One — Peter Thiel](https://zerotoonebook.com/) (ch. 3–4: monopoly mechanics)
- [The PMF Method — Andreessen Horowitz](https://a16z.com/the-pmf-method/)
- [Elements of Enduring Companies — Sequoia Capital](https://www.sequoiacap.com/article/elements-of-enduring-companies/)
- [How to Miss by a Mile — Bill Gurley](https://abovethecrowd.com/2014/07/11/how-to-miss-by-a-mile-an-alternative-look-at-ubers-potential-market-size/)

**When to use:** venture-model-validator reads this file in Step 2 (Apply Frameworks) and
Step 3 (Workflow). Score each criterion 1–5. A score below 3 on ANY single criterion is
disqualifying regardless of overall total.

---

## VC-Backability: Three Simultaneous Conditions

All three must be present. Failing any one is disqualifying:

1. **Market:** Large enough to return the fund on its own ($1B+ TAM for top-tier funds;
   $100M+ SAM for smaller/LATAM funds)
2. **Model:** Winner-take-most dynamics, high margins, scalability without linear cost growth
3. **Timing:** Something changed recently that makes this possible now and creates urgency

---

## Framework 1: YC Idea Evaluation

**Core question:** Is this a large, growing market with a defensible wedge?

| Score | Meaning | Evidence Required |
|-------|---------|------------------|
| 5 | Excellent: large market, clear 10x differentiation, obvious early niche to own | Bottom-up SAM calculated; 10x over incumbent articulated clearly |
| 4 | Strong: market is large, differentiation is clear, early niche identifiable | Credible SAM; differentiation is structural not feature-level |
| 3 | Borderline: market exists but differentiation is incremental (2–3x, not 10x) | Some differentiation; niche unclear or contested |
| 2 | Weak: market exists but no differentiation beyond price; easy to replicate | "Better UX" or "cheaper" only; incumbents can copy in 6 months |
| 1 | Fails: micro-market OR no differentiation OR "we'll get 1% of a huge market" | No SAM calculation; competitor section missing or dishonest |

**Red flag triggers (auto-score 1):**
- "If we get 1% of the market" logic (no bottom-up SAM)
- Differentiation described only as "better UX" or "lower price"
- Ignores existing incumbents or claims no competition

---

## Framework 2: Thiel Monopoly Test

**Core question:** Can this startup dominate a specific niche before expanding?

| Score | Meaning | Evidence Required |
|-------|---------|------------------|
| 5 | Clear monopoly path: niche small enough to dominate, 2+ of 4 moat types present | Named niche + expansion sequence + specific moat mechanics articulated |
| 4 | Strong: one moat type present (network effects OR switching costs), clear niche | One moat type clearly demonstrated; niche correctly sized |
| 3 | Borderline: competitive advantage present but market may fragment; monopoly unclear | Some differentiation; no clear self-reinforcing competitive advantage |
| 2 | Commodity: differentiates on features only; no structural moat | Moat described as "team" or "customer service" — not structural |
| 1 | Fails: fully commoditized OR identical to existing solutions at lower price | No moat type even partially present |

**Thiel's four moat types:**
- **Proprietary technology:** At least 10× better than nearest alternative (not 10% better)
- **Network effects:** Product gets better as more people use it; each user adds value
- **Economies of scale:** Fixed costs amortize over large base; variable cost near zero
- **Brand:** Premium pricing power based on trust/aspiration; defensible over time

**Red flag triggers (auto-score 1):**
- "We'll win on customer service" (not a structural moat)
- Technology described as "proprietary" but easily replicable in 3–6 months
- Competitor section missing or lists only indirect competitors

---

## Framework 3: a16z PMF Framework

**Core question:** Is there evidence of product-market fit signals?

| Score | Meaning | Evidence Required |
|-------|---------|------------------|
| 5 | Strong PMF: users desperate, organic growth >20% MoM, NPS >50, month-12 retention >40% | Retention cohort data; NPS; organic/referral as % of growth |
| 4 | Early PMF signals: organic growth present, low churn, users "very disappointed" if gone | >40% "very disappointed" in Sean Ellis test; referral present |
| 3 | Weak PMF: users like it but don't need it; growth stops when paid acquisition pauses | Engagement exists; churn manageable; no organic growth engine |
| 2 | No PMF: high churn, users leave, heavy sales required to close | Churn >20%/month; sales cycle >6 months for basic contracts |
| 1 | Pre-PMF: no data — hypothesis only | No customers or <10 users with no engagement evidence |

**a16z PMF indicators:**
- Users angry when product is slow or down
- Users bring their own network to the product (organic viral)
- NPS >50 (top quartile); >20% "promoters"
- Cohort retention: month-12 >40% for SaaS, >60% for consumer

**Red flag triggers (auto-score 1):**
- "5 customers love it" with no retention data
- B2B deal still in pilot after 6+ months
- B2C with zero organic/referral growth; all paid acquisition

---

## Framework 4: Sequoia Enduring Companies (Why Now)

**Core question:** What changed that makes this the right moment?

| Score | Meaning | Evidence Required |
|-------|---------|------------------|
| 5 | Undeniable timing: specific technology/regulation/behavior shift makes this NOW | Names exact enabling event with timeline; startup was not viable 3 years ago |
| 4 | Clear timing: one major enabling factor; market window defined | Technology or regulatory change cited with source |
| 3 | Reasonable: trends favor company but timing is debatable | Market growth trends cited; but no uniquely NOW enabling event |
| 2 | Weak: "the market is growing" — this is not a "why now" answer | General trend only; no specific enabling event |
| 1 | No timing: company could have been started 5 years ago with equal logic | No answer to "what changed recently?" |

**Sequoia's test:** "What has happened in the world in the last 2–3 years that makes
this the right moment?" General growth trends fail this test. Examples that pass:
- PIX launched in Brazil (2020) → real-time payment infrastructure now exists
- CFDI 4.0 mandate in Mexico (2022) → SAT compliance creates new software demand
- LLM availability (2023) → AI products not possible at this quality before 2023

**Red flag triggers (auto-score 1):**
- "The market is growing" as the entire why-now answer
- "We saw this problem and decided to solve it" — no external enabling event
- Company idea identical to competitors founded 5+ years ago

---

## Framework 5: Gurley Market Sizing

**Core question:** Is the true serviceable market large enough to return a fund?

| Score | Meaning | Evidence Required |
|-------|---------|------------------|
| 5 | Massive: bottom-up SAM >$500M, TAM >$5B, fund-returner on <20% capture | Full bottom-up calculation shown with conservative conversion assumptions |
| 4 | Large: SAM >$100M with clear path to adjacent market expansion | Bottom-up math with realistic assumptions; expansion story credible |
| 3 | Adequate: SAM >$50M, niche leader fundable for smaller/LATAM funds | Credible SAM calculation; adjacent markets identified |
| 2 | Small: SAM <$50M, fund-returner requires 100% capture | Founder acknowledges small market; no clear expansion story |
| 1 | Fails: micro-market (<$10M SAM) OR TAM is fiction (top-down with no SAM) | No calculation; only cites Gartner/IDC top-down TAM number |

**Gurley's warning:** Most startups multiply "all possible customers" by "a price nobody
would pay." SAM must use realistic conversion rates and actual contract values from
comparable companies.

**How to calculate SAM (bottom-up):**
1. Identify the specific customer segment you can reach in 24 months
2. Count them (public data, census, vertical databases)
3. Multiply by your realistic ACV (Annual Contract Value) — use comp company ARPUs
4. Apply realistic penetration rate (1–5% of SAM in 5 years is credible for B2B)

**LATAM adjustment:** For LATAM funds ($50M–$300M fund size), a startup needs SAM
>$100M to be a meaningful fund-returner. For US top-tier funds ($1B+), SAM must be
>$500M to return the fund.

**Red flag triggers (auto-score 1):**
- "If we get 1% of a $50B market" — no SAM calculation
- TAM from a single analyst report with no bottom-up verification
- Addressable market defined at global/all-industry level

---

## Scorecard Summary

| Criterion | Framework | Max Score | Minimum to Pass |
|-----------|-----------|-----------|----------------|
| Idea / Market Wedge | YC Idea Evaluation | 5 | 3 |
| Monopoly Dynamics | Thiel Monopoly Test | 5 | 3 |
| PMF Evidence | a16z PMF | 5 | 3 |
| Why Now / Timing | Sequoia Enduring Companies | 5 | 3 |
| Market Size | Gurley Market Sizing | 5 | 3 |
| **Total** | | **25** | **15 (all ≥3)** |

**Score interpretation:**
- 22–25: Strong VC candidate. Fundraise now.
- 18–21: Fundable with caveats. Address specific weak criteria before fundraising.
- 15–17: Borderline. Fix the weakest criterion before approaching VCs.
- <15: Not VC-backable at current stage. Identify which criterion fails — solve it first.

**Disqualifying scores:** Any single criterion scoring 2 or below disqualifies the startup
from VC fundraising regardless of total score. Address the disqualifying criterion first.
