# Valuation Benchmarks: dated snapshot (October 2026)

**When to use:** startup-valuation-benchmark, Steps 2 to 6. Fetch live figures first (SKILL.md
Step 2); use this snapshot only as the fallback and say so in the output header.
**Labels:** `(US-sourced benchmark)` for US data, `(LATAM)` for LATAM data. Anything marked
**directional** has no primary/pro source we could verify: show it as context, never as the
benchmark a verdict rests on.

---

## 1. Stage benchmarks: round size, valuation, dilution

**Carta Data Desk, "VC Startup Fundraising Benchmarks From 1000 Rounds"** (Peter Walker,
10 Jul 2026). Software companies only, rounds raised in the prior 6 months, no bridges or
extensions, companies on Carta cap tables. https://carta.com/data/linkedin-archive/

| Stage    | Median round | Median valuation | Median dilution |
|----------|--------------|------------------|-----------------|
| Seed     | $4.1M        | $24.3M           | 18%             |
| Series A | $14.4M       | $80M             | 18%             |
| Series B | $25M         | $191M            | 12%             |
| Series C | ~$40M        | $391M (post)     | <10%            |
| Series D | $63M         | $789M            | 8%              |

Carta's own notes on this data: medians are the middle of a wide range, not a target; the
valuation is often just the output of cash raised and dilution; "probably at least half of these
companies would fall under the definition of AI-native". A non-AI company should expect to land
below these medians.

Other Carta data points:

- Record US pre-money medians in 2025: seed $16M, Series A $49.3M (Carta, State of Private
  Markets Q3 2025). https://carta.com/data/state-of-private-markets-q3-2025-full-report/
- Dilution per priced round is not rising: seed about 19-20%, Series A about 18% (Carta, "Startup
  dilution per round is not rising", 2025, 12,435 priced US software rounds since Jan 2021).
- Top-end seed valuations: the 95th percentile seed valuation was $200.4M in Q2 2026 vs $72.2M in
  Q2 2025 (Carta, 8 Jul 2026). Use it to explain why headline seed rounds are not the benchmark.
- Capital is concentrating: seed dollars fell from $6.5B (H1 2025) to $3.8B (H1 2026) while
  Series C+ rose from $23.9B to $31.8B (Carta Data Minute, 8 Jul 2026).
  https://carta.com/data/newsletter-archive/

**LATAM** (canonical, verified data layer: shared/latam-benchmarks.md):

- Median round size 2024: seed USD 0.5M, Series A USD 10M, Series B USD 25.5M (LAVCA Trends
  in Tech 2025, data as of 31 Dec 2024).
  https://www.lavca.org/wp-content/uploads/2025/02/LAVCA_Trends-in-Tech-2025.pdf
- LATAM seed pre-money averaged about 40% of the US level over 2015-2025 (US 156% higher;
  Valoriza, reported by Diario Financiero, 2 Apr 2025).
  https://www.df.cl/df-lab/innovacion-y-startups/informe-revela-que-las-startups-de-eeuu-valen-mas-antes-de-una-ronda-de
- Only 12% of LATAM seed startups raise a Series A within three years (LAVCA Startup Ecosystem
  Insights 2025): price the round so the company can survive without the next one.
- Round ranges by stage (pre-seed $3-10M post-money cap, seed $8-20M pre-money, Series A
  $20-60M pre-money) are **directional** (LAN deal flow 2025-2026), not a published dataset.
- LATAM VC investment: USD 4.13B across 681 rounds in 2025 (Cuantico, LatAm VC Report 2026);
  USD 4.2B in 2024 (Crunchbase, EOY 2024). Use one source per output.

No verified 2026 LATAM median valuation exists: never present one.

## 2. Growth and traction benchmarks

**Growth rate**

- Paul Graham, "Startup = Growth" (Sep 2012): 5-7% per week is good during YC, 10% per week is
  exceptional; 1% per week means you have not figured it out yet. https://paulgraham.com/growth.html
- LAN's read (LAN Accelerator masterclass, Oct 2026): the bar moved from about 10% per month to
  10% per week for top funds. Label it as LAN's read. Compounding: 1.10^12 = 3.1x per year vs
  1.10^52 = 142x per year.
- T2D3 (Neeraj Agrawal, Battery Ventures, 2015): triple, triple, double, double, double ARR
  once a SaaS company reaches about $1-2M ARR. https://techcrunch.com/2015/02/01/the-saas-travel-adventure/
- Bessemer, "Scaling to $100 Million" (21 Sep 2021), average ARR growth by scale: $1-10M ARR 200%,
  $10-25M 115%, $25-50M 95%, $50-100M 60%. Top performers at $1-10M ARR: 230%+ growth, 145%+ net
  retention, 85%+ gross margin. Growth endurance: next year's growth is about 70% of this year's.
  https://www.bvp.com/atlas/scaling-to-100-million

**ARR needed at each stage: directional.** We could not verify a current Carta percentile table
for ARR at seed or Series A. Market commentary in 2026 puts a typical Series A at a few million
dollars of ARR growing 2-3x a year (directional). At run time, search Carta's data pages for the
latest "ARR at Series A" post and cite it; otherwise say the figure is directional.

**Quality of revenue and efficiency**

- Gross margin: Bessemer averages 70% at $1-25M ARR (Scaling to $100M, 2021). Public SaaS median
  76% (Clouded Judgement 10.22.26).
- Net revenue retention: public SaaS median 110% (Clouded Judgement 10.22.26); Bessemer top
  performers 130-145%+ by scale; gross retention typically 85-90% (Bessemer, 2021).
- Burn multiple = net burn / net new ARR (David Sacks, "The Burn Multiple", 23 Apr 2020):
  under 1x amazing, 1-1.5x great, 1.5-2x good, 2-3x suspect, over 3x bad. Sacks expects it to
  improve with stage: about 3x at seed, about 2x after the Series A.
  https://sacks.substack.com/p/the-burn-multiple-51a7e43cb200

## 3. Public market anchor

**Clouded Judgement 10.22.26** (Jamin Ball, published 23 Oct 2026). EV / NTM revenue, public
cloud software. https://cloudedjudgement.substack.com/p/clouded-judgement-102226-ai-goes

| Bucket                                   | Median EV / NTM revenue |
|------------------------------------------|-------------------------|
| Overall                                  | 4.8x                    |
| High growth (>22% NTM growth)            | 21.0x                   |
| Mid growth (15-22%)                      | 13.8x                   |
| Low growth (<15%)                        | 7.1x                    |
| Top 5                                    | 33.1x                   |

Operating medians in the same post: NTM growth 13%, gross margin 76%, net retention 110%, CAC
payback 31 months. 10-year Treasury 5.0%.

These are figures as published that week; they move weekly. Always try the live fetch first
(Clouded Judgement, Meritech public comps, BVP Nasdaq Emerging Cloud Index, Damodaran's January
price/sales dataset).

**How to use the anchor for a private startup**

1. Pick the bucket by the startup's expected forward growth (most early startups sit far above
   22%; the high-growth bucket is the closest public analog, not a match).
