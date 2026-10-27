# LATAM Angel Investment Context

**When to use:** angel-investment-analyzer invokes this file in Step 5 before producing
the final scorecard. Apply these LATAM-specific adjustments to every benchmark in the output.

**Sources:** LAVCA 2025 Startup Ecosystem Insights + Cuantico LatAm VC Report 2026 + AngelList LATAM data.

## LATAM Angel Deal Benchmarks

All figures annotated per the protocol in shared/latam-benchmarks.md:
show US benchmark first `(US-sourced benchmark)`, then LATAM figure `(LATAM, LAVCA 2025)`.

### Check Sizes

| Metric | US Benchmark | LATAM Figure | Source |
|--------|-------------|--------------|--------|
| Median angel check | $100k–$500k | $25k–$100k USD | (LATAM, LAVCA 2025) |
| Pre-seed deal size | $150k–$750k | $50k–$300k | (LATAM, LAVCA 2025) |
| Seed deal size | $750k–$3M | $500k–$2M | (LATAM, LAVCA 2025) |

**Implication:** Ownership math must account for smaller checks. A $50k LATAM angel check
at a $5M pre-money cap = 1% ownership. After two dilution rounds (Series A, Series B), expect
0.4%–0.6% at exit. At a $100M acquisition: $400k–$600k returned on $50k = 8–12×.
At a $50M acquisition: $200k–$300k returned = 4–6×. Entry valuation is critical.

### Deal Flow and Conversion

| Metric | US Figure | LATAM Figure | Source |
|--------|-----------|--------------|--------|
| Angel → Series A conversion | ~22% | ~12% | (LATAM, LAVCA 2025) |
| Seed deals < $1M (2024) | N/A | 82 deals, -39% YoY | (LATAM, LAVCA 2025) |
| Median time angel → Series A | 18 months | 24 months | (LATAM, LAVCA 2025) |
| Pre-seed deals 2025 | N/A | 152 deals (-77% vs 2022 peak) | (LATAM, Cuantico 2026) |

**Implication for LATAM angels:** Lower follow-on rate (~12% vs ~22%) means the angel must
be more selective at entry. Do not assume Series A will rescue a borderline deal. The
majority of LATAM angel investments do not get followed-on by institutional capital.

### Geographic Concentration

| Country/Region | Share of LATAM Deal Flow | Notes |
|----------------|--------------------------|-------|
| Brazil + Mexico | 78.5% combined | (LATAM, LAVCA 2025) — structural concentration |
| Colombia | ~7% | Stable; growing fintech + agtech |
| Argentina | ~5% | Peso volatility; USD revenue critical |
| Chile | ~4% | Strong ecosystem relative to size |
| Other LATAM | ~5.5% | Fragmented; limited follow-on capital |

**Implication:** Deals outside Brazil/Mexico face structural fundraising headwinds at Series A.
For Colombia, Peru, Argentina: evaluate whether the founding team has a Brazil/Mexico expansion
plan. Without it, the exit path is limited to strategic acquisition within the home market.

### Sector Distribution

| Sector | Share of LATAM Seed Deals | Notes |
|--------|--------------------------|-------|
| Fintech | ~35% | Dominant; regulatory licensing is moat or risk |
| Edtech | ~10% | Post-pandemic correction; evaluate retention carefully |
| Agtech | ~8% | Growing; FINAGRO (Colombia), Pronamp (Brazil) are catalysts |
| B2B SaaS | ~13% | Underfunded vs US; structural opportunity |
| Healthtech | ~8% | Regulatory complexity limits speed |

**Fintech + edtech = 45% of LATAM seed deals (LATAM, LAVCA 2025)**

## Country-Specific Application Rules

### Colombia Deals

- **Regulatory gate:** Colombian fintech requires SFC (Superintendencia Financiera de Colombia)
  licensing or SEDPE/Depósito Electrónico registration. Score Moat Durability ≤3 without
  regulatory path clarity.
- **Agriculture context:** FINAGRO (Fondo para el Financiamiento del Sector Agropecuario) provides
  state-backed agricultural credit lines. Agtech startups that integrate with FINAGRO pipelines
  have a structural advantage not available outside Colombia.
- **Payment infrastructure:** Nequi (Bancolombia), Daviplata (Davivienda), and PSE (interbank
  transfers) are dominant retail rails. Business-facing fintech must integrate with at least
  Nequi or Daviplata for consumer-facing products; PSE for B2B.
- **Seasonality note:** Colombian agricultural cycles follow Semana Santa (April) and school-year
  start (January/February) patterns. Agtech and edtech revenue curves are seasonal — normalize
  MRR to annual run rate, not point-in-time.
- **Geography inside Colombia:** Bogotá + Medellín = ~65% of Colombian startup activity. Startups
  based in Cali, Barranquilla, or Cartagena face additional fundraising friction even for
  Colombian-focused rounds.

### Brazil Deals

- **Regulatory gate:** Brazilian fintech requires BACEN (Banco Central do Brasil) SCD/SEP license
  for credit operations or PIX participation. Score Moat Durability ≤3 without license or
  clear regulatory partnership path.
- **Payment infrastructure:** PIX (launched 2020) created instant payment infrastructure.
  Brazilian startups that built on PIX have a genuine timing advantage (post-2020 enabler).
- **Market dominance:** Brazil = ~55% of LATAM VC. A Brazil-first strategy can access the
  largest LATAM capital pool. A Brazil-only strategy is defensible for Series A.

### Mexico Deals

- **Regulatory gate:** Mexican fintech requires CNBV (Comisión Nacional Bancaria y de Valores)
  licensing under Ley Fintech (2018). Score Moat Durability ≤3 without CNBV ITF license
  or SOFOM/SOFIPO registration.
- **Payment infrastructure:** SPEI (Banco de México interbank) + CoDi/DiMo for consumer.
  OXXO Pay cash collection network is a unique Mexico channel with no direct equivalent
  in other LATAM markets.
- **Market concentration:** Mexico City + Monterrey = ~70% of Mexican deal flow.

## LATAM Angel Valuation Context

- **LATAM valuation discount:** 40–60% below equivalent US stage at same metrics
  *(LATAM, LAVCA 2025)*. A $5M pre-money cap for a Colombian Seed with $100k MRR is
  within market range; the equivalent US deal would price at $10M–$15M.
- **Anti-dilution watch:** LATAM rounds often include broad-based weighted-average anti-dilution.
  Angel investors on SAFEs convert below institutional investors on priced rounds. Factor
  this into ownership calculations.
- **Time to exit:** LATAM median angel → Series A: 24 months. Median Series A → Series B:
  30 months. Median time to exit (acquisition): 6–8 years from angel entry. Angels should
  not underwrite a 5-year exit timeline in LATAM.

## Exit Environment

| Exit Type | LATAM Reality | Notes |
|-----------|---------------|-------|
| Strategic acquisition | Most common | Large LATAM corporates (Bancolombia, Nubank, Rappi, FEMSA) are active strategic acquirers at $30M–$150M |
| IPO | Rare | B3 (Brazil) has hosted a few tech IPOs; BMV (Mexico) is limited; NASDAQ listings require US legal structure |
| Secondary sale | Growing | AngelList LATAM rolling funds; secondaries market thin but improving |
| Write-off | ~35–40% of LATAM angel deals | Per AngelList LATAM data; higher than US (~25%) due to lower follow-on rates |
