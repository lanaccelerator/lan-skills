# Startup Valuation Checker: Templates

This file contains the canonical output template and a fully filled LATAM example
demonstrating both founder and investor framing. All startup-valuation-checker outputs
MUST follow this exact structure.

---

## Output Template

```
# Startup Valuation Analysis: [Company Name]

**Asking:** [Pre-money valuation]
**Stage:** [Stage]
**ARR/Revenue:** [Amount or "Pre-revenue"]
**Sector:** [Sector]
**Market:** [Country/Region]
**Analysis requested by:** [Founder / Investor]
**Analysis Date:** [Date]

---

## Valuation Analysis Table

| Method                       | Implied Pre-Money     | Calculation Basis                      | Notes |
|------------------------------|-----------------------|----------------------------------------|-------|
| Revenue Multiple (Damodaran) | [USD]                 | [ARR] x [multiple] (LATAM [stage] median) | [applies / N/A] |
| Comparable Transactions      | [USD range]           | [low comp] to [high comp] in sector    | [3 comps] |
| Berkus Method                | [USD]                 | [N/A: has revenue] OR [sum of factors]| [pre-revenue only] |
| Bill Payne Scorecard         | [USD]                 | [Regional avg] x [scorecard index]     | [factors] |
| DCF                          | [USD or N/A]          | [Series A+ only] OR [N/A: stage]      | [sensitivity note] |

**Methods applied:** [list applicable methods]
**Methods skipped:** [list skipped methods and reason, e.g., "DCF: not applicable at Seed stage"]

---

## Triangulation

**Method range:** [Low implied] to [High implied]
**Ask:** [Pre-money ask]
**Ask vs. median of methods:** [Xx the median of applicable methods]

**Verdict: [IN RANGE / STRETCHED / OVERPRICED]**

[2–3 sentences explaining the triangulation logic. State which methods the ask aligns
with and which it exceeds. Be specific about the multiple gap if OVERPRICED.]

---

## LATAM Comparable Transactions

| Company       | Country  | Sector | Stage | ARR at Raise | Pre-Money | Multiple |
|---------------|----------|--------|-------|--------------|-----------|----------|
| [Company 1]   | [Country]| [Sect] | Seed  | [USD]        | [USD]     | [Xx]     |
| [Company 2]   | [Country]| [Sect] | Seed  | [USD]        | [USD]     | [Xx]     |
| [Company 3]   | [Country]| [Sect] | Seed  | [USD]        | [USD]     | [Xx]     |

---

## LATAM Context

**Benchmark:** [Stage] US median = [value] (US-sourced benchmark, Carta Data Desk Jul 2026 or Carta
Q3 2025) vs. LATAM [range] (LATAM, directional) and the gap: US seed pre-money averaged 156% above
LATAM in 2015-2025 (Valoriza via Diario Financiero, Apr 2025)

**Revenue multiple:** [Sector] [stage] LATAM multiple = [range] (LATAM, directional) [AI company:
on gross profit, not revenue]

[LATAM-specific note: country adjustment, sector premium/discount, FX consideration]

---

## Recommendation

[Framed for asking audience: founder OR investor. Different framing, same analysis.]

**[If Founder: How to Defend Your Ask]**
[What evidence supports or undermines the ask. What milestone would unlock the valuation.]

**[If Investor: How to Negotiate or Price the Risk]**
[What to offer. What conditions could justify the ask. When to walk.]

---

## Next Steps

[3 audience-specific actions]

1. [Action 1]
2. [Action 2]
3. [Action 3]
```

---

## Filled Example: EduSign Brasil (OVERPRICED verdict)

*Fictional company and comparables. Benchmarks marked with a source are real; ranges marked
directional are LAN practitioner ranges.*

**Background:**
- Company: EduSign Brasil (São Paulo, Brazil)
- Sector: E-signature SaaS for K-12 and higher education institutions
- ARR: $420k ($35k MRR), growing at 18% MoM for 3 consecutive months
- Stage: Seed round
- Asking pre-money: $9M pre-seed [ASSUMPTION: "pre-seed" used colloquially; metrics indicate Seed-equivalent]
- Raising: $1.2M SAFE
- Analysis requested by: Founder (checking their ask)

