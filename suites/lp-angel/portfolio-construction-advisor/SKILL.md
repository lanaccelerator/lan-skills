---
name: portfolio-construction-advisor
description: >
  Builds or audits a whole venture portfolio for an angel, family office or LP:
  how many companies, check size by stage, reserves, pacing, direct deals vs funds,
  geography and sector mix, and whether the return target is realistic, using power-law
  math and LATAM graduation data. ALWAYS invoke for "how should I build my angel
  portfolio", "how many startups should I invest in", "how much to reserve for
  follow-ons", "armá mi portafolio de startups", "cuántas startups necesito", "cuánto
  reservo para follow-on", "cómo reparto mi asignación a venture", "family office
  venture allocation". NOT for evaluating one deal (angel-investment-analyzer), pricing
  one round (startup-valuation-checker), diligencing a fund manager
  (vc-fund-due-diligence), reviewing fund terms (lp-term-sheet-analyzer), or a GP
  designing its own fund's construction model (thesis-builder).
categories: ["business", "investing", "due-diligence"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: lp-angel
license: MIT
---

# Portfolio Construction Advisor

Designs or audits a venture portfolio from the top down. Question answered: "How should I
structure my total venture allocation?", not "Is this deal good?"

## Step 1: Intake (ONE message)

Ask everything in one message. Missing answer: `[ASSUMPTION: ...]`, never skip silently.

1. **Capital:** total venture allocation in USD, and as % of liquid net worth or AUM.
2. **Horizon:** years until you need this money back.
3. **Current holdings:** each company or fund, stage, country, sector, cost, ownership, pro
   rata rights (or "starting from zero").
4. **Access and time:** deal flow sources, hours per month, whether you can lead or only follow.
5. **Route:** direct deals, funds, or both; open to emerging-manager funds?
6. **Target:** multiple (2x / 3x / 5x) or IRR, and geography preference (LATAM %, US, global).

## Step 2: Workflow (in order)

1. **Read** [references/construction-frameworks.md](references/construction-frameworks.md)
   (power-law math, sizing, reserves) and [references/latam-context.md](references/latam-context.md).
2. **Reality-check the target** before building anything (rules below). If the target is out of
   reach, say so first and rebuild on a realistic one.
3. **Diagnose the current portfolio:** count, stage, country, sector, reserves, pro rata.
4. **Pick the route** with the decision rules below (direct, funds, or a mix).
5. **Size the portfolio:** use the outlier-probability table (P of at least one 10x+ =
   1 - (1 - p)^N) with the US base rate p = 4% and a LATAM directional p = 2%.
6. **Set check sizes and reserves** so N initial checks plus reserves fit the capital.
7. **Allocate by geography and sector** with sourced shares (Cuantico 2026).
8. **Model the outcome distribution** and the 3-year deployment calendar.
9. **Close with Next Steps:** 3-5 portfolio actions for the next 90 days.

## Step 3: Decision Rules

**Return target check (net multiples, after fees for funds):**
- 2-3x: achievable for a disciplined, diversified portfolio over 10+ years. Build for it.
- 3-5x: top-quartile territory. Requires a real access edge; state the edge or downgrade.
- 5x+: top-decile only. Even small funds, the best-performing size bucket, reached 4.91x TVPI
  at the 90th percentile (2019 vintage, $1-10M funds, Carta Emerging Manager Paradox, Oct 2026).
  Tell the investor this is not a plan; reset it.

**Direct vs funds:**
- Under ~$500K total, or under 20 hours a month, or no proprietary deal flow → mostly funds (or
  syndicates), with 0-5 direct deals for learning *(directional)*.
- $500K-$3M with time and flow → direct portfolio of 20+ companies, or a split with 1-2 funds.
- Above ~$3M → core in 2-4 funds (consider emerging managers, see latam-context), satellite
  direct portfolio.

**Minimum count for direct portfolios:** at least 20 companies; 30+ for LATAM-only portfolios
(LAVCA 2025 graduation data). Fewer than 10 is a lottery ticket; say so.

**Reserves:** 30-50% if you have pro rata rights and will use them; 10-15% if you do not
*(directional)*. Reserves without pro rata rights are just unallocated cash.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's portfolio.
See [TEMPLATES.md](TEMPLATES.md) for the filled example.

Sections: BLUF (target verdict + one-line plan), diagnosis, target reality check, route,
portfolio size with probability math, checks and reserves, geography and sector table, outcome
distribution, 3-year deployment calendar, Next Steps, Sources.

If the user wants slides or a PDF for the family, apply `references/shared/deck-design-rules.md`.

## Step 5: LATAM and AI-Era Context

Annotate per `references/shared/latam-benchmarks.md`. Key facts:
- 12% of LATAM seed startups raise a Series A within three years (LAVCA 2025) vs ~24% of the 2022
  US seed cohort (Carta). Half the odds: more companies for the same outcome.
- Brazil took ~49% and Mexico ~24% of 2025 LATAM VC dollars (Cuantico 2026).
- M&A is 67% of 2025 LATAM VC-backed exits; 62.7% of GPs call exits unfavorable (Cuantico 2026).
  Plan for 7-10 year holds *(directional)*.
- AI: company outcomes are spreading further apart (Bessemer State of AI 2025: fast scalers at ~25%
  gross margin vs ~60% for steadier AI companies). A wider spread argues for more bets, not fewer.

## Tone & Editorial Voice

Follow `references/shared/editorial-voice.md`: seasoned LP, numbers first, no em dashes, no
buzzwords, no emojis; in Spanish "el AI".

Expected tone: "Six companies is not a portfolio. With a 4% chance of a 10x per deal, six bets give
you a 22% chance of even one outlier; with LATAM odds, about 11%. Twenty-five bets get you to 64%
(US) or 40% (LATAM). Add bets or move most of this allocation into funds."

## Sources

- [Construction Frameworks](references/construction-frameworks.md), [LATAM Portfolio Context](references/latam-context.md)
- [latam-benchmarks.md](references/shared/latam-benchmarks.md), [editorial-voice.md](references/shared/editorial-voice.md)
- Correlation Ventures via Seth Levine, Aug 2014 (~65% of financings under 1x, ~4% at 10x+): https://sethlevine.com/tags/venture-economics/
- Carta VC Fund Performance Q2 2026 and The Emerging Manager Paradox (6 Oct 2026): https://carta.com/data/
- LAVCA Startup Ecosystem Insights 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- Bessemer, The State of AI 2025: https://www.bvp.com/atlas/the-state-of-ai-2025
