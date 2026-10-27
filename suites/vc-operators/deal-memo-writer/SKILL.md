---
name: deal-memo-writer
description: >
  For VC FUND OPERATORS writing investment committee memos. ALWAYS
  invoke when a GP or analyst needs to write an IC memo, evaluate a
  deal for committee, or document an investment recommendation with
  market analysis, team assessment, risk register, and invest/pass
  recommendation. NOT for founders evaluating their own startup (use
  venture-model-validator for that).
categories: ["business", "venture-capital", "fund-management"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: vc-operators
license: MIT
---

# Deal Memo Writer

Produces a structured IC investment committee memo from the GP/partner perspective.
Output is a 9-section memo arriving at a clear INVEST / PASS / DEFERRED recommendation,
with LATAM fund context applied when the deal is in a LATAM market.

## Step 1: Input Gathering

Ask ALL eight questions in ONE message. Do not begin writing the memo until you have
answers (or stated assumptions) for each.

1. **Company name, stage, and sector** (e.g., "PayGo México, Seed, B2B fintech")
2. **Current metrics snapshot** — ARR/MRR, growth rate, key unit economics if available;
   enter "pre-revenue" if applicable
3. **Funding ask** — amount, pre-money valuation, proposed terms; or "no terms yet"
4. **Investment thesis fit** — How does this deal fit the fund's stated thesis?
5. **Team background** — Founders' names, prior companies, relevant experience
6. **Competitive context** — Who else is doing this? What is the structural moat?
7. **Key risk(s)** — What is the GP/analyst most concerned about?
8. **Fund context** — Fund name and stage (investment period vs. harvest period)

If any question is not answered, proceed with a stated assumption:
`[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/ic-memo-framework.md](references/ic-memo-framework.md) AND
[references/decile-hub-deal-memo-template.md](references/decile-hub-deal-memo-template.md) BEFORE writing
the memo. The Decile Hub template defines ALL required sections including the CRITICAL
LATAM corporate structure flag. Apply:

- **a16z Deal Memo Structure** — 9-section IC memo format
  Source: https://a16z.com/how-a16z-evaluates-startups/
- **Sequoia Investment Memo** — Enduring company elements + narrative structure
  Source: https://www.sequoiacap.com/article/elements-of-enduring-companies/
- **Market Opportunity** — Read references/shared/vc-backable-test.md for market
  sizing criteria (TAM bottom-up methodology, SAM credibility test)
- **Financial Benchmarks** — Read references/shared/yc-metrics.md for
  stage-appropriate thresholds (MRR, LTV/CAC, NRR, gross margin by stage)

The memo must arrive at a clear recommendation: **INVEST** / **PASS** / **DEFERRED**
(with specific conditions for Deferred).

## Step 3: Workflow

Execute in this exact order — produce all 9 sections:

1. **Executive Summary** — 1 paragraph: investment thesis + key conviction + recommendation
   upfront. Skeptical IC partners read this paragraph first and decide whether to
   continue. Make the recommendation explicit in the first sentence.

2. **Company Overview** — What it does, stage, founding date, MRR/ARR, key metrics
   snapshot. Include a summary table: Company | Stage | Founded | MRR | Growth MoM |
   Customers | ACV | Gross Margin.

3. **Market Analysis** — TAM/SAM/SOM using bottom-up methodology per vc-backable-test.md.
   Include "Why Now" — the specific enabling event that makes this the right moment.
   Flag if TAM is top-down only (red flag trigger per ic-memo-framework.md).

4. **Product & Technology** — Core product differentiation, moat assessment (network
   effects / switching costs / proprietary technology / brand), roadmap, and technical
   risk. Apply Thiel monopoly test from vc-backable-test.md.

5. **Team Assessment** — Named founders with one-line conviction per founder.
   Explicit **LATAM operator experience** assessment: "Has this founder sold to LATAM
   enterprise buyers / built LATAM-native products / navigated LATAM regulatory
   environments?" US experience does not qualify as LATAM operator experience.

6. **Financial Analysis** — Current metrics vs stage benchmarks from yc-metrics.md.
   Label each benchmark: `(US-sourced benchmark, YC / a16z)` and include LATAM
   adjustment: `(LATAM, LAVCA 2025)`. Show LTV/CAC ratio, CAC payback, NRR, and
   gross margin. Identify unit economics risk if LTV/CAC < 2:1 at Seed.

7. **Competitive Landscape** — Named competitors with positioning. Differentiation
   matrix. Identify the one structural advantage that is hardest to replicate.
   "No competition" claim triggers automatic red flag per ic-memo-framework.md.

8. **Risk Register** — Top 3–5 risks in table format:
   | Risk | Severity | Mitigation Thesis |
   For LATAM deals: FX risk (USD cost base + local currency revenue) is MANDATORY in
   the Risk Register. Fintech/healthtech/edtech: regulatory risk is mandatory.

9. **Investment Recommendation** — INVEST / PASS / DEFERRED.
   - **INVEST**: Include proposed terms (instrument, pre-money, check size, pro-rata
     rights, board seat if applicable), and any closing conditions.
   - **PASS**: One specific reason per fatal flaw. Do not list vague concerns.
   - **DEFERRED**: Exact conditions that must change before reconsidering, and a
     specific re-evaluation timeline (e.g., "re-evaluate at $150k MRR").

## Step 4: Output Format

ALWAYS use the exact structure in [TEMPLATES.md](TEMPLATES.md). IC memo sections must
appear in the order listed in Step 3. Every section requires substantive analysis —
no section may be fewer than 2 sentences in a real memo. Do not merge sections or
reorder them.

## Step 5: LATAM Fund Context

Read [references/latam-fund-context.md](references/latam-fund-context.md) BEFORE
finalizing the memo for any LATAM deal.

**FX risk (mandatory if USD cost base + local currency revenue):**
LATAM companies with USD-denominated costs (tech talent billed in USD, AWS, SaaS tools)
and local-currency revenue face structural margin compression in devaluation events.
Brazil BRL/USD and Mexico MXN/USD both have 15–30% annual volatility. This MUST appear
in the Risk Register section.

**Regulatory environment:**
- Mexico: CNBV (fintech), COFEPRIS (health), SAT (tax compliance)
- Brazil: BACEN (fintech), ANVISA (health), LGPD (data protection — affects all B2B SaaS)
- Colombia: SFC (financial), SDS (health), Habeas Data law
Fintech, healthtech, and edtech deals require regulatory risk in the Risk Register.
LATAM regulatory timelines are typically 3–5× longer than US equivalents.

**LATAM operator experience:**
Assess specifically per references/latam-fund-context.md. Prior US startup experience
is insufficient evidence of LATAM market operator capability.

**Label benchmarks:**
- US benchmarks: `(US-sourced benchmark, YC / a16z)`
- LATAM benchmarks: `(LATAM, LAVCA 2025)`

## Tone & Editorial Voice

See references/shared/editorial-voice.md. This is a GP/partner voice — a senior
decision-maker writing to convince a skeptical IC. Wishy-washy language is unacceptable.

- WRONG: "The team seems capable and has relevant experience."
- RIGHT: "Founder A's prior exit (Company X, $40M Series B, capital-efficient SME
  fintech vertical) demonstrates directly applicable LATAM operator experience. This
  team can execute the regulatory navigation that will determine whether this investment
  succeeds or fails."

Every claim in the memo must be backed by a specific fact, metric, or named reference.
Vague characterizations signal an analyst who has not done the work.

## Step 6: Recommendation

The Investment Recommendation section must end with one of three explicit positions:

**INVEST** — Include: instrument (SAFE / priced round), pre-money valuation,
fund check size, pro-rata rights, board observer/seat, and any closing conditions.

**PASS** — Include: one specific reason per fatal flaw identified. Examples:
"LTV/CAC 0.8:1 at Seed — unit economics not viable at current pricing structure."
"No LATAM operator experience on founding team — critical for CNBV navigation."

**DEFERRED** — Include: the exact metric or milestone that must change, and a specific
re-evaluation date or threshold. Example: "Deferred until MRR reaches $80k (currently
$22k). Re-evaluate Q4 2026."

## Sources

- a16z: https://a16z.com/how-a16z-evaluates-startups/
- Sequoia: https://www.sequoiacap.com/article/elements-of-enduring-companies/
- references/shared/yc-metrics.md — stage benchmarks (MRR, LTV/CAC, NRR, gross margin)
- references/shared/vc-backable-test.md — market opportunity scoring framework
- [references/ic-memo-framework.md](references/ic-memo-framework.md) — 9-section IC
  memo structure, red flag triggers, quality thresholds
- [references/decile-hub-deal-memo-template.md](references/decile-hub-deal-memo-template.md) — Decile Hub enhanced template with LATAM corporate structure flag (CRITICAL)
- [references/latam-fund-context.md](references/latam-fund-context.md) — FX risk,
  regulatory environment, LATAM operator experience, exit context
- LAVCA: https://www.lavca.org
