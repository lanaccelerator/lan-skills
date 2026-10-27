# VC Backability Evaluation Framework

**Source:**
- [YC Essential Startup Advice](https://www.ycombinator.com/library/Em-yc-s-essential-startup-advice)
- [Zero to One — Peter Thiel](https://zerotoonebook.com/) (Chapter 5: Last Mover Advantage; Chapter 3: All Happy Companies Are Different)
- [The PMF Method — Andreessen Horowitz](https://a16z.com/the-pmf-method/)
- [Elements of Enduring Companies — Sequoia Capital](https://www.sequoiacap.com/article/elements-of-enduring-companies/)
- [How to Miss by a Mile: An Alternative Look at Uber's Potential Market Size — Bill Gurley](https://abovethecrowd.com/2014/07/11/how-to-miss-by-a-mile-an-alternative-look-at-ubers-potential-market-size/)
**License/Attribution:** Frameworks synthesized from public sources. Cite each source individually in output.
**When to use:** venture-model-validator invokes every criterion from this file. Also loaded by deal-memo-writer (Phase 2) for investment recommendation scoring.

## Key Principles

VC-backability requires THREE simultaneous conditions:
1. **Market:** Large enough to return the fund on its own (typically $1B+ TAM for top-tier funds, $100M+ SAM for smaller/LATAM funds)
2. **Model:** Winner-take-most dynamics, high margins, and scalability without linear cost growth
3. **Timing:** Something changed recently that makes this possible now and creates urgency

Failing any one of these three conditions is disqualifying. A great product in a small market is a lifestyle business, not a venture investment.

## Unified VC Backability Scorecard

Score each criterion 1–5. Scores below 3 on any single criterion are disqualifying.

### Criterion 1: Market Size (Gurley Method)

| Score | Meaning | Evidence Required |
|-------|---------|------------------|
| 5 | Massive market with bottom-up SAM >$500M, TAM >$5B | Customer segment count × contract value calculation shown |
| 4 | Large market, SAM >$100M with clear path to expansion | Bottom-up math with conservative assumptions |
| 3 | Adequate market, SAM >$50M, niche leader possible | Credible SAM calculation; adjacent markets identified |
| 2 | Small market, SAM <$50M, fund-returner only if 100% capture | Founder admits market is small; no clear expansion story |
| 1 | Micro-market (<$10M SAM) or TAM is fiction (top-down without SAM) | No calculation; cites Gartner TAM number only |

**Gurley's warning:** Most startups present TAM by multiplying addressable customers by a price nobody would pay. SAM calculation must use realistic conversion rates and actual contract values from comparable companies.

### Criterion 2: Monopoly / Winner-Take-Most Dynamics (Thiel Test)

| Score | Meaning | Evidence Required |
|-------|---------|------------------|
| 5 | Clear path to monopoly: network effects + switching costs + proprietary technology + brand | At least 2 of 4 moat types demonstrated or clearly achievable |
| 4 | Strong winner-take-most: one or two moat types present | Network effects OR switching costs demonstrated |
| 3 | Competitive advantage present but market may fragment | Some differentiation; no clear monopoly mechanics |
| 2 | Commodity competition, differentiation on features only | No structural moat; easily replicated |
| 1 | Fully commoditized; no competitive advantage | Identical to existing solutions at lower price |

**Thiel's monopoly types:**
- **Proprietary technology:** At least 10× better than nearest alternative (not 10% better)
- **Network effects:** Product gets better as more people use it
- **Economies of scale:** Fixed costs amortize over large base; variable costs near zero
- **Brand:** Premium pricing power based on trust/aspiration; defensible over time

### Criterion 3: Product-Market Fit (a16z PMF Method)

| Score | Meaning | Evidence Required |
|-------|---------|------------------|
| 5 | Strong PMF: users desperate, organic growth >20% MoM, NPS >50, cohorts flat | Retention curves, NPS data, organic/referral % of growth |
| 4 | Early PMF signals: some organic growth, low churn, users disappointed if gone | User interviews, churn data, >40% "very disappointed" in Sean Ellis test |
| 3 | Weak PMF: users like it but don't need it; growth is paid/unsustainable | Engagement data; growth stops when paid acquisition pauses |
| 2 | No PMF: churn is high, users leave, requires heavy sales | Churn >20%/month; sales cycle >6 months for basic contracts |
| 1 | Pre-PMF: no data; hypothesis only | No customers or <10 users with no engagement evidence |

**a16z PMF indicators:**
- Users are angry when product is down or slow
- Users bring their own network to the product
- NPS >50 (top quartile); >20% "promoters"
- Cohort retention: month 12 retention >40% for SaaS, >60% for consumer

### Criterion 4: Why Now (Sequoia Enduring Companies)

| Score | Meaning | Evidence Required |
|-------|---------|------------------|
| 5 | Undeniable timing: specific technology/regulation/behavior shift makes this possible NOW and not 3 years ago | Names the exact enabling change with timeline |
| 4 | Clear timing: one major enabling factor identified; market window defined | Technology or regulatory change cited with source |
| 3 | Reasonable timing: some trends favor the company but timing is debatable | Market growth trends cited; not uniquely NOW |
| 2 | Weak timing: "the market is growing" — not a "why now" answer | General trend without specific enabling event |
| 1 | No timing: company could have been started 5 years ago with equal logic | No answer to "what changed recently?" |

**Sequoia's test:** "What has happened in the world in the last 2–3 years that makes this the right moment?" If the answer is "nothing specific," the "why now" fails.

### Criterion 5: Team Differentiation (YC "Why You")

| Score | Meaning | Evidence Required |
|-------|---------|------------------|
| 5 | Unfair advantage: founders are uniquely positioned (domain experts, insiders, prior exits) | Specific prior experience in exact domain; or built comparable company before |
| 4 | Strong advantage: relevant domain expertise or technical depth | Verifiable experience in adjacent space; clear credibility |
| 3 | Competent: smart generalists who can learn quickly | No specific domain edge; but strong execution record |
| 2 | Weak: team has no relevant experience | Background is unrelated; no domain credibility |
| 1 | Disqualifying: key skills missing and no plan to hire | CEO + CTO both non-technical; or sales-only team |

**YC's "why you" question:** Why is this team — not a team in general — uniquely qualified to win this market? Generic capability is insufficient.

## Scorecard Summary

| Criterion | Max Score | Minimum to Pass |
|-----------|-----------|----------------|
| Market Size | 5 | 3 |
| Monopoly Dynamics | 5 | 3 |
| PMF Evidence | 5 | 3 |
| Why Now | 5 | 3 |
| Team Differentiation | 5 | 3 |
| **Total** | **25** | **15 (all ≥3)** |

**Interpretation:**
- 22–25: Strong VC candidate. Fundraise aggressively.
- 18–21: Fundable with caveats. Address specific weak criteria before fundraising.
- 15–17: Borderline. Fix weakest criterion before approaching VCs.
- <15: Not yet VC-backable. Identify which criterion fails and solve it.

## Common Failure Modes by Criterion

- **Market failures:** Top-down TAM from analyst report; SAM never calculated; "if we get 1% of a billion-dollar market" logic
- **Monopoly failures:** "We'll win on customer service"; feature differentiation only; competitor section missing or dishonest
- **PMF failures:** "5 customers love it" with no retention data; B2B deal still in pilot; B2C with no organic growth
- **Timing failures:** "The market is growing" — every market is growing; no specific enabling event
- **Team failures:** "We're passionate about this problem"; serial entrepreneur with no domain expertise in this vertical
