# Power Law, Fund-Returner Math and the AI-Era Lens (October 2026)

**Source:** LAN Accelerator fundraising masterclass (October 2026) and the LAN idea-engine radar
(October 2026: published theses of top funds, YC S26 and a16z speedrun portfolios). Every number
keeps its source in the output; label US data `(US-sourced benchmark)`. Sections 5 and 6 add YC Requests
for Startups Summer 2026 (https://www.ycombinator.com/rfs) and Sequoia "Services: The New
Software" (https://www.sequoiacap.com/article/services-the-new-software).
**When to use:** venture-model-validator Step 2b, after the five frameworks and before the final
score. Explains to the founder WHY a VC says no to a good business.

---

## 1. The power law

- About 65% of VC financings fail to return 1x; about 25% return 1-5x; about 6% return 5-10x; about
  4% return 10x or more (Correlation Ventures, 21,000+ US financings 2004-2013, reconfirmed ~2018,
  via Seth Levine, Foundry Group, 2014 and 2019).
- In most years, 60% or more of the gains of the top 100 VC deals came from deals that returned 10x
  or more (Cambridge Associates, "Venture Capital Disrupts Itself", 2015, updated 2025).
- "If the fund is successful, one or two investments will generate 90% of the returns" (Peter
  Fenton, Benchmark, TechCrunch, Oct 2026).

What a 30-company seed portfolio looks like at the end (applying Correlation's distribution):
20 lose money, 7 return 1-5x, 2 return 5-10x, 1 returns 10x+ and pays for the fund.

## 2. Fund-returner math (illustrative, no source needed: arithmetic)

```
Fund USD 100M  x 3 (target)  = USD 300M to return
Fund ownership at exit ~10%  -> USD 1B exit returns the whole fund
                             -> USD 3B exit hits the 3x target alone
```

Test for the founder: does the market allow a USD 1B company? If not, it is not a no to the team,
it is a no to the math.

## 3. Mortality and exits

- Seed to Series A graduation within 2 years: about 15% for the 2022 seed cohort vs about 31% for
  2018 (Carta Data Desk, Peter Walker, 2025). Median seed to A gap: 616 days, Q2 2025 (Carta).
- 966 US startups shut down in 2024, up 26% from 2023 (Carta data via TechCrunch, 26 Jan 2025).
- 2025: 1,578 US VC-backed exits, only 50 IPOs, so about 97% of exits by count were M&A
  (PitchBook-NVCA Venture Monitor Q1 2026). Ask the founder for 10 plausible acquirers.

## 4. AI-era lens (add to the "Why now?" and moat analysis)

1. **Sell the work, not the tool.** "If you sell the tool, you're in a race against the model. But
   if you sell the work, every improvement in the model makes your service faster, cheaper, and
   harder to compete with." (Julien Bek, Sequoia, services-as-software thesis). Radar pattern:
   AI-native firms replacing the accounting or law firm itself, not selling it software.
2. **Outcome and usage pricing replace seats.** Recurring in YC S26, a16z speedrun and top-fund
   portfolios (radar, Oct 2026): pay per operation, per milestone, per recovered dollar.
3. **The moat is accumulated proprietary context, not the model.** "The next source of competitive
   advantage in AI will not come from access to the same models. It will come from the intelligence
   organizations built on top of them." (Lightspeed, on its Harvey investment). YC asks for the same
   in "Own Your Intelligence" (RFS Winter 2027).
4. **Where the bottleneck is moving.** YC's Winter 2027 Requests for Startups: "AI's biggest
   bottlenecks are moving beyond the models", into hardware, infrastructure, financial systems and
   specialized software for the real economy. The 11 requests: Startups in a World of Abundant Space
   Access; The $15-an-Hour Expert; Robots Made in America; LLMs That Write Well; Plaid for Government
   Benefits; Wall Street for the Physical Buildout; Vertical Foundation Models; AI for City Hall;
   Data Center Supply Chain; AI for the Air-Gapped Economy; Own Your Intelligence
   (ycombinator.com/rfs, read 27 Oct 2026). For LATAM founders the closest fits are the $15-an-hour
   expert, AI for City Hall, Plaid for government benefits and Own Your Intelligence.
5. **Where we are on the curve.** NVIDIA's framing: perception AI (since AlexNet, 2012) ->
   generative AI -> agentic AI ("AIs that can perceive, reason, plan and act") -> physical AI next
   (Jensen Huang, CES 2025 keynote). Score "Why now?" higher when the product rides the agentic or
   physical step, lower when it is a thin generative wrapper.
6. **The map is blank again.** "AI has made the map blank again. Every part of the economy is now
   open to reinvention... many of the defining AI companies do not yet exist." (Greylock, launching
   Greylock 18). LAN's read for LATAM: as AI leaves pure software for the real economy (government,
   agro, finance, services), LATAM founders play at home.

## 5. The "does Claude/ChatGPT already do it?" test

A general AI assistant at about USD 20 per user per month is the new "do nothing" option.
Investors run this test in the first meeting, often live. Run it first.

1. Take 3 real tasks a customer would give the product (anonymized).
2. Ask Claude and ChatGPT to do each one with only what a customer would paste in.
3. Score the share of the job done acceptably: 0%, 25%, 50%, 80%, 100%.
4. If the average is 80% or more, the startup needs at least one of these four, and must show
   it, not claim it:

| Reason to exist | What proves it |
|---|---|
| Proprietary data | The answer needs data the assistant cannot access, scrape or buy; usage adds more of it |
| Workflow lock-in | The output lands in a system of record (ERP, payroll, invoicing, filings) with integration and audit trail; ripping it out breaks operations |
| Distribution | The startup already sits where the buyer works (a channel, a platform, a gremio, an exclusive contract) |
| Service layer | Someone answers for the result: humans in oversight, an SLA, liability, a licensed signature |

Scoring rule: average 80%+ and none of the four proven = `[RED FLAG: ASSISTANT SUBSTITUTE]`, and
the Thiel and Sequoia scores cannot exceed 2. Average under 25% = say the assistant is not the
main threat, and re-test every quarter, because models improve.

## 6. The service horizon: tool -> tool+service -> service

- **YC RFS Summer 2026, "AI-Native Service Companies"** (Gustaf Alströmer): AI agents as the
  primary workforce, humans in oversight. The company sells the work, not software.
- **Sequoia, "Services: The New Software"** (Julien Bek, Mar 2026): for every USD 1 spent on
  software, USD 6 is spent on services. The service budget is the bigger market.

| Position | What the customer buys | Venture-scale when | Watch out for |
|---|---|---|---|
| Tool | Software their team operates | Proprietary data or system-of-record position; passes the assistant test | Model providers shipping the same feature |
| Tool + service | Software plus done-for-you setup, operation or review | Service is a wedge that feeds the product and shrinks per customer over time | Becoming a consultancy with software margins on the slide only |
| Service (AI-native) | The finished outcome (closed books, filed reports, resolved tickets) | Agents do most of the work; human hours per unit fall every quarter; gross margin trends toward software | Quality and liability; scaling humans linearly with revenue |

Market sizing consequence: a tool sizes against software spend; a service sizes against the
outsourced or in-house labor budget for the same job, often several times larger (Sequoia 1:6).
State which one the founder's TAM uses.
