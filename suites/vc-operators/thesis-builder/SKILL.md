---
name: thesis-builder
description: >
  Use when a GP, emerging manager or fund team needs to write or sharpen a fund's
  investment thesis: core contrarian belief, why now, pattern-matching criteria,
  portfolio construction math, anti-portfolio, thesis evolution, bottom-up market
  sizing, and an LP stress test. Includes AI-era theses (AI moving into the real
  economy). Spanish triggers: "tesis de inversión del fondo", "armar la tesis",
  "qué tesis tiene mi fondo", "criterios de inversión", "anti-portafolio", "tesis
  para LPs". NOT for a memo on one deal (use deal-memo-writer), NOT for detailed
  portfolio sizing models for an LP or angel (use portfolio-construction-advisor),
  NOT for an LP diligencing someone else's fund (use vc-fund-due-diligence).
categories: ["business", "venture-capital", "fund-management"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: vc-operators
license: MIT
---

# Thesis Builder

Produces a 7-section thesis document a GP can put in front of LPs: one falsifiable core
belief, the mechanism and timing behind it, how deals are filtered, the fund math that makes
it work, and the weakest point stated before an LP finds it.

## Step 1: Intake (one message)

Ask all seven in ONE message. Missing answers become `[ASSUMPTION: ...]`; do not stop.

1. Fund name, vintage, size, LP mix (institutional / family office / DFI / mixed)
2. Target sectors and why
3. Geography (country, LATAM-wide, cross-border)
4. Stage and check size range
5. "What do you believe about the next 5-10 years that most investors do not believe yet?"
6. Deals you systematically pass on, and why
7. Your edge: access, insight or value-add, with evidence (prior exits, operating years,
   proprietary deal flow)

## Step 2: Read before writing

- [references/thesis-framework.md](references/thesis-framework.md): what makes a thesis
  (contrarian, mechanism, timing, edge, kill condition), USV's evolving thesis as the model,
  YC RFS Winter 2027 as the AI-era reference, emerging-manager edge, portfolio math,
  anti-portfolio framing.
- [references/shared/vc-backable-test.md](references/shared/vc-backable-test.md): bottom-up
  market sizing.
- [references/latam-fund-context.md](references/latam-fund-context.md): Cuantico 2026 market
  data, structural enablers, regulators, LP fit. Required for any LATAM thesis.

## Step 3: Workflow

1. **Core Hypothesis:** one paragraph with belief, mechanism, why incumbents cannot respond,
   and an explicit kill condition. "Fintech is big in LATAM" is an observation, not a thesis.
2. **Market Thesis:** technology, regulation, capital-market and behavior shifts, each with a
   sourced fact. For AI theses, name the bottleneck the AI removes and who pays for it; YC
   RFS Winter 2027 frames the current shift as "AI's biggest bottlenecks are moving beyond the
   models" (air-gapped deployments, owned models, government workflows). Test whether the same
   bottleneck exists in the fund's geography.
3. **Pattern Matching:** a table specific enough that a founder knows in one read whether to
   apply: founder profile, stage metrics, model, structural element, disqualifiers. For
   AI-native companies, require proprietary data or workflow ownership, not a model wrapper.
4. **Portfolio Construction:** table plus the math in thesis-framework.md: investable capital
   after fees, reserves, ownership at entry on post-money, dilution to Series A, and the
   fund-returner exit size. If the category cannot produce that exit size in 10 years, say
   the thesis fails the fund math.
5. **Anti-Portfolio:** at least 3 exclusions, each with a reason tied to the return model and
   any exception.
6. **Thesis Evolution:** how it changed and what evidence would change it again.
7. **Market Sizing:** bottom-up (units x reachable share x revenue per unit); report the
   revenue pool, not a headline stock. Tag every input you could not source as
   `[ASSUMPTION: ...]` with where to get it. Never use US market size as a LATAM proxy.
8. **Stress Test:** strongest challenge, response, and what LPs will push hardest on.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's fund. See
[TEMPLATES.md](TEMPLATES.md) for the filled example. No section shorter than 3 sentences.

If the thesis becomes an LP deck or one-pager, apply references/shared/deck-design-rules.md:
the title of each slide is the claim, one idea per slide, real data in charts, no
decorative graphics.

## Step 5: LATAM rules

- Fintech is 61% of LATAM VC capital (Cuantico 2026): a fintech thesis needs a sub-sector and
  a mechanism, and must say why the GP wins against the most crowded part of the market.
- SaaS is 13% of capital and deals: explain why buyers will pay for software now (labor
  cost, compliance mandates, AI replacing services spend).
- Brazil is about half of regional capital and deals; a pan-LATAM seed thesis must explain how
  it wins elsewhere.
- DFI LPs need additionality and impact metrics in the thesis itself; family offices need
  trust and access; institutions need a repeatable process.
- Emerging managers: established managers took 90.9% of US VC capital raised in Q1 2026
  (PitchBook-NVCA). State the edge with evidence, not adjectives.
- Label benchmarks `(US-sourced benchmark, Carta Q2 2026)` or `(LATAM, Cuantico 2026)`. No
  numeric "LATAM discount" to US returns.

## Tone & Editorial Voice

See [references/shared/editorial-voice.md](references/shared/editorial-voice.md). GP voice
written for an LP deciding on a $5M commitment.

WRONG: "Fintech is growing rapidly in LATAM and represents a large opportunity."
RIGHT: "SME credit will be underwritten from invoice and payment data owned by the software
SMEs use daily, because AI made per-customer underwriting nearly free and banks' cost to
serve was built for branches. If banks match approval time and loss rates on sub-$50k lines
by 2028, we are wrong."

## Next Steps

End with 3-5 actions: data to source for every `[ASSUMPTION]`, the 2-3 LPs to test the thesis
with, the pipeline filter to apply this month, and the date of the next thesis review.

## Sources

- USV Thesis 3.0 (2018): https://www.usv.com/writing/2018/09/usv-thesis-3-0/
- Y Combinator, Requests for Startups, Winter 2027: https://www.ycombinator.com/rfs
- Cuantico VP, "Latin America VC Report 2026": https://reports.cuanticovp.com/latin-america-vc-report-2026/
- Carta, "Fund Economics Report 2025" (4 Dec 2025) and "VC Fund Performance: Q2 2026" (23 Sep 2026)
- PitchBook-NVCA Venture Monitor Q1 2026
- Gompers, Gornall, Kaplan and Strebulaev, "How do venture capitalists make decisions?", Journal of Financial Economics (2020): team is the top factor for about 47% of VCs
