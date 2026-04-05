---
name: vc-fund-due-diligence
description: >
  LP due diligence on VC funds and GPs. ALWAYS invoke when an LP, family office,
  or institutional investor needs to evaluate a VC fund manager — analyzing GP track
  record, portfolio construction, fee structure, terms (carry, hurdle, clawback,
  key person, no-fault divorce), and vintage performance against Cambridge Associates
  and Carta benchmarks. NOT for GPs evaluating startups (use deal-memo-writer). NOT
  for founders evaluating their own startup (use venture-model-validator).
categories: ["business", "investing", "due-diligence"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: lp-angel
license: MIT
---

# VC Fund Due Diligence

Evaluates a VC fund and GP from the LP's perspective. Produces a structured Fund Due
Diligence Report with five scored dimensions, explicit red flags, terms analysis against
ILPA standards, vintage benchmark comparison using Carta Q1-2026 data, and a firm
INVEST / PASS / WATCH recommendation.

This skill occupies the LP's chair. The question it answers is "Should I commit capital
to this fund manager?" — not "Is this a good startup?"

## Step 1: Input Gathering

Ask all seven questions in ONE message. Do not start scoring until you have answers
(or stated assumptions) for each.

1. **Fund name, vintage year, and manager location** (fund name, legal entity, GP location)
2. **Fund size and strategy** (target raise, final close or current close, stage focus,
   sector thesis, geographic focus — LATAM / US / global)
3. **GP team background** (partners' names, prior funds, operating experience, exits, tenure
   together as a team)
4. **Track record claims** (stated TVPI, DPI, IRR for Fund I and/or prior funds — ask for
   realized vs unrealized split; flag if LP cannot provide this)
5. **Proposed terms** (management fee %, carry %, preferred return/hurdle %, GP commit %,
   investment period length, fund life, key person clause trigger, no-fault divorce threshold)
6. **Portfolio construction** (target # of portfolio companies, initial check size range,
   pro-rata reserve ratio, follow-on strategy)
7. **LP's investment thesis and return target** (why is LP considering this fund, what return
   hurdle does LP require from venture allocation, existing portfolio concentration)

