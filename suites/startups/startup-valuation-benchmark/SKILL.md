---
name: startup-valuation-benchmark
description: >
  For STARTUP FOUNDERS. Use when a founder wants to benchmark their valuation before a round:
  "what valuation can I defend?", "is my seed/Series A price in line with the market?", "how do
  I compare to other startups at my stage?", "what multiple should I ask for?". Benchmarks the
  round against public data by stage (Carta round medians and dilution), growth and traction
  (ARR, growth rate, net retention, gross margin, burn multiple), and public SaaS multiples
  fetched at run time, then triangulates a defensible valuation range with the dilution method,
  VC method, Scorecard, Berkus and growth-adjusted revenue multiples. Outputs a one-page
  benchmark card, a low/base/high range and the recommended ask. NOT for an investor checking
  whether a deal is fairly priced (use startup-valuation-checker). NOT for computing CAC, LTV
  or payback (use unit-economics-calculator).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---

# Startup Valuation Benchmark

The founder's benchmark tool: where does my round sit against public data, and what valuation
can I defend in front of a lead investor? Produces a benchmark card (my numbers vs the market),
a valuation range built from several methods, and the recommended ask with the story behind it.

Write the output in the founder's language (Spanish by default for LATAM founders).

## Step 1: Input Gathering

Ask ALL questions in ONE message. Do not start benchmarking until you have answers or stated
assumptions for each.

1. **Stage and round:** pre-seed / seed / Series A / Series B, and the amount being raised
2. **Revenue:** current ARR or MRR (or "pre-revenue"), plus trailing growth MoM and YoY
3. **Quality of revenue:** gross margin, net revenue retention (NRR) or monthly churn
4. **Burn:** monthly net burn, cash in the bank, runway in months
5. **Customers:** number of paying customers and the 3 best logos (signed and paying)
6. **Team signals:** prior exits, top companies, top universities, anything extraordinary
7. **Geography and sector:** country of operations and HQ (LATAM country vs US), sector, AI-native or not
8. **Prior rounds:** amount, post-money, instrument (SAFE cap or priced round), date
9. **Their number:** the valuation (pre or post-money) they have in mind, and why

If an answer is missing, proceed with a stated assumption flagged as `[ASSUMPTION: ...]`.
Never silently skip an input.

## Step 2: Load Benchmarks

Read [references/benchmarks-2026.md](references/benchmarks-2026.md) BEFORE benchmarking.

**Fetch live data first.** Public market multiples move every week. Use web search / fetch to
get the latest figures from these sources, then fall back to the dated snapshot in the reference
file only if the fetch fails, and say which one you used:

- Clouded Judgement (Jamin Ball, weekly): overall median EV / NTM revenue and the growth buckets.
  https://cloudedjudgement.substack.com/archive
- Meritech Analytics public software benchmarking (free): https://www.meritechcapital.com/
- BVP Nasdaq Emerging Cloud Index: https://www.bvp.com/bvp-nasdaq-emerging-cloud-index
- Damodaran, January industry multiples (price/sales by industry):
  https://pages.stern.nyu.edu/~adamodar/New_Home_Page/datafile/psdata.html
- Carta data (round size, valuation, dilution by stage): https://carta.com/data/

Every benchmark you show carries source, date and URL. Label US figures
`(US-sourced benchmark)` and LATAM figures `(LATAM)`. Never invent a LATAM median: if no
verified LATAM figure exists for a metric, say so and show the US figure as the ceiling.

## Step 3: Workflow

Execute in this exact order:

1. **Stage benchmark.** Compare round size, implied post-money and implied dilution against the
   Carta medians for the stage (reference section 1). Implied dilution = round / post-money.
2. **Traction benchmark.** For each metric (ARR, growth, NRR, gross margin, burn multiple =
   net burn / net new ARR) give: yours, the stage benchmark, a verdict (above / at / below /
   red flag) and the source (reference section 2). Pre-revenue: benchmark team and validators
   instead (reference section 4).
3. **Public market anchor.** Pull the live EV / NTM revenue multiple for the founder's growth
   bucket. Apply a private-company discount and stage risk explicitly, as stated assumptions
   (reference section 3). This is an anchor, not the answer.