---

# Startup Valuation Analysis: EduSign Brasil

**Asking:** $9M pre-money
**Stage:** Seed (has revenue, so Berkus does not apply)
**ARR:** $420k ($35k MRR, 18% MoM for 3 months)
**Sector:** SaaS: e-signature for education (vertical SaaS)
**Market:** Brazil
**Analysis requested by:** Founder checking if ask is defensible
**Analysis Date:** October 2026

---

## Valuation Analysis Table

| Method                       | Implied Pre-Money     | Calculation Basis                         | Notes |
|------------------------------|-----------------------|-------------------------------------------|-------|
| Revenue Multiple (Damodaran) | $1.68M                | $420k ARR x 4x (LATAM SaaS seed, directional) | Floor: public-style multiple, ignores growth |
| Revenue Multiple (aggressive)| $2.52M                | $420k ARR x 6x (upper range, directional) | For high-growth companies |
| Comparable Transactions      | $3-5M range           | See LATAM comps table below               | Three seed SaaS comparables |
| Berkus Method                | N/A                   | Not applicable: company has ARR           | Berkus is pre-revenue only |
| Bill Payne Scorecard         | $5.5M                 | $8M LATAM seed avg (directional) x 0.69 index | Team strong (1.5/2), opportunity medium (1.0/2), product early (0.8/2) |
| DCF                          | N/A                   | Not applicable at Seed stage              | Skip: too little revenue history for a terminal value |

**Methods applied:** Revenue Multiple (x2), Comparable Transactions, Bill Payne Scorecard
**Methods skipped:** Berkus (has revenue), DCF (Seed stage)

---

## Triangulation

**Method range:** $1.68M (conservative Revenue Multiple) to $5.5M (Scorecard)
**Ask:** $9M pre-money
**Ask vs. median of methods:** $9M ask is approximately 2.6x the median of applicable methods ($3.4M)

**Verdict: OVERPRICED**

Three of three applicable methods produce implied valuations below $6M. The Scorecard
method, which gives full credit to EduSign's above-average team, produces $5.5M, the
most generous result. The $9M ask requires the investor to pay 2.6x the median of what
any standard method justifies. EduSign's 18% MoM growth is strong but has only 3 months
of data, not enough to justify a premium of this magnitude in the LATAM Seed market.
The ask is not defensible at current metrics in a LATAM context.

---

## LATAM Comparable Transactions

| Company        | Country  | Sector            | Stage | ARR at Raise | Pre-Money | Multiple |
|----------------|----------|-------------------|-------|--------------|-----------|----------|
| Comparable A (fictional) | Colombia | SaaS / Accounting | Seed | ~$800k | $4.5M | 5.6x |
| Comparable B (fictional) | Mexico   | e-signature SaaS  | Seed | ~$350k | $3.2M | 9.1x |
| Comparable C (fictional) | Brazil   | SaaS / E-commerce | Seed | ~$1M   | $5M   | 5x   |

*In a real run every row is a real round with a source link (Crunchbase, LAVCA, press). No verified
comparable: write "none verified" in that row instead of estimating.*

**Comparable range:** $3.2M to $4.5M pre-money at similar ARR. The most relevant
comparable (B, Mexico, same sector) raised at $3.2M pre-money with $350k ARR, a 9.1x
multiple. At EduSign's $420k ARR, that multiple implies $3.8M pre-money. The $9M ask is
2.4x that. A Brazil premium over Mexico, if any, is a few tens of percent *(directional)*,
not 140%.

---

## LATAM Context

**Benchmark:** US seed pre-money median $16M (US-sourced benchmark, Carta State of Private
Markets Q3 2025); US seed post-money median $24.3M (Carta Data Desk, Jul 2026). LATAM seed
pricing averaged around 40% of the US level in 2015-2025 (Valoriza via Diario Financiero, Apr
2025); LAN seed range $8M-$20M pre-money for companies with clear PMF signals (LATAM,
directional). At $420k ARR and 3 months of growth data, EduSign sits below that band's floor.

