---
name: angel-investment-analyzer
description: >
  Investor-side scorecard for a single startup deal: should I write this check? ALWAYS
  invoke when an angel, family office, LP doing a direct co-invest, or seed fund needs
  to decide on one startup, producing a 5-criterion scorecard, exit-ownership math,
  red flags, LATAM comparables and an INVEST / WATCH / PASS verdict. Triggers: "should
  I invest in X", "evaluate this deal", "angel check", "analizá este deal", "¿invierto
  en esta startup?", "me ofrecieron entrar en la ronda de X", "vale la pena este
  ticket", "co-inversión". NOT for founders scoring their own startup
  (venture-model-validator), VC IC memos (deal-memo-writer), checking only whether the
  price is fair (startup-valuation-checker), designing a whole angel portfolio
  (portfolio-construction-advisor), or evaluating a fund manager
  (vc-fund-due-diligence).
categories: ["business", "investing", "due-diligence"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: lp-angel
license: MIT
---

# Angel Investment Analyzer

Answers one question from the investor's chair: "Should I write this check, at this
price, at this size?" Not "Is this startup fundable?" (that is venture-model-validator).

## Step 1: Intake (ONE message)

Ask everything in one message. Accept "no sé" and move on with a flagged assumption.

1. **Deal:** company, sector, country, one-sentence description, deck or link.
2. **Round:** stage, amount raised, pre-money or post-money cap, instrument (SAFE,
   priced, local convertible), lead investor if any.
3. **Your check:** size, target ownership, pro rata offered (yes/no), holding horizon.
4. **Traction:** revenue or MRR, growth last 3-6 months, paying customers, retention,
   gross margin (with inference cost if AI).
5. **Team and moat:** founders' background; what stops a funded competitor in 18 months.
6. **Fit:** your thesis, current portfolio, why this deal.

Missing answer: proceed with `[ASSUMPTION: ...]`. Never skip an input silently.

## Step 2: Workflow (in order)

1. **Read** [references/angel-investment-criteria.md](references/angel-investment-criteria.md)
   (rubrics, red flags, verdict rules) and `references/shared/vc-backable-test.md`
   (the founder-side framework this skill inverts).
2. **Run the return math first** (it decides everything else):
   - Entry ownership = check / post-money.
   - Exit ownership = entry x (1 - d) ^ n. Default d = 20% per future priced round
     (US medians: seed ~19-20%, A ~18%, Carta 2025); default n = 3 (A, B, C).
     Without pro rata, do not assume follow-ons.
   - Required exit = 10 x check / exit ownership.
   - Compare with the realistic exit: a named strategic acquirer and a sourced
     comparable exit in the sector. In LATAM, M&A is 67% of exits (Cuantico 2026).
3. **Score the 5 criteria** 1-5 with the rubrics: Return Potential, Moat Durability,
   Customer Validation, Exit Credibility, Investor Timing.
4. **AI-era check** (if the product uses AI): gross margin after inference cost
   (Bessemer State of AI 2025: fast-scaling "Supernovas" run ~25% gross margin, steadier
   "Shooting Stars" ~60%); dependency on one model provider; whether a model release
   could ship the core feature. A thin wrapper with no proprietary data or workflow
   lock-in scores Moat Durability 2 at most.
5. **List red flags** with the `[RED FLAG]` prefix. Do not soften or bury them.
6. **Find 3 LATAM comparables** (same sector and stage, or a named exit). Each needs a
   source link. If you cannot verify one, say "no verified comparable" instead of
   inventing it.
7. **Apply LATAM context** from [references/latam-context.md](references/latam-context.md).
8. **Apply the verdict rules** below, then write the output.
9. **Close with Next Steps:** 3-5 investor diligence actions for the next 14 days,
   starting with the lowest-scoring criterion.

## Step 3: Verdict Rules (apply in this order, first match wins)

1. Any criterion at 1 or 2 → **PASS**.
2. No realistic exit path, even as category leader, reaches the required exit → **PASS**
   (the math fails).
3. Total under 14/25 → **PASS**.
4. Total 18+ and the 10x math works with realistic dilution → **INVEST**.
5. Otherwise (14-17, or 18+ with 10x only in a top-quartile exit) → **WATCH** only if
   you can name a catalyst that would lift one criterion within 90 days and the date to
   re-check. No named catalyst → **PASS**.

WATCH is a dated follow-up, not a polite no.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table
columns, or field order. Fill every [bracketed placeholder] with real analysis from the
user's deal. See [TEMPLATES.md](TEMPLATES.md) for the filled example.

Sections: header and verdict (BLUF), input recap, return math box, framework breakdown
table, red flags, LATAM comparables (with sources), LATAM context box, verdict with
conditions, Next Steps, Sources.

If the user wants slides, a one-pager or a PDF of the scorecard, apply
`references/shared/deck-design-rules.md`.

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) before the final score.
Annotate per `references/shared/latam-benchmarks.md`: US benchmark first with source,
then the LATAM figure with source, or `(LATAM, directional)`.

Key adjustments:
- Seed to Series A in LATAM: 2% in one year, 7% in two, 12% in three (LAVCA 2025).
  Roughly half the US rate. Do not assume the next round will rescue a borderline deal.
- Brazil and Mexico took ~73% of 2025 VC dollars (Cuantico 2026 country table). Deals
  elsewhere need a credible path to those markets or a home-market acquirer.
- Fintech took 61% of 2025 funding on 29% of deals (Cuantico 2026): crowded capital,
  concentrated in a few large rounds.
- Regulated activities (lending, payments, deposits) need the license that matches the
  activity in each country. No clear regulatory path → Moat Durability max 3.

## Tone & Editorial Voice

Follow `references/shared/editorial-voice.md`: seasoned angel, direct, numbers first,
no em dashes, no buzzwords, no emojis; in Spanish "el AI".

Expected tone: "The math does not work. At $50K on an $8M post-money you own 0.625%; after
three rounds at 20% that is 0.32%. A 10x needs a ~$156M exit. The largest exit you can
name in this sector is a fraction of that. Pass, or ask for a lower cap."

## Sources

- [Angel Investment Criteria](references/angel-investment-criteria.md): rubrics, red flags, verdict rules
- [LATAM Angel Context](references/latam-context.md): LATAM benchmarks and country rules
- [vc-backable-test.md](references/shared/vc-backable-test.md), [latam-benchmarks.md](references/shared/latam-benchmarks.md), [editorial-voice.md](references/shared/editorial-voice.md)
- LAVCA Startup Ecosystem Insights 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- Bessemer, The State of AI 2025: https://www.bvp.com/atlas/the-state-of-ai-2025
- Carta, dilution per round (2025) and Data Desk (10 Jul 2026): https://carta.com/data/
- Correlation Ventures data via Seth Levine, "Venture Outcomes are Even More Skewed Than You Think" (Aug 2014; ~65% of financings return under 1x, ~4% return 10x+): https://sethlevine.com/tags/venture-economics/
- YC Essential Startup Advice: https://www.ycombinator.com/library/Em-yc-s-essential-startup-advice
