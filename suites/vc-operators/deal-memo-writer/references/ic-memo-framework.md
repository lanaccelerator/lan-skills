# IC Memo Framework — a16z + Sequoia Structure

**Sources:**
- a16z: https://a16z.com/how-a16z-evaluates-startups/
- Sequoia: https://www.sequoiacap.com/article/elements-of-enduring-companies/
- Benchmark: https://www.benchmark.com (partner meeting memo format observed in public
  filings and founder accounts)
**License/Attribution:** Frameworks synthesized from public sources. Cite each source
individually in IC memo output.
**When to use:** deal-memo-writer loads this file before writing any IC memo. Contains
the 9-section structure, quality thresholds, red flag triggers, and LATAM adaptation
notes for each section.

---

## Core Principle

An IC memo serves one purpose: give the investment committee everything they need to
make a go/no-go decision in 30 minutes without having to ask the analyst follow-up
questions. A memo that requires clarification is a failed memo. A memo that buries
the recommendation in Section 9 is a failed memo.

The recommendation belongs in Section 1. The evidence supporting it belongs in
Sections 2–8. If you cannot state the recommendation confidently in the first
paragraph, you have not done the work yet.

---

## The 9 Sections: Purpose, Quality Threshold, Red Flag Triggers

### Section 1: Executive Summary

**Purpose:** State the investment thesis, key conviction, and recommendation in one
paragraph. IC partners will read this first and decide whether to continue.

**Minimum quality threshold:** Recommendation must be explicit in the first sentence.
Contains: company description (one line), stage, metrics snapshot, proposed check
size, and the one non-obvious insight that makes this deal worth doing.

**Red flag triggers (any one = escalate to committee discussion):**
- Recommendation is absent or hedged ("we are considering investing")
- No "key conviction" — nothing specific about why this deal at this time

---

### Section 2: Company Overview

**Purpose:** Give the committee a shared factual baseline. No analysis yet.

**Minimum quality threshold:** Summary table with Company | Stage | Founded | MRR |
Growth MoM | Customers | ACV | Gross Margin. Missing any field requires [ASSUMPTION:].

**Red flag triggers:**
- Gross margin not provided or not calculable from available data
- MRR reported without growth rate context (a single number is meaningless)

---

### Section 3: Market Analysis

**Purpose:** Establish that the market is large enough to return the fund, the timing
is right, and the sizing methodology is credible.

**Minimum quality threshold:** TAM/SAM/SOM with bottom-up calculation shown. "Why
Now" names a specific enabling event (regulatory change, infrastructure shift,
behavioral inflection) with a date.

**Red flag triggers (any one = PASS recommendation required):**
- TAM is top-down only (e.g., "Gartner report says $50B global market") — no SAM
  calculated from customer count × ACV
- "Why Now" is absent or generic ("the market is growing")
- SAM < $100M for a LATAM fund / SAM < $500M for a top-tier US fund
- Market sizing depends on "if we capture 1% of a billion-dollar market" logic

**LATAM adaptation:** LATAM-focused fund threshold: SAM > $100M is fundable. US
threshold (>$500M SAM) is too high for LATAM deals at the same stage.

---

### Section 4: Product & Technology

**Purpose:** Assess whether the product is meaningfully differentiated and whether
the technology creates durable defensibility.

**Minimum quality threshold:** At least one moat type assessed (network effects,
switching costs, proprietary technology, or brand). Technical risk must be named.

**Red flag triggers:**
- "10x better than alternatives" claim with no specific evidence
- No moat identified; differentiation is purely on price or features
- Core technology is readily replicable by a well-funded competitor in <6 months

---

### Section 5: Team Assessment

**Purpose:** Establish why THIS team — not a team in general — can execute this
specific deal in this specific market.

**Minimum quality threshold:** Named founders with one-line conviction per founder.
Explicit LATAM operator experience assessment if the deal is LATAM-focused.

**Red flag triggers (any one = PASS recommendation required):**
- No prior LATAM operator experience for a LATAM-focused deal (D-23: US experience
  does not qualify)
- CEO and CTO both non-technical for a technical product
- Team has no relevant domain experience and no plan to hire domain expertise
- "The founders are smart and passionate" — generic capability claim without evidence

**LATAM operator experience standard:**
Qualifying experience: prior startup/scaleup at a LATAM company, B2B sales to LATAM
enterprise customers, navigated LATAM regulatory environment (CNBV, BACEN, SFC),
has LATAM-specific investor/customer/talent network.
Non-qualifying: US startup experience, studying in the US, "customer base includes
LATAM companies."

---

### Section 6: Financial Analysis

**Purpose:** Confirm that unit economics are viable and that the business model can
generate venture-scale returns.

**Minimum quality threshold:** LTV/CAC with gross-margin-adjusted LTV (ARPA ×
Gross Margin % ÷ Monthly Churn Rate). Revenue-based LTV is a red flag anti-pattern.
Label each benchmark: `(US-sourced benchmark, YC / a16z)` or `(LATAM, LAVCA 2025)`.

**Red flag triggers (any one = PASS recommendation required):**
- LTV/CAC below 1:1 at Seed+ stage — unit economics not viable at current pricing
- Revenue-based LTV used instead of gross-margin-adjusted LTV (inflates LTV by
  inverse of gross margin; common manipulation site per a16z 16 Metrics)
