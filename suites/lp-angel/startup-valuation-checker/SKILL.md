---
name: startup-valuation-checker
description: >
  Startup valuation reasonableness analysis using multiple methods. ALWAYS invoke
  when a founder needs to check if their valuation ask is defensible, or when an
  investor needs to evaluate if a deal's price is reasonable — applying Damodaran
  revenue multiples, Berkus method, Bill Payne Scorecard, DCF, and LATAM comparable
  transaction data. NOT for building a full financial model (use a spreadsheet). NOT
  for LP-level fund term analysis (use lp-term-sheet-analyzer for that).
categories: ["business", "investing", "due-diligence"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: lp-angel
license: MIT
---

# Startup Valuation Checker

Checks whether a startup's valuation is reasonable using multiple independent methods
and LATAM-specific comparable transaction data. Serves two audiences:

- **Founder:** "Is my valuation ask defensible? What evidence supports it?"
- **Investor:** "Is this deal priced fairly? Am I overpaying for this stage?"

The skill produces the same analysis for both audiences — only the framing of
recommendations differs. The math does not change based on who is asking.

## Step 1: Input Gathering

Ask all seven questions in ONE message. Do not begin analysis until you have answers
(or stated assumptions) for each.

1. **Company name + sector** (e.g., "EduSign Brasil — e-signature SaaS for schools")
2. **Current ARR/MRR or revenue** — or state "pre-revenue" explicitly
3. **Ask valuation (pre-money)** — the number being put on the table
4. **Stage** — pre-revenue / pre-seed / seed / Series A (determines which methods apply)
5. **Comparable company or transaction data** — if available; OK to say "none"
6. **Geographic market** — Brazil, Mexico, Colombia, Chile, Peru, or "pan-LATAM"
7. **Who is asking:** founder checking their ask OR investor checking deal price —
   this determines the framing of Next Steps (not the analysis itself)

If the user does not answer a question, proceed with a stated assumption and flag it
as: `[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/valuation-methods.md](references/valuation-methods.md) for the five
valuation methods. Apply ALL methods that are applicable for the stage:

- **Pre-revenue:** Apply Berkus + Scorecard only. Skip Revenue Multiple and DCF.
- **Pre-seed / Seed:** Apply Revenue Multiple + Comparable Transactions + Scorecard.
  Berkus as sanity check. Skip DCF.
- **Series A+:** Apply Revenue Multiple + Comparable Transactions + DCF (with caveats).
  Note DCF terminal value sensitivity.

**Triangulation rule:**
- 3+ applicable methods agree within 30% → valuation is "IN RANGE"
- Methods diverge >50% from each other → flag as SPECULATIVE (high uncertainty)
- Ask is >2× any single method's implied valuation → flag as OVERPRICED

Do not blend methods into a single weighted average. Show each method independently.
The triangulation is qualitative — the LP or founder must see the spread, not just
a final number.

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions — confirm answers or state assumptions)
2. Identify applicable methods for stage (skip non-applicable methods explicitly)
3. Apply each applicable method — show the calculation and implied pre-money
4. Triangulate — does the ask fall within the methods' range?
5. Pull LATAM comparables — read [references/latam-context.md](references/latam-context.md)
   for benchmark data, identify 2–3 comparable LATAM deals at similar stage/sector
6. Apply LATAM context — read references/latam-context.md for regional benchmarks
7. Produce output per [TEMPLATES.md](TEMPLATES.md) using the appropriate audience framing
8. End with Next Steps framed for the asking audience

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). The output
is a Valuation Analysis containing:

- **Valuation Analysis Table** — method | implied pre-money | calculation basis | notes
- **Triangulation verdict:** IN RANGE / STRETCHED / OVERPRICED with specific logic
- **LATAM Comparable Transactions table** — company | stage | ARR at raise | pre-money | multiple
- **LATAM Context box** — LATAM vs. US benchmark with source annotations
- **Audience-framed recommendation:**
  - Founder: "How to defend your ask" — what evidence strengthens the case, what to improve
  - Investor: "How to negotiate or price the risk" — what to offer, when to walk

**Verdict definitions:**

- **IN RANGE:** Ask falls within the range produced by 3+ applicable methods. Defensible.
- **STRETCHED:** Ask is above the median of applicable methods but below 2× any single method.
  Needs supporting narrative (growth rate, team signal, strategic moat).
- **OVERPRICED:** Ask is >2× one or more methods' implied valuation, OR ask is >1× the
  most generous method with no supporting metrics. Hard to close at this price in LATAM.

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing the
final verdict. Apply LATAM benchmarks throughout.

Key LATAM valuation realities:
- Pre-seed pre-money median: $3–5M LATAM vs. $6–9M US (Carta 2024 / LAVCA 2025)
- Seed pre-money median: $6–10M LATAM vs. $12–18M US (LAVCA 2025 / Carta 2024)
- Series A pre-money median: $15–25M LATAM vs. $30–50M US (LAVCA 2025 / Carta 2024)
- Current US anchors are higher than the ranges above: seed median post-money $24.3M on a $4.1M
  round, Series A $80M on $14.4M (Carta Data Desk, Jul 2026); see references/latam-context.md
  "US refresh". Use them only to show the gap, never as the LATAM target.
- Dilution sanity check: a priced round usually costs 15-25% (US medians: seed ~19-20%, A ~18%,
  Carta 2025). An ask implying under 10% dilution at seed needs exceptional evidence.
- Founders with US accelerator backgrounds (YC, Techstars) often anchor on US valuations.
  LATAM investor reality is the benchmark that closes rounds — not US comparables.

Label every US benchmark `(US-sourced benchmark, Carta 2024)` and every LATAM figure
`(LATAM, LAVCA 2025)` or `(LATAM, Cuantico 2026)`.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — you are a seasoned investor and deal
evaluator who has seen hundreds of valuations justified and dozens of rounds that
failed to close because founders mispriced the round.

Expected tone: "Your $12M pre-seed valuation is 4× the LATAM median. You will kill
this round in a LATAM context unless you have extraordinary traction. US comparables
do not apply here. The investor sitting across from you knows the LAVCA median. Your
YC peer's valuation is not your benchmark — your sector's LATAM Seed cohort is."

## Step 6: Next Steps — Audience-Framed Actions

End EVERY analysis with 3 specific actions. Use the header `## Next Steps`.
Frame actions for who is asking:

**For founders:**
- What evidence to gather to defend the ask
- What specific growth metric milestone would unlock the higher valuation
- Which comparable transactions to cite explicitly in investor conversations

**For investors:**
- What counter-offer to make and at what pre-money
- What conditions or milestones could justify the ask in 3–6 months
- When to walk — specific threshold that makes the deal uninvestable at this price

## Sources

- [Valuation Methods](references/valuation-methods.md) — 5-method reference with LATAM adjustments
- [LATAM Context](references/latam-context.md) — LATAM valuation benchmarks with sources
- [shared/frameworks/latam-benchmarks.md](../../../../shared/frameworks/latam-benchmarks.md) — LATAM VC deal data
- [shared/frameworks/editorial-voice.md](../../../../shared/frameworks/editorial-voice.md) — tone standard
- Aswath Damodaran Valuation Data (NYU): https://pages.stern.nyu.edu/~adamodar/
- Berkus Method: https://berkus.com/the-berkus-method/
- Bill Payne Scorecard: https://billpayne.com/
- Carta State of Private Markets Q1 2024: https://carta.com/blog/state-of-private-markets-q1-2024/
- Carta State of Private Markets Q3 2025: https://carta.com/data/state-of-private-markets-q3-2025-full-report/
- Carta Data Desk, round size and valuation by stage (10 Jul 2026); Carta, "Startup dilution per round is not rising" (2025)
- LAVCA 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- Cuantico 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