4. **Valuation methods.** Apply every method that fits the stage (reference section 4) and show
   the math for each:
   - **Dilution method (all stages):** post-money = round / target dilution (15-25%).
   - **Growth-adjusted revenue multiple (revenue-stage):** ARR x multiple for the growth bucket,
     discounted for private-company risk.
   - **VC method (all stages):** post-money = (expected exit value x target ownership at exit
     after dilution) / target return multiple. Work back from the exit.
   - **Scorecard (Bill Payne, pre-revenue and seed):** regional median pre-money x weighted factors.
   - **Berkus (pre-revenue only):** up to the cap per element.
   - **Comparable rounds:** 2-3 recent rounds at the same stage and sector, with source.
5. **Triangulate.** Show each method's implied post-money side by side. Build the range:
   LOW = where at least two methods agree at the bottom, BASE = the dilution-method result
   cross-checked with comparables, HIGH = what the best evidence can defend. Do not average.
6. **Sanity checks** (reference section 5): the next round must support a 2-3x step-up given
   expected growth; flag down-round risk if the ask sits above HIGH; check the round size with
   monthly burn x (months to next-round milestones + 6), targeting 18-24 months of runway.
7. **Recommended ask and story.** One number (post-money and pre-money), the round size, the
   dilution it implies, and the 3 facts from the benchmark card that defend it.
8. Produce the output per [TEMPLATES.md](TEMPLATES.md) and end with Next Steps.

## Step 4: Output Format

ALWAYS use the structure in [TEMPLATES.md](TEMPLATES.md). Every section is required:

- **Header:** company, stage, round, geography, date, data freshness (live fetch or snapshot date)
- **Benchmark card:** Metric | Yours | Stage benchmark | Verdict | Source
- **Valuation by method:** Method | Implied post-money | Math | Key assumption
- **Range:** LOW / BASE / HIGH with one line of reasoning each
- **Recommended ask:** post-money, pre-money, round, dilution, and the 3-fact story
- **Red flags:** anything that will cost the founder price or the round
- **LATAM context box** (for LATAM founders)
- **Next Steps**

## Step 5: LATAM Context

- LATAM rounds and valuations run lower than US medians at the same stage. US Carta medians are
  the ceiling a LATAM founder argues toward, never the default anchor.
- LATAM has low liquidity (USD 4.2B of VC in 2024, Crunchbase): team and growth weigh most.
  The later the stage, the more investors weigh track record over future.
- Founders anchored on a US accelerator peer's price lose rounds. The lead investor sets the
  price; competition between funds is the only thing that improves it.
- Product for LATAM: price against LATAM funds. Raising from US funds with US presence and
  traction: US benchmarks apply, with the gap to close stated.

## Tone & Editorial Voice

See references/shared/editorial-voice.md. The founder came for a number they can defend, not
for reassurance. If the ask sits above HIGH, say by how much and what metric would earn it.
If a metric is a red flag, name it and the target that fixes it.

## Step 6: Next Steps

End with 3 concrete actions under `## Next Steps`:

- The metric to move before the raise, with target and timeline, if it changes the range.
- How to use the card in the process: which 3 facts open every investor conversation.
- Which LAN skill to run next: `/fundraising-readiness-audit` (am I ready to raise?),
  `/fundraising-agent` (list of 30, lead investor, process), `/startup-valuation-checker`
  (stress-test the price from the investor's side before the term sheet).

## Sources

- [Benchmarks 2026](references/benchmarks-2026.md): dated snapshot with every source and URL
- Carta Data Desk, "VC Startup Fundraising Benchmarks From 1000 Rounds" (Peter Walker, 10 Jul 2026)
- Clouded Judgement 10.22.26 (Jamin Ball, 23 Oct 2026): public SaaS multiples and operating metrics
- Bessemer Venture Partners, "Scaling to $100 Million" (21 Sep 2021)
- David Sacks, "The Burn Multiple" (23 Apr 2020)
- Paul Graham, "Startup = Growth" (Sep 2012)
- Damodaran Online (NYU Stern), industry multiples
- Bill Payne Scorecard; Berkus Method
