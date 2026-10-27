# Angel Investment Criteria: Investor Perspective Inversion

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

**Angel-specific note:** a $50K check on a $7M pre-money ($7.05M post) buys ~0.71%. Three later
rounds at ~20% dilution each (US medians: seed ~19-20%, A ~18%, Carta 2025) leave ~0.36%. A 10x
($500K back) needs a ~$140M exit. Run this math explicitly in every output. Most angels do not.

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

**LATAM regulated-activity rule:** for fintech, insurtech or healthtech, Moat Durability cannot score
above 3 without a written regulatory opinion or the license that matches the activity (see
latam-context.md for Brazil, Mexico and Colombia). Operating in a regulated activity without one is
existential risk, not moat.

**AI-native rule:** if the core feature could ship inside a foundation model or a large incumbent's
product within 12 months, and the company has no proprietary data, distribution or workflow lock-in,
Moat Durability scores 2 at most.

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

**LATAM exit reality check:** only 12% of LATAM seed startups raise a Series A within three years
(LAVCA 2025), about half the US rate (Carta: ~24% of the 2022 seed cohort). M&A is 67% of LATAM
VC-backed exits (Cuantico 2026). Model the exit as a strategic acquisition, not an IPO. A score
above 3 requires named acquirers and at least one sourced comparable exit.

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

## Verdict Decision Rules (first match wins)

1. Any criterion at 1 or 2 → **PASS**.
2. Required exit for 10x (10 x check / exit ownership) is out of reach of any realistic path, even
   as category leader with named acquirers → **PASS**.
3. Total under 14/25 → **PASS**.
4. Total 18+ and 10x works at realistic dilution → **INVEST**.
5. Otherwise → **WATCH**, only with a named catalyst that would lift one criterion within 90 days
   and a re-check date (e.g., "INVEST if month-6 cohort retention reaches 85% in the next report").
   No named catalyst → **PASS**.

Additional PASS triggers regardless of score: SAM under ~$50M with a check above $50K; pre-revenue
at a valuation above 10x the projected 12-month revenue run rate.

## Common Red Flag Triggers

These do not require a criterion to score 1. They are explicit [RED FLAG] callouts
regardless of score:

- Founder claims "no competition": no market has no competition; this is a diligence failure
- Pre-revenue deal with no comparable LATAM angel exits in the sector
- Valuation >10× projected 12-month revenue run rate at pre-seed/seed
- Founding team has zero regulatory experience in a sector requiring regulatory approval (fintech, healthtech)
- Single-customer concentration >50% of revenue
- Round has been "open" for >6 months without closing: the market has already passed
- AI product with gross margin under ~40% after inference cost and no plan to improve it (Bessemer
  State of AI 2025: "Shooting Star" AI companies run ~60%)
- Revenue is mostly pilots or usage credits presented as ARR
- LATAM-only company signing a US SAFE with no local legal opinion
- Cap table complexity at early stage (>5 investors pre-Series A without institutional lead)
