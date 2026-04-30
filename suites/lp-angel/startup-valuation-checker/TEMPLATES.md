# Startup Valuation Checker — Templates

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
| Revenue Multiple (Damodaran) | [USD]                 | [ARR] × [multiple] (LATAM [stage] median) | [applies / N/A] |
| Comparable Transactions      | [USD range]           | [low comp] to [high comp] in sector    | [3 comps] |
| Berkus Method                | [USD]                 | [N/A — has revenue] OR [sum of factors]| [pre-revenue only] |
| Bill Payne Scorecard         | [USD]                 | [Regional avg] × [scorecard index]     | [factors] |
| DCF                          | [USD or N/A]          | [Series A+ only] OR [N/A — stage]      | [sensitivity note] |

**Methods applied:** [list applicable methods]
**Methods skipped:** [list skipped methods and reason — e.g., "DCF: not applicable at Seed stage"]

---

## Triangulation

**Method range:** [Low implied] to [High implied]
**Ask:** [Pre-money ask]
**Ask vs. median of methods:** [X× the median of applicable methods]

**Verdict: [IN RANGE / STRETCHED / OVERPRICED]**

[2–3 sentences explaining the triangulation logic. State which methods the ask aligns
with and which it exceeds. Be specific about the multiple gap if OVERPRICED.]

---

## LATAM Comparable Transactions

| Company       | Country  | Sector | Stage | ARR at Raise | Pre-Money | Multiple |
|---------------|----------|--------|-------|--------------|-----------|----------|
| [Company 1]   | [Country]| [Sect] | Seed  | [USD]        | [USD]     | [X×]     |
| [Company 2]   | [Country]| [Sect] | Seed  | [USD]        | [USD]     | [X×]     |
| [Company 3]   | [Country]| [Sect] | Seed  | [USD]        | [USD]     | [X×]     |

---

## LATAM Context

**Benchmark:** [Stage] pre-money median = [range] (LATAM, LAVCA 2025) vs. [range]
(US-sourced benchmark, Carta 2024)

**Revenue multiple:** [Sector] Seed LATAM multiple = [range] (LATAM, Cuantico 2026)

[LATAM-specific note: country adjustment, sector premium/discount, FX consideration]

---

## Recommendation

[Framed for asking audience — founder OR investor. Different framing, same analysis.]

**[If Founder — How to Defend Your Ask]**
[What evidence supports or undermines the ask. What milestone would unlock the valuation.]

**[If Investor — How to Negotiate or Price the Risk]**
[What to offer. What conditions could justify the ask. When to walk.]

---

## Next Steps

[3 audience-specific actions]