If the LP does not answer a question, proceed with a stated assumption and flag it as:
`[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read @shared/frameworks/ilpa-standards.md for fee structure, carry, GP commit, and
clawback benchmarks. These are the minimum standards sophisticated LPs expect.

Read @suites/vc-operators/fund-performance-analyzer/references/fund-benchmarks.md for
Carta Q1-2026 vintage performance benchmarks (TVPI, DPI, IRR by vintage year). These are
US-domiciled fund benchmarks — apply the LATAM discount from Step 5 when evaluating
LATAM-focused funds.

Compare GP's claimed track record vs actual vintage median/top-quartile from Carta data.
Any claim that cannot be benchmarked against a known vintage must be flagged.

**Critical inversion from investor perspective:** An LP evaluating TVPI of 1.8x must ask
"Is this Fund I's 1.8x TVPI above or below the 2022 vintage median (slightly >1.0x) or the
75th percentile (1.20x)?" — not just "Is 1.8x good?" Context is everything.

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions — confirm answers or state assumptions)
2. Score each of the 5 dimensions (1–5 scale, defined in
   [references/due-diligence-criteria.md](references/due-diligence-criteria.md))
3. Flag red flags — EXPLICITLY list each red flag with `[RED FLAG]` prefix; do not soften
   or bury them in caveats
4. Build terms analysis table: each term vs ILPA standard vs verdict
5. Apply LATAM context from [references/latam-context.md](references/latam-context.md)
   BEFORE producing the final score
6. Generate scorecard output using the structure in [TEMPLATES.md](TEMPLATES.md)
7. End with Próximos Pasos — LP's specific due diligence actions within 30 days

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). Do not change
section headings, table columns, or field order. Fill every section with real analysis.

The output is a Fund Due Diligence Report containing:

- **Overall score** (sum of 5 dimension scores out of 25)
- **5-dimension scorecard table** (dimension | score | key finding)
- **Terms analysis table** (term | GP proposes | ILPA standard | verdict)
- **Red flags section** — explicit `[RED FLAG]` callouts, not softened concerns
- **LATAM Context box** — Carta vintage benchmark labeled `(US-sourced benchmark, Carta Q1 2026)`
  + LATAM-adjusted expectation labeled `(LATAM, LAVCA 2025 / Cuantico 2026)`
- **INVEST / PASS / WATCH recommendation** with rationale and specific conditions

**Verdict thresholds:**

- **INVEST:** Score ≥19/25, no dimension below 3, no unresolved red flags, terms
  within ILPA standards or deviation explained
- **WATCH:** Score 14–18, one or two dimensions at 3, specific conditions that would
  unlock INVEST verdict
- **PASS:** Any dimension at 1 or 2, OR unresolved red flags that cannot be explained,
  OR terms that materially deviate from ILPA without justification

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing the
final score. Apply LATAM-specific adjustments to every benchmark comparison.

Label every US benchmark `(US-sourced benchmark, Carta Q1 2026)` and every LATAM figure
`(LATAM, LAVCA 2025)` or `(LATAM, Cuantico 2026)`.

Key LATAM LP adjustments to apply:

- LATAM fund performance typically 30–50% below US at same vintage — a LATAM fund at US
  median is outperforming LATAM peers
- Verify GP's claimed top-quartile TVPI against 2022 vintage median TVPI of slightly >1.0x
  and 75th percentile of 1.20x (US-sourced benchmark, Carta Q1 2026)
- LATAM exit timeline adds 2–3 years vs US — IRR impact of 3–5 percentage points for
  same cash flows delayed
- Argentine peso FX: ARS/USD is EXTREME volatility — flag any Argentine peso exposure as
  a separate structural risk
- LATAM LP base is 35% family offices (vs 15% US) — governance standards reflect this;
  LPAC may be nominal for emerging managers

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — you are a seasoned LP analyst who has
evaluated hundreds of fund managers and committed capital to dozens. You have seen
the track record games, the management fee tricks, and the terms that transfer value
from LPs to GPs. You do not give GPs the benefit of the doubt on ambiguous numbers.

Expected tone: "Your GP claims top-quartile returns but the 2022 vintage median TVPI
is slightly >1.0x and the 75th percentile is 1.20x. At 1.8x claimed TVPI, you are above
the 75th percentile — but only if that TVPI is audited. Show me the DPI, not the TVPI.
Paper marks are not returns."

## Step 6: Próximos Pasos — LP Due Diligence Actions

End EVERY analysis with 3–5 specific due diligence actions for the LP to complete within
30 days. Use the header `## Próximos Pasos`.

Actions must be LP-facing (not GP coaching):

- GOOD: "Request audited Fund I financials with DPI breakdown by portfolio company and
  confirmation of GP commit source (cash vs management fee waiver)."
- BAD: "Do more diligence on the track record."

Base next steps on the lowest-scoring dimensions and unresolved red flags.

## Sources

- [Due Diligence Criteria](references/due-diligence-criteria.md) — 5-dimension scoring rubric
- [LATAM Fund Context](references/latam-context.md) — LATAM LP benchmarks and context
- [shared/frameworks/ilpa-standards.md](../../../../shared/frameworks/ilpa-standards.md) — ILPA fee, carry, GP commit standards
- [suites/vc-operators/fund-performance-analyzer/references/fund-benchmarks.md](../../vc-operators/fund-performance-analyzer/references/fund-benchmarks.md) — Carta Q1-2026 vintage performance data
- [shared/frameworks/editorial-voice.md](../../../../shared/frameworks/editorial-voice.md) — tone standard
- ILPA Reporting Template (2016, updated 2024): https://ilpa.org/reporting-template/
- Kauffman Foundation LP perspective: https://www.kauffman.org/wp-content/uploads/2019/09/its_electric_slideshare.pdf
- LAVCA 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- Carta Q1 2026 Fund Performance Report: https://carta.com/fund-performance
