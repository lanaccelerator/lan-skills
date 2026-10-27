# LATAM Startup Valuation Context

**Purpose:** LATAM-specific valuation benchmarks and context for startup-valuation-checker
Step 5. Provides the regional data layer that corrects for US benchmark anchoring.

**When to use:** startup-valuation-checker — read this file BEFORE producing the final
verdict to apply LATAM-specific benchmarks.

---

## Pre-Money Valuation Benchmarks by Stage

*Directional LAN practitioner ranges. LAVCA 2025 and Cuantico 2026 do not publish LATAM
valuation medians by stage; the US column is the 2024 Carta view, superseded by the refresh below.*

| Stage      | LATAM Pre-Money (directional) | US Pre-Money (Carta 2024)    | LATAM Discount | Basis |
|------------|------------------------------|------------------------------|----------------|--------|
| Pre-revenue| $1.5–3M                      | $3–6M                        | ~50%           | Directional |
| Pre-seed   | $3–5M                        | $6–9M                        | ~45%           | Directional |
| Seed       | $6–10M                       | $12–18M                      | ~44%           | Directional |
| Series A   | $15–25M                      | $30–50M                      | ~47%           | Directional |
| Series B   | $40–80M                      | $80–150M                     | ~45%           | Directional |

### US refresh, Carta 2025-2026 (use these for current US anchors)

Median round size and post-money valuation, US software rounds (Carta Data Desk, 10 Jul 2026,
1,000+ rounds). Implied dilution = round / post-money.

| Stage    | Median round | Median post-money | Implied dilution |
|----------|--------------|-------------------|------------------|
| Seed     | $4.1M        | $24.3M            | ~17%             |
| Series A | $14.4M       | $80M              | ~18%             |
| Series B | $25M         | $191M             | ~13%             |
| Series C | ~$40M        | $391M             | ~10%             |
| Series D | $63M         | $789M             | ~8%              |

- Pre-money medians hit records in 2025: seed $16M and Series A $49.3M (Carta, State of Private
  Markets Q3 2025). These are US numbers; the 2024 ranges in the table above are older and lower.
- Median dilution per priced round: seed about 19-20%, Series A about 18%, not rising (Carta,
  "Startup dilution per round is not rising", 2025, 12,435 priced US software rounds).
- Label these `(US-sourced benchmark, Carta 2025-2026)`. They widen the LATAM gap: founders
  anchoring on them overprice LATAM rounds even more.

**Sourced gap:** US seed pre-money averaged 156% above LATAM in 2015-2025, so LATAM seed sits
around 40% of the US level (Valoriza via Diario Financiero, 2 Apr 2025). This is consistent with
the ~45% discount column above.

**Label all US figures:** `(US-sourced benchmark, Carta <date>)`
**Label LATAM figures:** with their source and date, or `(LATAM, directional)` for the ranges above

**The LATAM discount is NOT a quality signal.** LATAM companies at equivalent metrics
to US peers are valued lower because:
1. Exit multiples in LATAM M&A are lower (less competition among acquirers)
2. IPO paths are limited (few LATAM unicorns list locally; NASDAQ requires USD revenue scale)
3. Follow-on capital is scarcer at Series B+ in LATAM (less dry powder per company)
4. FX risk adds discount rate premium for USD-denominated funds investing in local currency revenue

---

## Revenue Multiples by Sector and Stage (LATAM)

*Directional LAN practitioner ranges; no public LATAM multiples dataset exists.*

| Sector       | Stage    | LATAM ARR Multiple | Notes |
|--------------|----------|--------------------|-------|
| SaaS (B2B)   | Pre-seed | 3–5×               | Directional |
| SaaS (B2B)   | Seed     | 4–6×               | Directional |
| SaaS (B2B)   | Series A | 5–8×               | Directional |
| Fintech      | Pre-seed | 4–7×               | Directional (licensed premium) |
| Fintech      | Seed     | 5–8×               | Directional |
| Edtech       | Seed     | 2–4×               | Directional |
| Healthtech   | Seed     | 3–5×               | Directional |
| Logistics    | Seed     | 2–3×               | Directional |
| Agtech       | Seed     | 2–4×               | Directional |
| Marketplace  | Seed     | 1.5–3× GMV         | Revenue-based multiples vary; use GMV for marketplaces |