**Revenue multiple:** SaaS seed LATAM 4-6x ARR (LATAM, directional) vs. 6-10x ARR (US-sourced,
directional). Treat both as floors: seed rounds price growth and team, which is why the
Scorecard and comparables land higher.

**Brazil-specific note:** Brazil took ~49% of 2025 LATAM VC dollars (Cuantico 2026), the deepest
pool in the region, and may command a modest premium over Colombian or Peruvian peers at equal
metrics *(directional)*. This
does not explain or support the $9M ask: the gap between the ask and LATAM benchmarks
is too large for a Brazil premium to bridge.

**Growth rate assessment:** 18% MoM growth for 3 consecutive months is strong. For
context, YC calls 5-7% weekly growth good (Paul Graham, Startup = Growth, 2012); 18% monthly is
about 4% weekly. If EduSign sustains 18% MoM for 6 more months, ARR reaches about $1.1M, at
which point a $6-7M pre-money (about 6x ARR) is defensible. The metrics are not there yet.

---

## Recommendation: How to Defend Your Ask (Founder)

The $9M ask will fail in the current LATAM market at $420k ARR. LATAM seed investors see
dozens of rounds a quarter and know where they price. The ask is 2.6x the median of three
independent methods. You will either kill the round or attract only unsophisticated
investors; neither serves you.

Two paths to a defensible ask:

**Path A: reduce the ask to $5.5-6M now.** This aligns with the upper range of
comparable transactions and the Scorecard method's output for your above-average team.
At $1.2M raise on $6M pre-money, investors get ~17% ownership, reasonable for a Seed
check. This round closes faster. You preserve goodwill with LATAM investors.

**Path B: delay 3 months and hit $700-800k ARR at 15%+ MoM growth.** At $700k ARR,
a 7-8x multiple implies $4.9-5.6M pre-money. At $800k ARR with demonstrated
growth consistency, you can argue $7–8M pre-money with a credible narrative. The data
supports the ask. US investors (who may join at this metric level) would use 8-10x = $6.4-8M *(directional)*.

The $9M ask is wrong for today's metrics. Fix the ask or fix the metrics first.

---

## Recommendation: How to Negotiate or Price the Risk (Investor)

The ask is 2.6x the median of the methods. Do not match it. The company has 3 months of 18%
MoM growth: real traction, unproven at scale.

**Counter-offer:** $5.5M pre-money ($1.2M raise → 17.9% ownership). Rational at LATAM Scorecard
method output. If the founder declines, offer $6M with a milestone clause: valuation steps up
to $7M if ARR reaches $700k by month 6 post-close.

**Walk conditions:** If the founder insists on $8M or above and will not move, walk.
The round sells 13% at $8M pre-money ($1.2M / $9.2M), and that 13% shrinks to ~6.7% after three
more priced rounds at ~20% each (Carta 2025 US medians). The round's investors then need a ~$54M
exit just to get 3x, for a company that has not proven its growth rate holds. EduSign needs to prove the path to
that exit before earning a premium valuation.

---

## Next Steps

*For EduSign Brasil (Founder perspective):*

1. **Reduce ask to $5.5-6M pre-money before next investor meeting.** The current ask
   disqualifies you with experienced LATAM investors. Recalibrate to the LATAM Scorecard
   output ($5.5M) and cite 3 LATAM comparable transactions to anchor the number credibly.

2. **Build a LATAM comparable transactions table for your investor deck.** Three real seed
   SaaS rounds from Brazil, Mexico and Colombia in the last 18 months, each with a source link.
   It anchors your ask in data investors can check, instead of making them do the work, which
   they will.

3. **Sustain 15%+ MoM growth for 3 more months before raising.** At $700k ARR with 6 months
   of consistent growth, you qualify for a $6-7M pre-money ask with data to support it.
   Rushing the raise at $420k ARR at a $9M ask is a strategic error. The round will be slower,
   not faster, at an unjustifiable price.