- Gross margin <40% for SaaS (suggests COGS misclassification or service-heavy model)
- Burn multiple >3× at current ARR (spending $3+ to generate $1 of new ARR)

**Stage benchmarks (from shared/yc-metrics.md):**

| Metric | Seed | Series A | Notes |
|--------|------|---------|-------|
| MRR | $10k–$100k | $100k–$1M | — |
| MoM Growth | 15–30% | 10–20% | US-sourced benchmark, YC |
| Logo Churn (annual) | <10% | <7% | US-sourced benchmark, YC |
| Gross Margin | >65% | >70% | US-sourced benchmark, YC / a16z |
| LTV/CAC | >2:1 | >3:1 | US-sourced benchmark, a16z |
| CAC Payback | <18 months | <12 months | US-sourced benchmark, Bessemer |

---

### Section 7: Competitive Landscape

**Purpose:** Demonstrate that the analyst has done competitive due diligence and can
articulate why the portfolio company wins.

**Minimum quality threshold:** Named competitors (at least 3) with assessed strengths
and weaknesses. One specific advantage that is hardest for each competitor to replicate.

**Red flag triggers (any one = PASS recommendation required):**
- "No competition" claim — every funded market has competition; this signals the
  analyst has not looked or the founder is delusional
- Competitive table with generic "strengths" (e.g., "large company") without
  naming the specific capability that would threaten the portfolio company
- No assessment of the best-funded or largest competitor's likely response

---

### Section 8: Risk Register

**Purpose:** Pre-mortems the investment. Forces the analyst to name the specific
risks and their mitigation thesis before the committee.

**Minimum quality threshold:** 3–5 risks in table format: Risk | Severity | Mitigation
Thesis. Every LATAM deal with USD costs + local currency revenue must include FX risk.
Every fintech/healthtech/edtech deal must include regulatory risk.

**Red flag triggers:**
- Risk Register missing entirely
- All risks rated LOW (no deal has no HIGH-severity risks; analyst is not being honest)
- FX risk absent for a LATAM company with USD cost exposure
- Regulatory risk absent for a company in a regulated sector

**Severity guidance:**
- HIGH: Could terminate the business or require complete pivot if realized
- MEDIUM: Would significantly impair growth but is manageable with capital/strategy
- LOW: Nuisance risk; manageable with standard operating practice

---

### Section 9: Investment Recommendation

**Purpose:** Close the loop. Give the committee a single explicit position with
supporting terms and conditions.

**Minimum quality threshold:** One of three positions: INVEST (with proposed terms),
PASS (with one reason per fatal flaw), or DEFERRED (with specific milestone and
re-evaluation date).

**Red flag triggers:**
- "We are leaning toward investing but want more diligence" — this is not a
  recommendation; it is a request for more time
- Proposed terms missing (INVEST without terms requires committee to negotiate blind)
- PASS without specific reasons — vague passes waste everyone's time and damage the
  fund's reputation with founders

---

## a16z IC Scoring Rubric (condensed)

a16z partner meetings evaluate deals on six dimensions, each rated 1–3:

| Dimension | 3 (Exceptional) | 2 (Adequate) | 1 (Weak) |
|-----------|----------------|-------------|---------|
| Market | >$1B SAM, winner-take-most | >$200M SAM, competitive | <$100M SAM or commoditized |
| Team | Unfair domain advantage, prior exit | Strong generalists | No domain fit |
| Product | 10x differentiation, clear moat | Better than incumbents | Feature parity |
| Timing | Undeniable "why now" | Favorable trends | Could have done this 5 years ago |
| Unit Economics | LTV/CAC >3:1, expanding margins | Viable path to positive | Fundamentally broken |
| Fit | Core thesis, strong follow-on potential | Thesis-adjacent | Stretch investment |

**Threshold:** Total score ≥ 15 for investment recommendation. Any single dimension
scoring 1 warrants serious committee discussion before proceeding.

---

## Sequoia Investment Memo Elements

Sequoia's internal framework emphasizes narrative arc in addition to analytical rigor.
The IC memo should tell a story: here is the world as it is today, here is what has
changed, here is why this team is the one to build the solution, here is the
evidence that they are succeeding.

Key Sequoia elements:
1. **Purpose and values** — Why does this company exist beyond making money?
2. **Mission and strategy** — Where is this company going and how?
3. **Market opportunity** — Sequoia requires the analyst to define the market in a
   way that the company could credibly win, not the largest possible number
4. **Team** — Specific "why you" answer, not generic capability assessment
5. **Financials** — Model the case for venture returns at fund ownership percentage

---

## Sources

- a16z: https://a16z.com/how-a16z-evaluates-startups/
- Sequoia: https://www.sequoiacap.com/article/elements-of-enduring-companies/
- a16z 16 Metrics: https://a16z.com/16-metrics/
- YC Metrics Guide: https://www.ycombinator.com/library/Fp-a-guide-to-startup-metrics
- Brad Feld, Venture Deals (4th ed.) — term sheet taxonomy: shared/brad-feld-terms.md
