---
name: thesis-builder
description: >
  For VC FUND OPERATORS building or refining their investment thesis.
  ALWAYS invoke when a GP or fund manager needs to articulate an
  investment thesis, define pattern-matching criteria, build a
  portfolio construction model, or analyze their anti-portfolio.
  NOT for writing investment committee memos on specific deals
  (use deal-memo-writer for that).
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: vc-operators
license: MIT
---

# Thesis Builder

Produces a structured 7-section investment thesis document from the GP/partner perspective.
Output is a coherent, falsifiable thesis arriving at a Core Hypothesis that distinguishes
the fund from every other generalist LATAM VC — or explains why a sector-focused approach
wins. LATAM fund context is applied via references/latam-fund-context.md throughout.

## Step 1: Input Gathering

Ask ALL seven questions in ONE message. Do not begin writing the thesis until you have
answers (or stated assumptions) for each.

1. **Fund name, vintage, size, and LP base type** (institutional / family office / mixed / DFI)
2. **Target sectors:** What industries are you focusing on? Why?
3. **Target geography:** LATAM only? Specific countries? Cross-border?
4. **Target stage:** Pre-seed / Seed / Series A / multi-stage?
5. **Check size range:** Fund size implies check size — what is your expected initial check range?
6. **Core hypothesis prompt:** "What do you believe about the next 5–10 years that most
   investors do not believe yet?" (This is the central thesis question. Do not skip it.)
7. **Anti-portfolio:** What types of deals do you systematically pass on and why?

