# Portfolio Construction Frameworks

**Sources:**
- Correlation Ventures data via Seth Levine, "Venture Outcomes are Even More Skewed Than You Think"
  (Aug 2014): https://sethlevine.com/tags/venture-economics/
- Carta: VC Fund Performance Q2 2026 (23 Sep 2026); The Emerging Manager Paradox (6 Oct 2026); Fund Economics
  Report 2025 (4 Dec 2025); dilution per round (2025): https://carta.com/data/
- LAVCA Startup Ecosystem Insights 2025 (seed graduation)
- Peter Thiel, Zero to One (concentration argument); Scott Kupor, Secrets of Sand Hill Road (LP view)

Rows marked *(directional)* are LAN practitioner judgment, not a published dataset.

---

## The Power Law

Correlation Ventures (via Seth Levine, 2014): ~65% of venture financings return less than 1x, ~10%
return 5x or more, ~4% return 10x or more. Venture returns come from a handful of outliers; the
median investment loses money.

**Implication:** construction is about (1) enough bets to catch an outlier and (2) enough ownership in
it to matter. Those pull in opposite directions for a fixed budget. That tension is the whole job.

## Outlier Probability by Portfolio Size

P(at least one 10x+) = 1 - (1 - p)^N, assuming independent bets.

| Companies (N) | US base rate p = 4% | LATAM p = 2% *(directional)* |
|---------------|---------------------|------------------------------|
| 5 | 18% | 10% |
| 10 | 33% | 18% |
| 20 | 56% | 33% |
| 25 | 64% | 40% |
| 30 | 71% | 45% |
| 40 | 81% | 55% |
| 50 | 87% | 64% |

The LATAM column halves the US rate because LATAM seed-to-Series A graduation is about half the US
rate (12% in three years, LAVCA 2025, vs ~24% of the 2022 US seed cohort, Carta). It is an assumption,
not a measured LATAM 10x rate: label it directional. Deal selection skill shifts p; access to better
deals is the only real lever.

## Portfolio Size by Return Target (direct portfolios)

| Target (gross) | Minimum companies | Recommended | Why |
|----------------|-------------------|-------------|-----|
| 2x | 15 | 20-25 | One 10x+ plus a few 2-5x outcomes covers it |
| 3x | 20 | 25-30 | Needs one outlier with meaningful ownership |
| 5x | 30 | 40+ | Needs one very large outlier; top-decile result |
| 10x | n/a | n/a | Not a plan; luck plus access |

LATAM-only portfolio: use the LATAM column above and add roughly 50% more companies for the same
outlier odds *(directional)*.

## Ownership and Dilution Math

- Entry ownership = check / post-money.
- Exit ownership = entry x (1 - d)^n. Default d = 20% per priced round (US medians: seed ~19-20%,
  Series A ~18%, Carta 2025); n = remaining priced rounds (typically 3 from seed).
- Example: $100K at $8M pre-money ($8.1M post) = 1.23%. After three rounds at 20%: 0.63%. At a $200M
  exit: $1.26M, 12.6x gross.

| Stage | LATAM pre-money *(directional)* | $50K buys | $100K buys | $250K buys |
|-------|-------------------------------|-----------|------------|------------|
| Pre-seed | $3M-$8M post-money cap | 0.6-1.7% | 1.3-3.3% | 3.1-8.3% |
| Seed | $8M-$20M | 0.25-0.6% | 0.5-1.2% | 1.2-3.0% |
| Series A | $20M-$60M | 0.08-0.25% | 0.17-0.5% | 0.4-1.2% |

## Reserves

| Reserve ratio | When | Notes |
|---------------|------|-------|
| 10-15% | No pro rata rights; pre-seed first-check strategy | Reserves without rights are unallocated cash |
| 30-40% | Pro rata on most deals, seed focus | Common angel and seed-fund range *(directional)* |
| 40-50% | Family office concentrating into winners | Requires discipline on when to follow |

**Follow-on rule:** follow only when (1) a new institutional lead prices the round, and (2) the company
beat the plan it raised on. Never follow to "support" a struggling company.

## Funds vs Direct

- **Funds** buy access, diversification and diligence. Cost: fees and carry. Lifetime fees plus
  expenses run ~19% of commitments for the median 2017-vintage US VC fund after about eight years
  (Carta 2025).
- **Emerging managers:** smaller funds show wider dispersion and a higher top end. 2019 vintage
  90th-percentile TVPI: 4.91x for $1-10M funds vs 1.92x for $100M+ funds (Carta Emerging Manager
  Paradox, 6 Oct 2026). Upside comes with more risk: diligence the GP (vc-fund-due-diligence).
- **Market anchors for return targets (US-sourced, Carta VC Fund Performance Q2 2026, 23 Sep 2026):** 75th-percentile net IRR is
  in the mid-teens for recent vintages (2017: 15.8%; 2024: 19.1%); the median 2017 fund has a DPI of 0.37x. Liquidity is
  slow even for mature funds.

## Concentrated vs Diversified

Thiel's argument (Zero to One): if you know which bet wins, concentrate. Most angels do not: they lack
proprietary flow and information edge. Without an edge, diversify.

Concentrate only if all three hold: (1) proprietary deal flow, (2) a verifiable information edge in a
sector, (3) 5+ years of direct investing with a tracked record *(directional)*.

## Outcome Distribution Model (25-company portfolio, directional)

| Tier | Companies | Typical multiple | Role |
|------|-----------|------------------|------|
| Outlier (10x+) | 0-1 | 10-30x | Returns the portfolio, or does not exist |
| Strong (3-8x) | 2-3 | ~5x | Profit on top |
| Modest (1-2x) | 3-5 | ~1.5x | Cost recovery |
| Loss (under 1x) | 16-19 | 0-0.5x | Matches the ~65% under-1x base rate |

State plainly: with no outlier, a diversified angel portfolio usually returns under 1.5x.
