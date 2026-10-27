# LATAM Angel Investment Context

**When to use:** angel-investment-analyzer Step 5, before the final score.

**Sources:** LAVCA Startup Ecosystem Insights 2025 (data to 30 Jun 2025), Cuantico LatAm VC Report
2026 (2025 actuals), Carta Data, Correlation Ventures via Seth Levine (2014). Canonical data and the
annotation protocol: `shared/latam-benchmarks.md`. Rows marked *(directional)* are LAN
practitioner ranges, not a published dataset: say so when you use them.

## Graduation and Outcomes (the numbers that drive angel math)

| Metric | US | LATAM | Source |
|--------|----|-------|--------|
| Seed to Series A | ~24% of the 2022 seed cohort had reached A | 2% in 1 year, 7% in 2, 12% in 3 (2,002 seed startups, 2019-2024) | Carta Data; LAVCA 2025 |
| Graduation trend | Falling | Two-year rates fell at every stage | LAVCA 2025 |
| Return distribution (all VC financings) | ~65% return under 1x; ~10% return 5x+; ~4% return 10x+ | No LATAM equivalent; assume at least as skewed | Correlation Ventures via Seth Levine, Aug 2014 |
| Pre-seed 2025 | n/a | Capital -40%, deal count -39.4%, lowest since 2018 | Latin America VC Report via Mexico Business News |

**Implication:** a borderline LATAM deal will most likely never raise a Series A. Score it as if the
current round is the last money it gets.

## Check Sizes and Pricing

| Metric | US | LATAM | Source |
|--------|----|-------|--------|
| Seed pre-money level | US averaged 156% above LATAM, 2015-2025 | ~40% of the US level | Valoriza via Diario Financiero, 2 Apr 2025 |
| US seed median (2026) | $4.1M round at $24.3M post-money | n/a | Carta Data Desk, 10 Jul 2026 |
| Typical angel check | $25K-$250K | $10K-$100K | *(directional)* |
| Pre-seed cap | n/a | $3M-$10M post-money | *(directional)* |
| Seed pre-money | n/a | $8M-$20M | *(directional)* |

Ownership math example: $50K on a $5M post-money cap = 1.0%. After three priced rounds at ~20%
dilution (Carta 2025 US medians), ~0.51%. A 10x needs a ~$98M exit; a 5x needs ~$49M.

## Where the Money Goes (Cuantico 2026, 2025 actuals)

| Country | Share of 2025 VC dollars | Sector | % deals / % funding |
|---------|--------------------------|--------|---------------------|
| Brazil | ~49% | Fintech | 29% / 61% |
| Mexico | ~24% | SaaS | 13% / 13% |
| Chile | ~6% | Logistics | 5% / 17% |
| Colombia | ~5% | Healthtech | 7% / 3% |
| Argentina | ~4% | Foodtech | 7% / 4% |

**Implication:** deals outside Brazil and Mexico face thinner Series A and exit markets. Ask whether
the team has a credible expansion path or a named home-market acquirer.

## Exit Environment (Cuantico 2026)

- 2025 VC-backed exits: US$4.9B across 63 transactions; M&A 67%, secondaries 27%.
- 62.7% of 126 surveyed GPs call the exit environment unfavorable; lack of exits is their top risk.
- Underwrite strategic M&A by a named buyer (regional bank, retailer, telco, larger fintech or a
  global player entering LATAM). Every comparable exit you cite needs a source link; if you cannot
  find one, write "no verified comparable exit in this sector".
- Time to exit: plan for 7-10 years from a seed entry *(directional)*.

## Country Rules for Regulated Activities

Match the license to the activity. When unsure, the red flag is "no written regulatory opinion from
local counsel", not a guessed license name.

### Brazil
- Credit fintechs operate as an SCD or SEP authorized by the Banco Central do Brasil (BACEN), or
  through a licensed partner. Payment institutions need BACEN authorization.
- PIX (launched Nov 2020) is a real "why now" for payments products built on it.

### Mexico
- Ley Fintech (2018): crowdfunding and e-money institutions (ITF) need CNBV authorization. Lending is
  usually done through a SOFOM; savings and credit cooperatives as SOFIPO. Check which one applies.
- Rails: SPEI (Banco de México), CoDi / DiMo; cash collection networks (OXXO) are a Mexico-specific channel.

### Colombia
- Taking deposits from the public and electronic deposits / payments (SEDPE) need authorization from
  the Superintendencia Financiera (SFC). Lending from own balance sheet is generally outside SFC
  supervision, but raising funds from the public is not: confirm the funding model with counsel.
- Rails: Nequi, Daviplata, PSE; Bre-B (Banco de la República instant payments) rolling out.
- Agtech: FINAGRO credit lines are a structural channel for ag-credit products.

## LATAM Angel Pitfalls

- **US anchoring:** founders citing YC or US seed medians ($24.3M post, Carta 2026). LATAM seed
  pricing runs around 40% of the US level (Valoriza 2025).
- **SAFE without a US holdco:** a LATAM-only company cannot just sign the YC SAFE. Ask for the local
  instrument and a legal opinion (see `shared/safe-note.md`).
- **FX:** local-currency revenue, USD exit. Model a devaluation scenario for any company without
  USD-linked revenue.
- **No pro rata:** without it, your ownership only shrinks. Ask for a side letter on checks you
  would want to follow.