2. Implied value = ARR x bucket multiple.
3. Apply a private-company discount for illiquidity and stage risk. There is no single verified
   number for this: state it as an explicit assumption and show the result at 2 discount levels
   (for example 30% and 50%). Mark the discount as **directional**.
4. Treat the result as an anchor that tells the founder what a buyer of growth pays at scale, not
   as the round price. Early rounds are priced on ownership and dilution (section 4).

## 4. Valuation methods

**Dilution method (all stages, the masterclass default).**
post-money = round / target dilution, with target dilution 15-25% (Carta medians 18% at seed and
Series A). pre-money = post-money - round.

**VC method (work back from the exit).**
1. Exit value: a realistic exit for the sector (M&A is the most common exit: about 97% of US VC
   exits by count in 2025 were not IPOs, PitchBook-NVCA Venture Monitor Q1 2026).
2. Ownership at exit = ownership bought today x (1 - dilution per future round) for each round
   to exit (use about 18% per round at seed/A, 12% at B, per Carta 2026).
3. Target return multiple for the stage (state it as an assumption; early-stage funds underwrite
   each deal to be able to return a large multiple because of the power law).
4. post-money today = (exit value x ownership at exit) / target multiple, solved for the
   ownership the investor needs.

**Growth-adjusted revenue multiple (revenue stage).** ARR x public bucket multiple x (1 - private
discount). Show the growth bucket used.

**Scorecard (Bill Payne, pre-revenue and seed).** Regional median pre-money x weighted factors:
team 30%, opportunity 25%, product 15%, channels 10%, stage 10%, other 10%, each scored 0-2.
https://billpayne.com/2011/01/04/scorecard-valuation-methodology/

**Berkus (pre-revenue only).** Up to a cap per element: idea, prototype, team, strategic
relationships, rollout (US cap $500K each; LATAM cap $250K each as used in
startup-valuation-checker). https://berkus.com/the-berkus-method/

**Comparable rounds.** 2-3 recent rounds at the same stage, sector and region, each with source
and date. Prefer press releases, Crunchbase and LAVCA over secondary blogs.

**Team and validators (pre-revenue).** Score the 5 validators from the masterclass: investors
already in, advisors, closed paying customers, clear traction, founder CV.

## 5. Sanity checks

- **Step-up test.** At expected growth, the company must be able to raise the next round at 2-3x
  this post-money. If not, the price today is a down round tomorrow.
- **Round size test.** round = monthly burn x (months to next-round milestones + 6), targeting
  18-24 months of runway.
- **Who sets the price.** The lead investor sets it; competition between funds is the only thing
  that improves it.
- **Headline check.** A seed price far above the median needs AI-native or exceptional-team
  evidence; Carta notes many of today's medians are pulled up by AI-native companies.

## Sources

- Carta Data Desk, LinkedIn archive (10 Jul 2026 and 8 Jul 2026): https://carta.com/data/linkedin-archive/
- Carta Data Minute archive (8 Jul 2026): https://carta.com/data/newsletter-archive/
- Carta, State of Private Markets Q3 2025: https://carta.com/data/state-of-private-markets-q3-2025-full-report/
- Clouded Judgement 10.22.26 (23 Oct 2026): https://cloudedjudgement.substack.com/p/clouded-judgement-102226-ai-goes
- Bessemer, "Scaling to $100 Million" (21 Sep 2021): https://www.bvp.com/atlas/scaling-to-100-million
- David Sacks, "The Burn Multiple" (23 Apr 2020): https://sacks.substack.com/p/the-burn-multiple-51a7e43cb200
- Paul Graham, "Startup = Growth" (Sep 2012): https://paulgraham.com/growth.html
- Neeraj Agrawal, "The SaaS Travel Adventure" (TechCrunch, 1 Feb 2015): https://techcrunch.com/2015/02/01/the-saas-travel-adventure/
- PitchBook-NVCA Venture Monitor Q1 2026 (exits)
- Crunchbase, Latin America funding EOY 2024: https://news.crunchbase.com/venture/latin-america-startup-funding-eoy-2024/
- LAVCA Trends in Tech 2025; LAVCA Startup Ecosystem Insights 2025; Cuantico LatAm VC Report 2026; Valoriza via Diario Financiero (2 Apr 2025). Canonical: shared/latam-benchmarks.md
- Bill Payne Scorecard; Dave Berkus method
