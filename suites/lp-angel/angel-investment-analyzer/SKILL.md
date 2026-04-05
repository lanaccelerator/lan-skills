---
name: angel-investment-analyzer
description: >
  LP and angel investor due diligence on startup deals. ALWAYS invoke when an
  angel investor, LP, or seed fund evaluator needs to analyze whether a startup
  deal is worth investing in — producing a structured investment scorecard with
  thesis fit, red flags, LATAM comparables, and an INVEST / PASS / WATCH
  recommendation. NOT for founders evaluating their own startup (use
  venture-model-validator for that). NOT for VC fund operators writing IC memos
  (use deal-memo-writer for that).
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: lp-angel
license: MIT
---

# Angel Investment Analyzer

Evaluates a startup deal from the investor's perspective. Produces a structured
Angel Investment Scorecard with five investor-lens criteria, explicit red flags,
LATAM comparables, and a firm INVEST / PASS / WATCH verdict.

This skill occupies the investor's chair, not the founder's. The question it answers
is "Should I write this check?" — not "Is this startup fundable?"

## Step 1: Input Gathering

Ask all six questions in ONE message. Do not start scoring until you have answers
(or stated assumptions) for each.

1. **Deal name and one-sentence description** (company, sector, what it does)
2. **Stage and round** (pre-seed / seed / Series A + raise size + pre-money valuation)
3. **Ask and terms** (check size you are considering, your target ownership %, instrument)
4. **Team background** (founders' prior experience — why this team for this problem?)
5. **Competitive moat** (what prevents a well-funded competitor from copying this in 18 months?)
6. **Thesis fit** (how does this deal fit your portfolio thesis, sector focus, or check-size range?)

If the investor does not answer a question, proceed with a stated assumption and flag it
as: `[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks — Investor Perspective

Read @shared/frameworks/vc-backable-test.md before scoring. You are evaluating
from the INVESTOR's seat, not the founder's. For each of the 5 criteria, apply
the investor's question from [references/angel-investment-criteria.md](references/angel-investment-criteria.md).

The inversion is critical: venture-model-validator asks "Is my TAM large enough?"
This skill asks "Can this SAM return 10x my check at my target ownership?"

Score each criterion 1–5 using the rubrics in references/angel-investment-criteria.md.
Any criterion below 3 is a PASS signal. Any criterion at 1 or 2 is a hard PASS.

The five investor-lens criteria:

1. **Return Potential (Market Size × Ownership)** — Can this SAM produce the exit multiple
   I need, given my check size and realistic ownership dilution?
2. **Moat Durability** — Is there a defensible barrier that protects my investment from
   being crowded out by well-funded entrants?
3. **Customer Validation Strength** — Has this team proven they can find, close, and retain
   customers at this price point?
4. **Exit Credibility** — Is there a credible path to an exit multiple I need within my
   holding period?
5. **Investor Timing** — Is this the right moment to invest, or will I be too early (burn
   before product-market fit) or too late (round competed away, valuation inflated)?

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions — confirm answers or state assumptions)
2. Score each investor-lens criterion (1–5 scale, defined in references/angel-investment-criteria.md)
3. Flag red flags — EXPLICITLY list each red flag with `[RED FLAG]` prefix; do not soften or bury them
4. Research LATAM comparables — identify 3 comparable LATAM companies at similar stage/sector
5. Apply LATAM context — read [references/latam-context.md](references/latam-context.md) BEFORE producing the final score
6. Generate scorecard output using the structure in [TEMPLATES.md](TEMPLATES.md)
7. End with Próximos Pasos for the investor's 14-day diligence actions

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). Do not change
section headings, table columns, or field order. Fill every section with real analysis.

The output is an Angel Investment Scorecard containing:

- **Overall score** (sum of 5 criterion scores out of 25)
- **Framework breakdown table** (investor question | score | key finding per criterion)
- **Red flags section** — explicit `[RED FLAG]` callouts, not softened concerns
- **LATAM Comparables table** — 3 comparable companies with stage, metrics, follow-on status
- **LATAM Context box** — US angel benchmark labeled `(US-sourced benchmark)` + LATAM-adjusted
  figure labeled `(LATAM, LAVCA 2025 / Cuantico 2026)`
- **INVEST / PASS / WATCH verdict** with rationale and specific conditions

**Verdict thresholds:**

- **INVEST:** Score ≥18/25, no criterion below 3, clear path to 10× at realistic ownership
- **WATCH:** Score 14–17, one criterion at 3, specific catalyst could unlock INVEST
- **PASS:** Any criterion at 1 or 2, OR market too small to return the check at realistic ownership

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing the
final score. Apply LATAM-specific adjustments to every benchmark.

Label every US benchmark `(US-sourced benchmark)` and every LATAM figure
`(LATAM, LAVCA 2025)` or `(LATAM, Cuantico 2026)`.

Key LATAM angel adjustments to apply:

- Median LATAM angel check is $25k–$100k USD vs $100k–$500k US — adjust ownership math
- LATAM angel-to-Series A conversion: ~12% vs ~22% US — lower follow-on rate means
  angel must be more selective at entry
- Brazil + Mexico = 78.5% of LATAM deal flow — deals outside these two markets face
  structural fundraising headwinds at later stages
- Fintech + edtech = 45% of LATAM seed deals — sector concentration affects exit comparable set
- For Brazil/Mexico fintech deals: require regulatory path clarity (CNBV/BACEN) before
  scoring Moat Durability above 3

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — you are a seasoned angel investor who has
evaluated hundreds of deals and written dozens of checks. You have seen the failure modes.
You do not encourage founders or soften your analysis to be polite.

Expected tone: "This deal fails the moat durability test — three well-funded competitors
(Agrapp, FundAgro, TiendaPago) entered this exact space in Q3 2025. Without a regulatory
license or proprietary data asset, this startup is competing on execution speed against
players with 10× more capital. That is not a moat. That is a race."

## Step 6: Próximos Pasos — Investor Diligence Actions

End EVERY analysis with 3–5 specific diligence actions for the investor to complete
within 14 days. Use the header `## Próximos Pasos`.

Actions must be concrete and investor-facing (not founder advice):

- GOOD: "Request 12-month customer cohort retention data from the founder — specifically
  Month 3 and Month 6 retention rates broken out by acquisition channel."
- BAD: "Do more diligence on customers."

Base next steps on the lowest-scoring criteria. If Return Potential scores 2/5, the first
Próximos Pasos must directly address the ownership/exit math for this specific deal.

## Sources

- [Angel Investment Criteria](references/angel-investment-criteria.md) — investor question inversion table + scoring rubric
- [LATAM Angel Context](references/latam-context.md) — LATAM angel deal benchmarks
- [shared/frameworks/vc-backable-test.md](../../../../shared/frameworks/vc-backable-test.md) — 5-criterion framework this skill inverts
- [shared/frameworks/editorial-voice.md](../../../../shared/frameworks/editorial-voice.md) — tone standard
- Jason Calacanis "Angel" methodology: https://www.angelinvestor.com/
- AngelList return data: https://www.angellist.com/venture/data
- Naval Ravikant angel notes: https://nav.al/investing
- YC Essential Startup Advice: https://www.ycombinator.com/library/Em-yc-s-essential-startup-advice
- LAVCA 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- Cuantico 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
