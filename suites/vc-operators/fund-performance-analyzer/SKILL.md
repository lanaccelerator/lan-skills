---
name: fund-performance-analyzer
description: >
  For VC FUND OPERATORS calculating and benchmarking fund performance.
  ALWAYS invoke when an analyst or GP needs to calculate TVPI, DPI,
  IRR, MOIC, or PME, benchmark fund performance against vintage peers,
  or analyze attribution across portfolio positions. NOT for generating
  LP quarterly reports (use portfolio-reporter for that).
categories: ["business", "venture-capital", "fund-management"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: vc-operators
license: MIT
---

# Fund Performance Analyzer

Calculates and benchmarks fund-level performance metrics (TVPI, DPI, RVPI, IRR, MOIC, PME)
from an analyst/associate perspective. Benchmarks against Carta Q1-2026 vintage data —
the only skill in the suite using real published fund benchmarks. LATAM funds are compared
to US Carta data with explicit discount context — not presented as equivalent.

## Step 1: Input Gathering

Ask ALL seven questions in ONE message. Do not begin calculating until you have answers
(or stated assumptions) for each.

1. **Fund name and vintage year** — required; all benchmarks are vintage-specific
2. **Capital called to date ($)** and **total committed capital ($)**
3. **Total distributions to LPs to date ($)**
4. **Current portfolio fair market value (FMV)** — sum of all portfolio company valuations
5. **Number of portfolio companies** — total / active / exited
6. **Date of analysis** — for IRR calculation date basis (use most recent quarter-end)
7. **Public market benchmark for PME** — S&P 500 / Russell 2000 / MSCI EM / "skip PME"

If any question is not answered, proceed with a stated assumption: `[ASSUMPTION: ...]`.
Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/fund-benchmarks.md](references/fund-benchmarks.md) BEFORE calculating.
Apply:

- **Carta Fund Performance Report Q1 2026** (PRIMARY benchmark source — real vintage data)
  US-domiciled funds only. See references/latam-fund-context.md for LATAM context.
  Source: via references/fund-benchmarks.md (extracted exact figures)
- **ILPA metric definitions** — Read references/shared/ilpa-standards.md for TVPI, DPI,
  RVPI, IRR, MOIC calculation methodology and interpretation by fund life stage.
- **Cambridge Associates VC benchmark methodology**
  Source: https://www.cambridgeassociates.com/insight/venture-capital-benchmark-commentary/
- **Kauffman Foundation VC returns analysis**
  Source: https://www.kauffman.org/wp-content/uploads/2019/12/investment_myths_lies_and_truth_about_vc_kauffman_fellowship.pdf

## Step 3: Workflow

Execute in this exact order:

1. **Calculate all 6 metrics** using inputs provided:
   - TVPI = (Total Distributions + Current FMV) ÷ Capital Called
   - DPI = Total Distributions ÷ Capital Called
   - RVPI = Current FMV ÷ Capital Called [equivalently: TVPI − DPI]
   - MOIC = (Realized + Unrealized Value) ÷ Invested Capital [≈ TVPI when fully called]
   - Net IRR = IRR of cash flows (capital calls as negative, distributions + terminal FMV
     as positive terminal value at analysis date). Use quarterly cash flow dates.
   - PME = If public market selected: compare fund net IRR to equivalent buy-and-hold
     index return since vintage year. Skip if "skip PME" was selected.

2. **Look up vintage benchmarks** from references/fund-benchmarks.md using fund's vintage
   year. Extract median, 75th percentile, 90th percentile for IRR and TVPI.

3. **Position fund at percentile** — state explicitly:
   - "Below median" / "Median range (40th–60th percentile)" / "75th percentile range" /
     "Top decile" — do not say "performing well" without citing the specific percentile.

4. **Attribution analysis** — which 3 portfolio companies drive the most TVPI? Show:
   - Position TVPI contribution: (Company FMV + Realized) ÷ Capital Called for that position
   - Concentration risk: what % of total TVPI comes from top 3 positions?
   - DPI vs RVPI split: how much of TVPI is realized (DPI) vs unrealized (RVPI)?

5. **Reserve analysis** — is remaining dry powder adequate for planned follow-ons?
   - How much dry powder remains vs. reserve commitment to current portfolio?
   - Which positions are under-reserved based on stage and likely follow-on?

6. **Apply LATAM fund context** from references/latam-fund-context.md — include LATAM
   discount note and proper benchmark labeling.

7. **Output using TEMPLATES.md structure** — 7 sections in order.

## Step 4: Output Format

ALWAYS use the exact structure in [TEMPLATES.md](TEMPLATES.md):
1. Fund metrics calculation table (6 metrics with inputs and results)
2. Vintage benchmark comparison table (fund vs Carta percentiles for vintage year)
3. Percentile placement summary (explicit statement — no hedging)
4. Attribution analysis (top 3 positions by TVPI contribution)
5. DPI vs RVPI split with interpretation
6. Reserve analysis
7. LATAM Fund Context box

## Step 5: LATAM Fund Context

Read [references/latam-fund-context.md](references/latam-fund-context.md) BEFORE finalizing.

**CRITICAL:** Carta benchmarks are US-domiciled funds ONLY. LATAM fund performance is NOT
directly comparable without adjustment.

**Label ALL Carta figures:** "(US-sourced benchmark, Carta Q1 2026)"

**LATAM performance discount:** Typically 30–50% below US equivalents at same vintage due to:
- Longer exit timelines (LATAM M&A typically 18–36 months longer than US)
- Thinner secondary market (fewer LATAM fund buyers)
- Fewer Series A+ funds in LATAM to drive portfolio company markups
- FX volatility creating structural margin compression in USD-cost portfolios

**Standard LATAM annotation** (required in every analysis referencing Carta):
"No equivalent LATAM fund performance database exists at Carta scale. LAVCA tracks headline
investment data; Preqin has limited LATAM coverage. LATAM performance typically 30–50% below
US equivalents at same vintage."

## Tone & Editorial Voice

See references/shared/editorial-voice.md. Analyst voice — precise, no rounding that changes
interpretation.

- If IRR is 4.2%, say 4.2% — not "mid-single digits"
- If below median, say "below median (7th percentile for 2021 vintage at Carta)" — not
  "below benchmark expectations"
- If top decile, say "top decile for 2019 vintage (>3.01× TVPI threshold)" — not "strong"
- Precision is the standard — not approximation or spin

## Step 6: Next Steps

Focus on actionable analysis conclusions:
- Reserve allocation decisions: which positions warrant additional capital?
- LP communication messaging: what is the honest benchmarking story?
- Portfolio triage based on attribution: which positions are driving vs dragging TVPI?
- PME context: is the fund beating or lagging public markets?

Format as numbered action list, specific to the fund's actual situation.

## Sources

- Carta Q1 2026: [references/fund-benchmarks.md](references/fund-benchmarks.md)
- Cambridge Associates: https://www.cambridgeassociates.com/insight/venture-capital-benchmark-commentary/
- Kauffman Foundation: https://www.kauffman.org/wp-content/uploads/2019/12/investment_myths_lies_and_truth_about_vc_kauffman_fellowship.pdf
- references/shared/ilpa-standards.md — TVPI, DPI, RVPI, IRR, MOIC definitions
- [references/latam-fund-context.md](references/latam-fund-context.md) — LATAM fund performance context
- LAVCA: https://www.lavca.org