If any question is not answered, proceed with a stated assumption:
`[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/thesis-framework.md](references/thesis-framework.md) BEFORE writing the
thesis. Apply the following frameworks in order:

- **USV Thesis Structure** — Network layers: Networks → Markets → Infrastructure → Applications
  Source: https://www.usv.com/writing/2016/09/usv-thesis/
- **a16z Thesis Writing** — Thesis as a contrarian, falsifiable belief about how the world works
  Source: https://a16z.com/our-investment-thesis/
- **Notation Capital Emerging Manager Thesis** — How emerging managers differentiate from
  incumbent funds through access, insight, or geographic edge
  Source: https://notation.vc/
- **Market Sizing:** Read @shared/frameworks/vc-backable-test.md for Gurley market sizing
  methodology — TAM must be bottom-up credible for the thesis category

For LATAM theses: Read [references/latam-fund-context.md](references/latam-fund-context.md)
BEFORE finalizing the Market Thesis and Market Sizing sections.

## Step 3: Workflow

Execute in this exact order — produce all 7 sections:

1. **Core Hypothesis** — 1 paragraph: What do you believe that most investors do not
   believe yet? This must be FALSIFIABLE — "Fintech is big in LATAM" is a sector
   observation, NOT a thesis. A thesis is: "LATAM SMEs have been systematically
   underserved by formal banking because the cost-to-serve exceeds bank revenue
   potential. New infrastructure (PIX, open banking mandates) creates the first layer
   where fintech-native players can serve SMEs profitably at scale." Write the actual
   belief — even if it makes the GP sound wrong if the thesis fails.

2. **Market Thesis** — Structural shifts enabling the opportunity:
   - Technology shifts (new infrastructure, falling compute costs, platform migrations)
   - Regulatory shifts (new mandates, deregulation, compliance tailwinds/headwinds)
   - Demographic shifts (urbanization, workforce changes, consumer behavior inflections)
   - Infrastructure gaps (banking penetration, logistics density, healthcare access)
   For LATAM: Pull specific data from references/latam-fund-context.md.

3. **Pattern Matching** — What does a fundable company in this thesis look like?
   - Founder profile (prior operator experience, market-specific knowledge)
   - Stage and metrics at first check (MRR range, growth rate, customer count)
   - Business model requirements (SaaS preferred? Marketplace? Transactional?)
   - Must-have structural elements (network effects, switching costs, regulatory moat)
   Be specific enough that a founder could read this and know immediately whether to
   apply. Vague criteria ("strong team with relevant experience") add no signal.

4. **Portfolio Construction** — Show as a table:
   | Parameter | Target |
   Include: Fund size, initial check range, reserve ratio, target portfolio count,
   target ownership at initial investment, and follow-on strategy. Apply the formulas
   in references/thesis-framework.md (reserve ratio, ownership targeting).

5. **Anti-Portfolio Analysis** — Types of deals you systematically PASS on.
   Each exclusion requires an explicit reason: "We pass on [deal type] because [specific
   reason tied to fund strategy]." Vague exclusions weaken the thesis. Examples of
   strong anti-portfolio framing: "We pass on pan-LATAM launch strategies at Seed —
   execution risk exceeds our risk tolerance and most teams that spread across 5 countries
   in Year 1 fail to achieve leadership in any of them." At minimum 3 explicit exclusions.

6. **Thesis Evolution** — How has this thesis changed based on what you've seen in the
   market? What would cause it to change AGAIN? This section demonstrates that the GP
   is actively updating beliefs vs. frozen at the time of fundraising. For new funds:
   describe how the thesis evolved from the GP's prior operating or investing experience.

7. **Market Sizing** — TAM/SAM/SOM for the thesis category using bottom-up methodology
   from @shared/frameworks/vc-backable-test.md. For LATAM-focused funds: apply LATAM
   sizing specifically — do not use US market size as a proxy. Pull Cuantico 2026 and
   LAVCA 2025 data from references/latam-fund-context.md.

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). The 7-section
thesis document must appear in the order listed in Step 3. Every section requires
substantive analysis — no section may be fewer than 3 sentences. Do not merge sections
or reorder them.

## Step 5: LATAM Fund Context

Read [references/latam-fund-context.md](references/latam-fund-context.md) BEFORE
finalizing the thesis for any LATAM-focused fund.

**Sector concentration risk:**
Fintech is 61% of LATAM VC (Cuantico 2026). A fintech-only thesis must explain why the
GP has a distinct advantage over the 40+ LATAM-focused fintech funds already active.
SaaS is 13% of LATAM VC despite being the dominant US category — an underallocation
thesis has structural support but requires explaining why the gap will close now.

**Geography concentration:**
Brazil + Mexico = 78.5% of LATAM capital. A pan-LATAM thesis must articulate why
geographic diversification creates alpha vs. concentration risk. A country-specific
thesis (Brazil-only, Mexico-only) must explain what the fund loses by excluding the
second-largest market.

**LP base implications:**
- DFI LPs (IDB Invest, CAF, OPIC/DFC): Require development additionality thesis —
  include development impact metrics alongside financial return thesis.
- Family office LPs: Less institutional governance, longer relationship-based process.
  Thesis must speak to alignment with family office wealth preservation AND growth.
- Institutional LPs: Standard ILPA reporting, portfolio company governance expectations.
  Thesis must demonstrate a systematic approach, not a deal-by-deal opportunistic strategy.

**Label all benchmarks:**
- US benchmarks: `(US-sourced benchmark, YC / a16z)`
- LATAM benchmarks: `(LATAM, LAVCA 2025 / Cuantico 2026)`

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md. GP voice — this is how a fund GP convinces
institutional LPs to commit $5M or more. Every sentence must carry weight.

The Core Hypothesis must be distinctive. Compare:

WRONG: "Fintech is growing rapidly in LATAM and represents a large market opportunity."
— This is a sector observation shared by every LATAM VC. No LP will invest based on this.

RIGHT: "The next 5 credit unicorns in LATAM will be fintech-native SME credit platforms
because PIX and open banking mandates for the first time create the infrastructure to
underwrite SMEs using transaction data at a cost structure that banks cannot match.
Traditional banks have a structural cost-to-serve problem — they require $500+ in annual
profit per SME customer to justify a credit line, but 85% of LATAM SMEs generate less
than $200 in annual profit for a bank at current penetration. This will not resolve itself
— it requires a completely different architecture."

The difference: the RIGHT version has a specific mechanism, a falsifiable claim,
and a reason why incumbents cannot solve it.

## Step 6: Thesis Stress Test

After generating the thesis draft, produce a Thesis Stress Test section:

1. **Strongest challenge:** "The strongest challenge to this thesis is [X]."
2. **Response:** "Our response is [Y]."
3. **LP due diligence push:** "LPs will push hardest on [Z] — prepare: [specific answer]."

This forces the GP to confront the thesis's weakest point before an LP does.

## Sources

- USV Thesis: https://www.usv.com/writing/2016/09/usv-thesis/
- a16z Thesis: https://a16z.com/our-investment-thesis/
- Notation Capital: https://notation.vc/
- Lux Capital: https://luxcapital.com/
- @shared/frameworks/vc-backable-test.md — market sizing methodology
- @shared/frameworks/editorial-voice.md — tone standard
- [references/thesis-framework.md](references/thesis-framework.md) — USV/a16z/Notation structure,
  portfolio construction formulas, anti-portfolio analysis framework
- [references/latam-fund-context.md](references/latam-fund-context.md) — LATAM structural
  shifts, DFI LP requirements, sector and geography data
- Cuantico 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- LAVCA 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
