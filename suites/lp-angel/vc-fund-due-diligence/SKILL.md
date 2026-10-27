---
name: vc-fund-due-diligence
description: >
  LP due diligence on a VC fund manager: should I commit to this fund? ALWAYS invoke when
  an LP, family office, DFI or fund of funds evaluates a GP, scoring track record
  (DPI vs TVPI, attribution), portfolio construction, terms vs ILPA and Carta market
  data, team and key-person risk, and LATAM fit, benchmarked against Carta vintage data,
  with an INVEST / WATCH / PASS verdict. Covers emerging and first-time managers.
  Triggers: "should I invest in this fund", "evaluate this GP", "fund DD", "analizá este
  fondo", "¿entro como LP en este fondo?", "due diligence del GP", "me ofrecieron ser LP".
  NOT for a clause-by-clause LPA or side letter review (lp-term-sheet-analyzer), GPs
  evaluating startups (deal-memo-writer), a GP calculating its own fund metrics
  (fund-performance-analyzer), or designing a whole personal venture allocation
  (portfolio-construction-advisor).
categories: ["business", "investing", "due-diligence"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: lp-angel
license: MIT
---

# VC Fund Due Diligence

Evaluates a VC fund and its GP from the LP's chair: "Should I commit capital to this
manager?" Not "Is this a good startup?"

## Step 1: Intake (ONE message)

Ask everything in one message; accept the deck, DDQ and LPA instead of answers. Missing
answer: `[ASSUMPTION: ...]`, never skip silently.

1. **Fund:** name, number (I, II...), vintage, target and current close, legal vehicle, GP location.
2. **Strategy:** stage, sector, geography, target company count, check size, ownership target,
   reserve ratio, follow-on policy.
3. **Team:** partners, how long together, prior funds or attributable angel / operator deals,
   time commitment, who makes decisions.
4. **Track record:** TVPI, DPI, net IRR per prior fund (or per attributable deal for first-time
   managers), realized vs unrealized split, audited or not, data as of what date.
5. **Terms:** fee and step-downs, carry and waterfall, hurdle, GP commit and its funding,
   clawback, key person, no-fault removal, term and extensions, reporting format.
6. **LP base:** anchor (DFI or not), number of LPs, your commitment size.
7. **Your mandate:** why this fund, return target, how it fits your other venture exposure.

## Step 2: Workflow (in order)

1. **Read** [references/due-diligence-criteria.md](references/due-diligence-criteria.md)
   (rubrics, red-flag floors), `references/shared/ilpa-standards.md` (ILPA 3.0 vs Carta market
   terms) and [references/latam-context.md](references/latam-context.md).
2. **Fetch the current benchmark** for the fund's vintage: the latest Carta VC Fund Performance
   report (carta.com/data). If you cannot fetch it, use these anchors and say so: 75th-percentile
   net IRR in the mid-teens for recent vintages (2017: 15.8%; 2024: 19.1%); median DPI 0.37x for the 2017 vintage
   (Carta Q2 2026). These are US funds; no public LATAM vintage dataset exists at this depth.
3. **Rebuild the track record:** DPI first, then TVPI. Ask what share of TVPI sits in the top
   one or two companies and whether those marks come from a priced round in the last 12 months.
4. **Score the 5 dimensions** 1-5: Track Record, Portfolio Construction, Terms, Team, LATAM Fit.
   Apply the red-flag floors.
5. **Emerging-manager lens:** for Fund I-II, score attributable deals, not fund history. Small
   funds can outperform: 2019 vintage 90th-percentile TVPI 4.91x for $1-10M funds vs 1.92x for
   $100M+ (Carta, The Emerging Manager Paradox, 6 Oct 2026). The dispersion cuts both ways.
6. **AI-era check:** how the GP underwrites AI-native companies (gross margin after inference,
   model-provider dependency, defensibility), and whether marks on AI companies come from
   priced rounds or from hype-led notes.
7. **Terms table:** each term vs ILPA 3.0 and vs Carta 2025 market. For a full LPA review, hand
   off to lp-term-sheet-analyzer.
8. **Apply the verdict rules**, then write the report and 3-5 Next Steps for the next 30 days.

## Step 3: Verdict Rules (first match wins)

1. Any dimension at 1, or Track Record, Team or Portfolio Construction at 2 → **PASS**.
2. Terms at 2 (fixable by negotiation) → **WATCH**, conditional on named fixes; re-score Terms
   after the GP answers.
3. Total 19+/25 with no unresolved red flag → **INVEST**.
4. Total 14-18 → **WATCH** with named conditions and a decision date (for example final close).
5. Under 14 → **PASS**.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's fund. See
[TEMPLATES.md](TEMPLATES.md) for the filled example.

Sections: BLUF (verdict + the deciding factor), 5-dimension scorecard, track record rebuild
(DPI, TVPI, concentration), terms table (term | GP proposes | ILPA 3.0 | Carta 2025 market |
verdict), red flags, LATAM context box, recommendation with conditions, Next Steps, Sources.

If the user wants an IC deck or PDF, apply `references/shared/deck-design-rules.md`.

## Step 5: LATAM Context

Annotate per `references/shared/latam-benchmarks.md`. Key facts:
- 65 LATAM-dedicated funds closed in 2024 (LAVCA 2025 Industry Data); most are emerging managers,
  often anchored by DFIs such as IDB Lab, IDB Invest or CAF *(directional)*. A DFI anchor means
  institutional diligence happened; it does not replace yours.
- Exits: US$4.9B across 63 VC-backed exits in 2025, M&A 67%; 62.7% of GPs call the exit market
  unfavorable (Cuantico 2026). Weight DPI heavily.
- Capital: Brazil ~49% and Mexico ~24% of 2025 LATAM VC dollars, ~73% together (Cuantico 2026 country table). A "LATAM" fund
  with neither needs a specific exit thesis.
- Graduation: 12% of LATAM seed startups raise a Series A within three years (LAVCA 2025). A seed
  fund's reserve plan must assume most companies will not.
- Do not apply a fixed "LATAM discount" to Carta numbers: no dataset supports one. Compare
  against Carta and explain the structural differences (exits, FX, follow-on depth).

## Tone & Editorial Voice

Follow `references/shared/editorial-voice.md`: seasoned LP analyst, numbers first, no em
dashes, no buzzwords, no emojis; in Spanish "el AI".

Expected tone: "The GP sells 1.8x TVPI. The number that matters is 0.9x DPI, and 60% of the TVPI
is one company marked on a 2022 round. Show me a priced round from the last 12 months or haircut
that mark."

## Sources

- [Due Diligence Criteria](references/due-diligence-criteria.md), [LATAM Fund Context](references/latam-context.md)
- [ilpa-standards.md](references/shared/ilpa-standards.md), [latam-benchmarks.md](references/shared/latam-benchmarks.md), [editorial-voice.md](references/shared/editorial-voice.md)
- Carta VC Fund Performance Q2 2026 and The Emerging Manager Paradox (6 Oct 2026): https://carta.com/data/
- Carta Fund Economics Report 2025 (4 Dec 2025): https://carta.com/data/fund-economics-report-2025-full-article/
- ILPA Principles 3.0 (2019) and Reporting Template (2025): https://ilpa.org/
- LAVCA Startup Ecosystem Insights 2025 and 2025 Industry Data: https://www.lavca.org/
- Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