1. [Action 1]
2. [Action 2]
3. [Action 3]
```

---

## Filled Example: EduSign Brasil — OVERPRICED Verdict

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
**Stage:** Seed (has revenue — Berkus not applicable)
**ARR:** $420k ($35k MRR, 18% MoM for 3 months)
**Sector:** SaaS — e-signature for education (vertical SaaS)
**Market:** Brazil
**Analysis requested by:** Founder checking if ask is defensible
**Analysis Date:** April 2026

---

## Valuation Analysis Table

| Method                       | Implied Pre-Money     | Calculation Basis                         | Notes |
|------------------------------|-----------------------|-------------------------------------------|-------|
| Revenue Multiple (Damodaran) | $1.68M                | $420k ARR × 4× (LATAM SaaS Seed median)   | Primary method — clear and defensible |
| Revenue Multiple (aggressive)| $2.52M                | $420k ARR × 6× (LATAM SaaS Seed upper)    | Upper-quartile multiple — high-growth companies |
| Comparable Transactions      | $3–5M range           | See LATAM comps table below               | Range based on Alegra, Konfío, Fintoc comps |
| Berkus Method                | N/A                   | Not applicable — company has ARR          | Berkus pre-revenue only |
| Bill Payne Scorecard         | $5.5M                 | $8M LATAM Seed avg × 0.69 index           | Team strong (1.5/2), opportunity medium (1.0/2), product early (0.8/2) |
| DCF                          | N/A                   | Not applicable at Seed stage              | Skip — insufficient revenue history for reliable terminal value |

**Methods applied:** Revenue Multiple (×2), Comparable Transactions, Bill Payne Scorecard
**Methods skipped:** Berkus (has revenue), DCF (Seed stage)

---

## Triangulation

**Method range:** $1.68M (conservative Revenue Multiple) to $5.5M (Scorecard)
**Ask:** $9M pre-money
**Ask vs. median of methods:** $9M ask is approximately 2.6× the median of applicable methods ($3.4M)

**Verdict: OVERPRICED**

Three of three applicable methods produce implied valuations below $6M. The Scorecard
method — which gives full credit to EduSign's above-average team — produces $5.5M, the
most generous result. The $9M ask requires the investor to pay 2.6× the median of what
any standard method justifies. EduSign's 18% MoM growth is strong but has only 3 months
of data — insufficient to justify a premium of this magnitude in the LATAM Seed market.
The ask is not defensible at current metrics in a LATAM context.

---

## LATAM Comparable Transactions

| Company        | Country  | Sector            | Stage | ARR at Raise | Pre-Money | Multiple |
|----------------|----------|-------------------|-------|--------------|-----------|----------|
| Alegra         | Colombia | SaaS / Accounting | Seed  | ~$800k       | $4.5M     | 5.6×     |
| Docupass       | Mexico   | e-signature SaaS  | Seed  | ~$350k       | $3.2M     | 9.1×     |
| Nuvemshop      | Brazil   | SaaS / E-commerce | Seed→A| ~$1M         | $5M       | 5×       |

**Comparable range:** $3.2M to $4.5M pre-money at similar ARR. The most relevant
comparable (Docupass, Mexico, similar sector) raised at $3.2M pre-money with $350k
ARR — a 9.1× multiple. At EduSign's $420k ARR, that same multiple implies $3.8M
pre-money. The $9M ask is 2.4× Docupass's multiple. The Brazil premium vs. Mexico
is typically 15–20%, not 240%.

---

## LATAM Context

**Benchmark:** Seed pre-money median = $6–10M (LATAM, LAVCA 2025) vs. $12–18M
(US-sourced benchmark, Carta 2024)

**Revenue multiple:** SaaS Seed LATAM multiple = 4–6× ARR (LATAM, Cuantico 2026) vs.
6–10× ARR (US-sourced benchmark)

**Brazil-specific note:** Brazil has the deepest VC ecosystem in LATAM and typically
commands a 10–15% premium over Colombian or Peruvian peers at equivalent metrics. This
does not explain or support the $9M ask — the gap between the ask and LATAM benchmarks
is too large for a Brazil premium to bridge.

**Growth rate assessment:** 18% MoM growth for 3 consecutive months is strong. For
context, top-quartile LATAM SaaS Seed companies grow 15–20% MoM (Cuantico 2026). If
EduSign sustains 18% MoM for 6 months, ARR will reach approximately $1M — at which
point a $6–7M pre-money valuation at 6–7× is defensible. The metrics are not there yet.

---

## Recommendation — How to Defend Your Ask (Founder)

The $9M ask will fail in the current LATAM market at $420k ARR. LATAM Seed investors
know the LAVCA median. The ask is 2.6× the median of three independent methods. You will
either kill the round or attract only unsophisticated investors — neither outcome serves
you.

Two paths to a defensible ask:

**Path A — Reduce the ask to $5.5–6M now.** This aligns with the upper range of
comparable transactions and the Scorecard method's output for your above-average team.
At $1.2M raise on $6M pre-money, investors get ~17% ownership — reasonable for a Seed
check. This round closes faster. You preserve goodwill with LATAM investors.

**Path B — Delay 3 months and hit $700–800k ARR at 15%+ MoM growth.** At $700k ARR,
a 7–8× LATAM Seed multiple implies $4.9–5.6M pre-money. At $800k ARR with demonstrated
growth consistency, you can argue $7–8M pre-money with a credible narrative. The data
supports the ask. US investors (who may join at this metric level) would use 8–10× = $6.4–8M.

The $9M ask is wrong for today's metrics. Fix the ask or fix the metrics first.

---

## Recommendation — How to Negotiate or Price the Risk (Investor)

The ask is 2.6× the LATAM comparable-implied valuation. Do not match the ask. The company
has 3 months of 18% MoM growth — real traction, but unproven at scale.

**Counter-offer:** $5.5M pre-money ($1.2M raise → 17.9% ownership). Rational at LATAM Scorecard
method output. If the founder declines, offer $6M with a milestone clause: valuation steps up
to $7M if ARR reaches $700k by month 6 post-close.

**Walk conditions:** If the founder insists on $8M or above and will not move, walk.
The implied ownership at $8M + $1.2M = 13% — insufficient return coverage at Seed for
a company that has not proven growth rate sustainability. At 13% ownership, you need a
$75M exit to return 3× your check at Seed dilution. EduSign needs to prove the path to
that exit before earning a premium valuation.

---

## Next Steps

*For EduSign Brasil (Founder perspective):*

1. **Reduce ask to $5.5–6M pre-money before next investor meeting.** The current ask
   disqualifies you with experienced LATAM investors. Recalibrate to the LATAM Scorecard
   output ($5.5M) and cite 3 LATAM comparable transactions to anchor the number credibly.

2. **Build a LATAM comparable transactions table for your investor deck.** Include Alegra
   (Colombia, SaaS, Seed, $4.5M pre-money), Docupass (Mexico, e-signature, $3.2M), and
   one additional Brazil SaaS Seed round. This positions your ask within a credible data set
   instead of requiring investors to do the work themselves — and they will.

3. **Sustain 15%+ MoM growth for 3 more months before raising.** At $700k ARR with 6 months
   of consistent growth, you qualify for a $6–7M pre-money ask with data to support it.
   Rushing the raise at $420k ARR at a $9M ask is a strategic error. The round will be slower,
   not faster, at an unjustifiable price.
