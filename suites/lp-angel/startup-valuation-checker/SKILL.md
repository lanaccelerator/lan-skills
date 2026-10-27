---
name: startup-valuation-checker
description: >
  Checks whether one startup round's price is defensible, by method: revenue multiple,
  comparable transactions, Berkus, Bill Payne Scorecard and DCF, with LATAM benchmarks
  and an IN RANGE / STRETCHED / OVERPRICED verdict. ALWAYS invoke when an investor asks
  "is this valuation reasonable?", "am I overpaying?", "¿está cara esta ronda?", "¿es
  razonable esta valuación?", "qué contraoferta hago", or a founder wants a quick
  sanity check of an ask already on the table. NOT for a founder building the ask from
  market data before the round (startup-valuation-benchmark), the full invest or pass
  decision on a deal (angel-investment-analyzer), building a financial model, or fund
  LPA terms (lp-term-sheet-analyzer).
categories: ["business", "investing", "due-diligence"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: lp-angel
license: MIT
---

# Startup Valuation Checker

Checks whether a startup's valuation is reasonable using multiple independent methods
and LATAM-specific comparable transaction data. Serves two audiences:

- **Founder:** "Is my valuation ask defensible? What evidence supports it?"
- **Investor:** "Is this deal priced fairly? Am I overpaying for this stage?"

The skill produces the same analysis for both audiences; only the framing of
recommendations differs. The math does not change based on who is asking.

Founders who want to benchmark their round against market data first (stage medians, growth,
traction, public multiples) and build the ask: run `/startup-valuation-benchmark`.

## Step 1: Input Gathering

Ask all seven questions in ONE message. Do not begin analysis until you have answers
(or stated assumptions) for each.

1. **Company name + sector** (e.g., "EduSign Brasil, e-signature SaaS for schools")
2. **Current ARR/MRR or revenue**, or state "pre-revenue" explicitly
3. **Ask valuation (pre-money)**: the number being put on the table
4. **Stage**: pre-revenue / pre-seed / seed / Series A (determines which methods apply)
5. **Comparable company or transaction data**, if available; OK to say "none"
6. **Geographic market**: Brazil, Mexico, Colombia, Chile, Peru, or "pan-LATAM"
7. **Who is asking:** founder checking their ask OR investor checking deal price;
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
- Highest method divided by lowest method above 2x → add the flag SPECULATIVE (high
  uncertainty) to whatever verdict applies.
- Do not blend methods into a single weighted average. Show each method independently:
  the reader must see the spread, not just a final number.

**AI-native companies:** inference cost sits in COGS. Apply revenue multiples to gross
profit, or haircut the multiple when gross margin is well below SaaS norms (Bessemer State
of AI 2025: fast-scaling AI "Supernovas" ~25% gross margin, steadier "Shooting Stars" ~60%).
Separate pilot and usage revenue from contracted recurring revenue before multiplying.

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs in ONE message (confirm answers or state assumptions)
2. Identify applicable methods for stage (skip non-applicable methods explicitly)
3. Apply each applicable method: show the calculation and implied pre-money
4. Triangulate: where does the ask fall within the methods' range?
5. Pull 2-3 LATAM comparables (same stage and sector, last 18 months), each with a source
   link; if none can be verified, say so instead of estimating. Context in
   [references/latam-context.md](references/latam-context.md)
6. Apply LATAM context and the verdict rules in Step 4
7. Produce output per [TEMPLATES.md](TEMPLATES.md) using the appropriate audience framing
8. End with Next Steps framed for the asking audience

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns,
or field order. Fill every [bracketed placeholder] with real analysis from the user's
startup. See [TEMPLATES.md](TEMPLATES.md). The output is a Valuation Analysis containing:

- **Valuation Analysis Table**: method | implied pre-money | calculation basis | notes
- **Triangulation verdict:** IN RANGE / STRETCHED / OVERPRICED with specific logic
- **LATAM Comparable Transactions table** (with source links): company | stage | ARR at raise | pre-money | multiple
- **LATAM Context box**: LATAM vs. US benchmark with source annotations
- **Audience-framed recommendation:**
  - Founder: "How to defend your ask": what evidence strengthens the case, what to improve
  - Investor: "How to negotiate or price the risk": what to offer, when to walk

**Verdict rules (first match wins), using all methods that apply to the stage:**

1. **OVERPRICED:** ask is more than 2x the median of the applicable methods, OR above the
   highest method with no growth or team evidence that the methods missed.
2. **STRETCHED:** ask is above the median of the applicable methods. Needs a supporting
   narrative (growth rate, team signal, strategic moat) and evidence for it.
3. **IN RANGE:** ask is at or below the median of the applicable methods. Defensible.

If the user wants slides or a PDF of the analysis, apply `references/shared/deck-design-rules.md`.

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing the
final verdict. Apply LATAM benchmarks throughout.

Key LATAM valuation realities:
- US anchors: seed median post-money $24.3M on a $4.1M round, Series A $80M on $14.4M (Carta
  Data Desk, Jul 2026); pre-money medians 2025 seed $16M, A $49.3M (Carta Q3 2025). Use them
  only to show the gap, never as the LATAM target.
- The gap: US seed pre-money averaged 156% above LATAM in 2015-2025, so LATAM seed pricing sits
  around 40% of the US level (Valoriza via Diario Financiero, 2 Apr 2025).
- LATAM stage ranges in references/latam-context.md are LAN practitioner ranges: label them
  `(LATAM, directional)`.
- Dilution sanity check: a priced round usually costs 15-25% (US medians: seed ~19-20%, A ~18%,
  Carta 2025). An ask implying under 10% dilution at seed needs exceptional evidence.
- Founders with US accelerator backgrounds (YC, Techstars) often anchor on US valuations.
  LATAM investor reality is the benchmark that closes rounds, not US comparables.

Label every US benchmark `(US-sourced benchmark, Carta <date>)` and every LATAM figure with
its source and date, or `(LATAM, directional)`. See `references/shared/latam-benchmarks.md`.

## Tone & Editorial Voice

Follow `references/shared/editorial-voice.md` (no em dashes, no buzzwords, no emojis; in
Spanish "el AI"). You are a seasoned investor and deal evaluator who has seen hundreds of valuations justified and dozens of rounds that
failed to close because founders mispriced the round.

Expected tone: "Your $12M pre-seed cap is more than double the LAN pre-seed range. You will
kill this round in LATAM unless you have extraordinary traction. US comparables do not apply
here. Your YC peer's valuation is not your benchmark; your sector's LATAM seed cohort is."

## Step 6: Next Steps (audience-framed)

End EVERY analysis with 3 specific actions. Use the header `## Next Steps`.
Frame actions for who is asking:

**For founders:**
- What evidence to gather to defend the ask
- What specific growth metric milestone would unlock the higher valuation
- Which comparable transactions to cite explicitly in investor conversations

**For investors:**
- What counter-offer to make and at what pre-money
- What conditions or milestones could justify the ask in 3–6 months
- When to walk: the specific threshold that makes the deal uninvestable at this price

## Sources

- [Valuation Methods](references/valuation-methods.md): 5-method reference with LATAM adjustments
- [LATAM Context](references/latam-context.md): LATAM valuation benchmarks with sources
- [latam-benchmarks.md](references/shared/latam-benchmarks.md): LATAM VC deal data
- [editorial-voice.md](references/shared/editorial-voice.md): tone standard
- Valoriza via Diario Financiero (2 Apr 2025): https://www.df.cl/df-lab/innovacion-y-startups/informe-revela-que-las-startups-de-eeuu-valen-mas-antes-de-una-ronda-de
- Bessemer, The State of AI 2025: https://www.bvp.com/atlas/the-state-of-ai-2025
- Aswath Damodaran Valuation Data (NYU): https://pages.stern.nyu.edu/~adamodar/
- Berkus Method: https://berkus.com/the-berkus-method/
- Bill Payne Scorecard: https://billpayne.com/
- Carta State of Private Markets Q3 2025: https://carta.com/data/state-of-private-markets-q3-2025-full-report/
- Carta Data Desk, round size and valuation by stage (10 Jul 2026); Carta, "Startup dilution per round is not rising" (2025)
- LAVCA 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- Cuantico 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