**Fintech LATAM premium:** Regulated fintech (holding a CNBV, BACEN, or CMF license)
commands a 20–30% premium over SaaS multiples because the regulatory moat creates a
meaningful barrier to entry. Confirm the regulatory license exists before applying premium.

---

## US Benchmark Anchoring — The Most Common Valuation Error

Founders who have participated in US accelerators (YC, Techstars, Latitud) frequently
anchor on US cohort valuations:

- "YC companies raise at $10–15M pre-money → my pre-seed should be $12M"
- "My US competitor raised at 10× ARR → I should too"
- "Carta says the US seed median pre-money is $16M → that is my benchmark" (Carta Q3 2025)

These comparisons are technically accurate for US companies and systematically wrong
for LATAM-raising companies. LATAM investors closing rounds know where regional rounds price. The
founder citing YC comps loses credibility, not gains it.

**Exception:** If the startup has significant US revenue (>50% of ARR from US customers)
or a US co-investor already in the round at a US-level valuation, then US benchmarks
may be partially applicable. Flag this explicitly in the analysis.

---

## Country-Specific Adjustments

*Directional.* Context: Brazil took ~49%, Mexico ~24%, Chile ~6%, Colombia ~5%, Argentina ~4% of
2025 LATAM VC dollars (Cuantico 2026).

| Country    | Adjustment vs. LATAM Median | Rationale |
|------------|----------------------------|-----------|
| Brazil     | At or above median          | Largest market; PIX infrastructure; deepest VC ecosystem |
| Mexico     | At median                   | Strong fintech regulation (CNBV fintech law); second-largest market |
| Colombia   | -5 to -15%                  | Growing ecosystem; smaller LP base; less follow-on capital |
| Chile      | At or above median          | Strong institutional infrastructure; CORFO programs |
| Peru       | -15 to -25%                 | Emerging VC ecosystem; limited LP base; political risk discount |
| Argentina  | -25 to -40%                 | Peso instability; currency controls; investor risk premium |
| Panama     | -10 to -20%                 | Small domestic market; used as legal vehicle hub |

**Application:** When building the LATAM Comparable Transactions table, apply country
adjustments to comparable valuations. A Colombian company at $4M Seed pre-money is
roughly equivalent to a Brazilian company at $4.5–5M at the same metrics.

---

## Growth Rate Thresholds for Valuation Defense

For founders defending a STRETCHED valuation, these growth rates support premium pricing
*(directional; YC reference: 5-7% weekly is good, 10% exceptional, Paul Graham 2012)*:

| Stage    | Revenue Growth Rate | Valuation Impact |
|----------|---------------------|------------------|
| Pre-seed | >25% MoM (if any ARR) | Supports 2× median LATAM multiple |
| Seed     | >15% MoM ARR        | Supports 1.5× LATAM median multiple |
| Seed     | 10–15% MoM ARR      | Supports LATAM median multiple |
| Seed     | <10% MoM ARR        | Below median multiple; difficult to argue premium |
| Series A | >100% ARR YoY       | Supports 1.5× LATAM Series A median |
| Series A | 60–100% ARR YoY     | Supports LATAM Series A median |

**For investors:** These thresholds define when a premium over median is earned. If a
startup asks for a 2× median valuation without 2× median growth, the premium is speculative.
Request evidence of growth rate sustainability (3 consecutive months at stated rate).

---

## Common LATAM Valuation Red Flags

**For investors evaluating a deal:**
- Pre-seed company with zero ARR asking >$6M pre-money → OVERPRICED unless exceptional team
- Seed company with $500k ARR asking >$8M pre-money → requires 20%+ MoM growth to justify
- Founder citing US comparable transactions without LATAM adjustment → anchoring error; no credibility adjustment
- Revenue recognized in local currency, valuation denominated in USD without FX adjustment → inflated USD ARR

**For founders defending an ask:**
- Asking above LATAM median without evidence → will fail in term sheet negotiation
- Using YC demo day comps without US investors in the round → sophisticated LATAM investors will discount
- No LATAM-specific comparables in your investor deck → leaves credibility gap
