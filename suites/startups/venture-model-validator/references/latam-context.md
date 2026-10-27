# LATAM Context: Venture Model Validator

**When to use:** venture-model-validator reads this file in Step 3 (Workflow, step 5) and
Step 5 (LATAM Context) BEFORE calculating the final score.

**Numbers live in the canonical data layer:** shared/latam-benchmarks.md
(verified Oct 2026, every figure with source and date). This file only says how to use
them in the scorecard. If a number is not in the canonical file and you cannot verify it,
do not state it. Rows marked *(directional)* are LAN's read, not published data.

---

## How to Annotate Benchmarks in the Scorecard

1. US benchmark first: `(US-sourced benchmark, <source>, <date>)`
2. Then the LATAM figure: `(LATAM, <source>, <date>)` or `(LATAM, directional)`
3. State the direction: LATAM advantage, LATAM discount, or same as US

**Example:**
> Seed to Series A: ~24% of the 2022 US seed cohort had raised a Series A *(US-sourced
> benchmark, Carta)*. LATAM: 12% of seed startups raise one within three years *(LATAM,
> LAVCA Startup Ecosystem Insights 2025)*. LATAM discount: roughly half the odds.

---

## Facts that move the score (all in the canonical file)

| Fact | Source | Scoring implication |
|------|--------|---------------------|
| USD 4.13B across 681 rounds in 2025, +13.8% | Cuantico 2026 | Thin market: the follow-on pool is small |
| Fintech 61% of 2025 dollars, SaaS 13% | Cuantico 2026 | Non-fintech needs stronger PMF evidence to access the same capital |
| Brazil + Mexico ~73% of 2025 dollars | Cuantico 2026 | Regional scale runs through Brazil or Mexico |
| 12% of seeds reach Series A within 3 years | LAVCA Startup Ecosystem Insights 2025 | Underwrite as if the company may never raise again |
| ~20 months between rounds | LAVCA Trends in Tech 2025 | Plan runway for 20+ months, not 12-15 |
| Pre-seed 2025: deal count -39%, lowest since 2018 | Latin America VC Report via Mexico Business News | Pre-product startups face a harder market; score PMF conservatively |
| M&A is 67% of 2025 exits | Cuantico 2026 | Name the acquirers; do not underwrite an IPO |
| LATAM seed pre-money ~40% of the US level (2015-2025 average) | Valoriza via Diario Financiero (2 Apr 2025) | Fund-returner math must use LATAM entry prices and exits |

The revenue-multiple discount vs US peers is real but unquantified in any public dataset.
Never quote a percentage for it.

---

## Sector Mix Adjustment

A non-fintech SaaS startup in LATAM must show stronger PMF signals and market size than a
fintech peer to access the same capital, because the investor pool is proportionally
smaller. Five companies took about 25% of 2025 venture dollars (LAVCA 2026 Trends in Tech):
read sector shares as concentrated, not as broad appetite.

---

## LATAM-Calibrated Thresholds (directional)

| Criterion | US Standard | LATAM Adjustment |
|-----------|-------------|------------------|
| SAM for fund-returner | >$500M (top-tier fund) | >$100M for a LATAM seed fund ($50M-$300M fund size) |
| Growth at seed | 5-7%/week during YC (Paul Graham, 2012); ~10%/week for AI-native at top funds (LAN's read) | 10%+ MoM floor for single-country B2B; explain anything lower |
| Series A revenue | $1-3M ARR | Same floor |
| Time to Series A | 12-18 months post-seed | 18-30 months post-seed |
| PMF signal | 40% "very disappointed" (Sean Ellis) | Same threshold |

Round ranges by stage (check size, cap, pre-money) are in the canonical file, marked
directional.

---

## Market Geographic Requirement

A LATAM startup reaching regional scale must eventually win Brazil or Mexico (about 49%
and 24% of 2025 dollars, Cuantico 2026). Startups elsewhere should plan an entry into one
of them within 2-4 years; investors ask about it in every pitch (directional).

---

## Risk Factors to Note in Output

| Risk | Implication |
|------|-------------|
| FX volatility | Revenue in local currency, returns in USD: ask for USD-linked pricing |
| Regulatory fragmentation | Country-specific licenses (CNBV, BACEN, SFC, CMF) |
| Capital depth | Limited local Series B+; international co-investors needed from Series A |
| Exit scarcity | M&A-led exits; name 10 plausible acquirers |
| Pre-seed contraction | Earlier companies must reach seed metrics faster |
