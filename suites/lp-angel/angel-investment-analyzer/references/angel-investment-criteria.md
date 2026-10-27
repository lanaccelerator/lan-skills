# Angel Investment Criteria — Investor Perspective Inversion

**When to use:** angel-investment-analyzer invokes this file in Step 2. These are the
investor-lens questions that invert the founder-perspective criteria in
shared/vc-backable-test.md.

The critical distinction: venture-model-validator asks "Should I build this?"
This skill asks "Should I write this check?"

## Investor Question Inversion Table

| Criterion | Founder question (venture-model-validator) | Investor question (angel-investment-analyzer) |
|---|---|---|
| Market Size | "Is my TAM large enough for VC?" | "Can this SAM produce the exit multiple I need at my expected ownership %?" |
| Monopoly / Moat | "Can I dominate a niche before expanding?" | "Is there a defensible moat that prevents my investment from being crowded out by better-funded entrants?" |
| PMF Signals | "Do I have product-market fit evidence?" | "Has this team proven they can find, close, and retain customers at this price point?" |
| Exit / Enduring Company | "Can this be category-defining?" | "Is there a credible path to the exit multiple I need within my holding period?" |
| Market Timing | "Is now the right time to build?" | "Is now the right time for ME to invest — or will I be too early (burning before PMF) or too late (valuation inflated)?" |

## Scoring Rubric — Investor Lens (1–5 per criterion)

### Criterion 1: Return Potential (Market Size × Ownership)

The investor question: "At my check size, target ownership, and realistic dilution to exit,
can this deal return 10× my investment?"

| Score | Meaning |
|-------|---------|
| 5 | Math works cleanly: SAM supports $200M+ exit, ownership path to ≥5% at exit (post-dilution), realistic comp exits exist |
| 4 | Math works with one optimistic assumption: exit scenario requires top-quartile outcome but is plausible |
| 3 | Math is tight: requires best-case ownership, premium valuation multiple, AND top-quartile exit — possible but fragile |
| 2 | Math fails at realistic ownership: dilution to exit likely leaves investor below 2× unless lead investor terms |
| 1 | Market too small to return the check; or valuation already prices in exit; no viable return scenario |

**Angel-specific note:** A $50k check at 3% ownership in a $7M pre-money cap, diluted 50% through Series A/B/C,
arrives at 1.5% ownership at exit. If exit is $80M, that is $1.2M returned on $50k — a 24× return but only
if exit reaches $80M. Run this math explicitly. Most angels do not.

### Criterion 2: Moat Durability

The investor question: "Is there a defensible barrier that makes my investment resistant to
competitive crowding, especially from well-funded entrants?"

| Score | Meaning |
|-------|---------|
| 5 | Two or more moat types: regulatory license + proprietary data, or network effects + switching costs |
| 4 | One strong structural moat: regulatory license, exclusive data asset, or deep integration switching costs |
| 3 | Competitive advantage present but replicable with sufficient capital — execution advantage only |
| 2 | Feature differentiation only; well-funded competitor could match in 18 months |
| 1 | No structural moat; commodity competition; "we win on customer service" |

**LATAM fintech exception:** For Colombian, Mexican, or Brazilian fintech deals — Moat Durability cannot
score above 3 without a clear CNBV (Mexico) / BACEN (Brazil) / SFC (Colombia) regulatory path or license.
Fintech operating without regulatory clarity is existential risk, not moat.

### Criterion 3: Customer Validation Strength

The investor question: "Has this team demonstrated they can find, close, and retain customers
at the price point and acquisition cost they claim?"

| Score | Meaning |
|-------|---------|
| 5 | Strong cohort data: ≥10 paying customers, Month-6 retention ≥70%, organic/referral ≥40% of acquisition |
| 4 | Early PMF signals: 5–10 paying customers, low early churn, organic growth present |
| 3 | Some paying customers but retention unproven: <5 customers or >3 months old revenue only |
| 2 | Pilots only, no paying customers; or high churn (>20%/month) with single customer concentration |
| 1 | Pre-revenue; hypothesis only; no customer validation |

### Criterion 4: Exit Credibility

The investor question: "Is there a credible exit path that produces the return multiple I need
within a timeframe consistent with my holding period (typically 5–10 years)?"

| Score | Meaning |
|-------|---------|
| 5 | Multiple credible exit paths: strategic acquirers identified, comparable sector exits at $100M+ in LATAM, IPO not excluded |
| 4 | One credible exit path with named strategic acquirers or comparable recent exits in sector |
| 3 | Exit path exists but requires category leadership or market conditions not yet established |
| 2 | Thin exit environment: few strategic buyers, no comparable LATAM exits in sector, acquisition unlikely at venture multiples |
| 1 | No credible exit: niche too small, acquirers absent, IPO impossible at scale, or founder explicitly anti-exit |

**LATAM exit reality check:** LATAM angel-to-Series A conversion is ~12% (vs ~22% US). Most LATAM angel
investments do not follow-on to Series A. Model the exit as a strategic acquisition, not an IPO.
Named acquirers are required for a score above 3.

### Criterion 5: Investor Timing

The investor question: "Is this the right moment for ME to invest in this deal — or will I
be too early (spending on proof-of-concept they haven't reached) or too late (valuation
already reflects upside, competition crowded, co-investors anchored)?"

| Score | Meaning |
|-------|---------|
| 5 | Optimal entry: PMF signals proven, round not yet competed for by institutional investors, valuation pre-institutional premium |
| 4 | Good entry: early PMF evidence, lead investor anchor not yet set, pricing reasonable vs comparables |
| 3 | Acceptable entry: some PMF signal, some competition for round, valuation within 20% of comparables |
| 2 | Late entry: PMF unproven but valuation already priced in; OR round heavily competed and terms unfavorable |
| 1 | Wrong time: too early (burning pre-product) or too late (institutional lead anchored, no info rights, valuation at Series A range) |

## Verdict Decision Rules

### INVEST

All three conditions must be true:

1. Overall score ≥ 18/25
2. No individual criterion below 3
3. Clear mathematical path to 10× at realistic ownership percentage (run the math)

### PASS

Any one condition triggers PASS:

1. Any individual criterion scores 1 or 2
2. Return Potential math fails at realistic dilution (even with a perfect score on other criteria)
3. Market size too small to return the check (sub-$50M SAM with check >$50k)
4. Pre-revenue at a valuation >10× projected 12-month revenue run rate

### WATCH

Requires all three:

1. Overall score 14–17
2. No criterion below 3 (all criteria at 3 or above)
3. A specific, named catalyst exists that would flip a 3-criterion to 4 within 90 days

**WATCH is not a soft PASS.** A WATCH verdict requires a specific follow-up trigger event
(e.g., "INVEST if closes BancoAgrario partnership before Q3 2026" or "INVEST if Month-6
cohort retention reaches ≥85% in the next reporting period").

## Common Red Flag Triggers

These do not require a criterion to score 1 — they are explicit [RED FLAG] callouts
regardless of score:

- Founder claims "no competition" — no market has no competition; this is a diligence failure
- Pre-revenue deal with no comparable LATAM angel exits in the sector
- Valuation >10× projected 12-month revenue run rate at pre-seed/seed
- Founding team has zero regulatory experience in a sector requiring regulatory approval (fintech, healthtech)
- Single-customer concentration >50% of revenue
- Round has been "open" for >6 months without closing — market has already passed
- Cap table complexity at early stage (>5 investors pre-Series A without institutional lead)
