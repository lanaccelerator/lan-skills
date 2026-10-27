# Sequoia 10-Slide Application Guide (pitch-deck-builder)

**Source:** [Writing a Business Plan — Sequoia Capital](https://www.sequoiacap.com/article/writing-a-business-plan/)
**When to use:** pitch-deck-builder invokes this file for Seed and Series A decks.
For Pre-seed, apply Kawasaki 10-20-30 simplification noted per slide.
**Relationship to shared framework:** This file provides skill-specific application
detail (investor intent, failure modes, LATAM variants). The raw framework principles
are in [sequoia-deck.md](shared/sequoia-deck.md).

---

## Slide 1 — Company Purpose

**What investors want to see:**
- A single declarative sentence: verb + object + beneficiary
- Not a tagline. Not "we're disrupting X." A factual statement of what the company does.
- The sentence should survive a whisper test: can a VC repeat it to their partner
  after a 60-second pitch?

**Data required:**
- Company name
- What the product does
- Who it does it for
- Optional (if strong): a single proof point ("already serving 500k customers")

**Common failure modes:**
- Jargon-laden mission statement ("democratizing financial infrastructure for the
  underbanked middle market") — investors stop reading
- Too long — if your purpose takes two sentences, you don't have one yet
- Tagline over description ("the Robinhood of LATAM") — this is derivative, not defining

**Kawasaki variant (pre-seed):** Purpose slide = team origin story. Why did this
team specifically start this company? Pre-seed investors are buying the team, not
the traction.

---

## Slide 2 — Problem

**What investors want to see:**
- Who has the problem (specific customer persona, not "everyone")
- How acute is the pain (quantified: time wasted, money lost, compliance risk)
- Why existing solutions fail (don't skip this — it validates the market gap)
- A story: the best Problem slides tell one customer story in human terms, then
  zoom out to show it's not a one-person problem

**Data required:**
- Specific customer segment (job title, company size, geography)
- Quantified pain (hours/month, dollars/year, failure rate)
- Evidence that existing solutions fail (a real quote or a specific metric)

**Common failure modes:**
- "People waste time on X" — not quantified, not specific, not investable
- No customer quote — the Problem slide is the one place a founder quote is mandatory
- Failing to explain why incumbents (e.g., Salesforce, QuickBooks) don't solve it —
  investors will ask, founders should have the answer on the slide

**Kawasaki variant (pre-seed):** Problem slide must end with a customer story.
One specific person, one specific moment of pain. Skip the statistics if you have
a visceral story that makes the investor feel the pain.

---

## Slide 3 — Solution

**What investors want to see:**
- A visual of the actual product (screenshot or demo gif), not a description of features
- How the solution eliminates the pain from Slide 2 — map solution → problem directly
- What differentiates this solution from previous attempts to solve the same problem

**Data required:**
- Live screenshot or demo gif of the product (not Figma mockup for Seed+)
- 3 key value propositions mapped to the pain points from Slide 2
- One quantified outcome ("saves 6 hours/month", "reduces churn by 30%")

**Common failure modes:**
- Bullet list of features with no visual — this is a product spec, not a pitch
- Demo that shows the ideal path with no real customer workflow
- For Seed/Series A: showing Figma instead of live product — investors assume the
  live product is worse than the mockup (usually correct)

**Kawasaki variant (pre-seed):** Feature list is acceptable at pre-seed if paired
with a strong vision narrative. "This is what it does today; here is what it will do
in 18 months" is a valid pre-seed framing.

---

## Slide 4 — Why Now

**What investors want to see:**
- A specific enabling condition that didn't exist 3–5 years ago
- Technology shift, regulatory change, behavioral inflection, or infrastructure
  availability — one of these four, specifically
- Why this team in this market at this moment — the "why now" must also answer
  "why you" implicitly

**Data required:**
- Named trigger event with date (e.g., "Mexico CFDI 4.0 mandate, January 2022")
- Quantified impact of the trigger (e.g., "8M SMEs newly required to issue digital
  invoices — creating overnight demand for compliant software")
- Evidence this timing creates urgency, not just opportunity

**Common failure modes:**
- "The market is ready" — not an explanation. All markets with successful companies
  were "ready." What changed specifically?
- Market growth chart without a named inflection — growth is not a Why Now
- Missing Why Now slide entirely — this is the third most common fatal deck error
  after no competitive slide and missing market sizing

**Kawasaki variant (pre-seed):** Why Now can be personal ("we experienced this
problem ourselves and couldn't find a solution") plus one macro trend. Investors
at pre-seed accept narrative timing.

---

## Slide 5 — Market Size

**What investors want to see:**
- Bottom-up calculation: ICP count × contract value = SAM
- SAM → SOM with a credible capture assumption and timeframe
- For LATAM: country-level data, not "LATAM market" as a unit

**Data required:**
- ICP count from government or industry source (not Gartner top-down)
- Average contract value (current pricing × billing frequency)
- SAM = ICP count × ACV
- SOM = realistic subset reachable in 3 years via current channels
- LATAM context: cite country-level stats (INEGI, DANE, IBGE) for the ICP count

**Common failure modes:**
- Top-down: "Global accounting software = $15B. We want 1%." — No VC accepts this.
  The 1% assumption has no basis and the $15B number is global, not your market.
- No SAM/SOM breakdown — TAM alone is incomplete
- LATAM market sizing without country specificity — "LATAM" is not a market,
  Brazil and Mexico are two markets with different dynamics
- Citing Gartner or McKinsey reports without reading the methodology footnote —
  these are top-down, not bottoms-up, and investors know the difference

**Kawasaki variant (pre-seed):** Market size slide can be qualitative at pre-seed.
"We believe X million people have this problem; here is our plan to reach the first
10,000" is acceptable when there is no ARR to triangulate.

---

## Slide 6 — Competition

**What investors want to see:**
- A 2×2 matrix with axes that are genuinely differentiating for this market
- All credible competitors placed honestly — including near-substitutes like Excel
- A clear reason why the startup occupies a defensible quadrant

**Data required:**
- 2–4 direct competitors with public information (pricing, user count, funding)
- 2×2 axes that matter to the ICP (not generic "price vs quality")
- Moat explanation: why incumbents won't simply copy the differentiation

**Common failure modes:**
- "No competitors" — this claim is disqualifying in 100% of investor meetings.
  Either you're wrong, or the market doesn't exist.
- 2×2 with magic quadrant where startup wins both axes and all competitors cluster
  in the lower-left — investors don't believe it
- Failing to address why Salesforce/QuickBooks/Google won't add your feature —
  "we're faster" is not a moat; regulatory integration complexity, distribution
  lock-in, or switching costs are moats

**Kawasaki variant (pre-seed):** Competition slide can focus on alternatives
(how customers solve the problem today: Excel, paper, freelance accountants) rather
than named software competitors if direct competitors are nascent.

---

## Slide 7 — Product

**What investors want to see:**
- Current product state (live, not roadmap) — depth over breadth
- Roadmap with 1–3 milestones in next 12 months, not 30 features
- Technical differentiation that would take competitors >12 months to replicate

**Data required:**
- Screenshot or architecture diagram of current live product
- Current active users/customers (different from registered users — be precise)
- 1 technical barrier to replication (regulatory integration, proprietary dataset,
  network effect)
- Roadmap items ranked by customer impact, not feature count

**Common failure modes:**
- Showing mockup instead of live product for Seed/Series A — investors assume
  the real product is worse; they're usually right
- Roadmap that lists 20 features without priority or timeline
- Product slide identical to Solution slide — Solution is "what it does"; Product
  is "how it works and where it's going"

---

## Slide 8 — Business Model

**What investors want to see:**
- Pricing model with specific numbers (monthly price per tier, transaction fee %, etc.)
- Unit economics: CAC, LTV, LTV/CAC ratio, payback period
- Gross margin — the structural economics of the business

**Data required:**
- Pricing tiers with current prices (not ranges — specific numbers)
- CAC (blended, and by top acquisition channel)
- LTV (based on average contract value × average customer lifetime)
- LTV/CAC ratio
- Gross margin %
- Payback period in months

**Common failure modes:**
- "We'll charge a SaaS fee" with no numbers — investors cannot model the business
- CAC without channel breakdown — self-serve and enterprise-assisted CAC are
  different businesses; mixing them hides economics
- LTV without stating churn assumption — "LTV = $X" is meaningless without
  the churn rate that generated that LTV
- Gross margin below 60% for SaaS is a yellow flag; below 40% is a red flag for VCs

**LATAM-specific benchmarks:**
- LTV/CAC: ≥3:1 is the floor investors cite, ≥5:1 reads as strong (directional)
- CAC payback: under 12 months reads as good at seed (directional); state the gross-margin
  basis. No verified LATAM payback benchmark exists

---

## Slide 9 — Team

**What investors want to see:**
- Domain expertise specific to this problem (not generic "10 years in tech")
- Prior startup or operator experience at relevant scale
- Evidence the team has worked together or will work well together

**Data required:**
- Founder names, titles
- Specific prior achievement (not "worked at Google" — "led growth at Google Pay
  in Brazil from 0 to 2M users in 18 months")
- Why this team is uniquely qualified for this specific problem
- Advisor credentials that matter for distribution or fundraising

**Common failure modes:**
- Headshots and company logos with no achievement statements
- "We're passionate about this problem" — passion is not a qualification
- Advisor slide that lists 10 advisors with no description of what they advise —
  3 advisors with clear roles > 10 names without context
- Missing a critical team gap (no technical co-founder for tech company) — better
  to acknowledge and explain the hiring plan than to pretend it's not a gap

---

## Slide 10 — Financials

**What investors want to see:**
- Current ARR/MRR (as of a specific date — not "approximately")
- Burn rate and runway in months
- Use of funds from this raise mapped to specific milestones
- 3-year projection with the assumptions that drive it (not just the output lines)

**Data required:**
- Current ARR (exact, as of a specific date)
- Monthly burn
- Runway (months at current burn)
- Use of funds: specific allocation ($X to engineering, $Y to sales, $Z to marketing)
- Milestone timeline: what does $X raise buy in terms of metrics achieved?
- 3-year model with 3 visible assumptions (growth rate by channel, churn rate,
  headcount-to-revenue ratio)

**Common failure modes:**
- Hockey stick with no assumptions — the J-curve is not a financial model
- "18 months runway" without stating burn — investors will ask
- Use of funds stated as percentages without dollar amounts
- Projections that don't match current growth rate — if you're growing 10% monthly
  now, a projection showing 30% monthly in year 2 needs an explicit inflection rationale

**For Series A specifically (YC Series A Diligence Checklist alignment):**
- Must include: monthly cohort retention chart, CAC by channel, net revenue retention,
  ARR bridge (new logo + expansion - churn) — these are diligence requirements, not optional
- Source: https://www.ycombinator.com/library/3h-series-a-diligence-checklist

---

## Benchmark Summary Table

| Slide | Top Mistake | Data That Fixes It |
|-------|------------|-------------------|
| 1. Company Purpose | Tagline instead of purpose | One declarative sentence: verb + object + beneficiary |
| 2. Problem | Not quantified | # people × pain size (time or money lost) |
| 3. Solution | No product visual | Screenshot or demo gif of live product |
| 4. Why Now | "Market is ready" | Named trigger event with date and impact |
| 5. Market Size | Top-down TAM | ICP count × ACV = SAM (bottom-up) |
| 6. Competition | "No competitors" | 2×2 with honest competitor placement |
| 7. Product | Roadmap, not current state | Screenshots + 1 technical barrier to replication |
| 8. Business Model | No unit economics | CAC, LTV, LTV/CAC, payback period, gross margin |
| 9. Team | Logos without achievements | Specific metric earned at prior company |
| 10. Financials | Hockey stick without assumptions | Driver-based model with visible assumptions |

Source: [Sequoia Capital — Writing a Business Plan](https://www.sequoiacap.com/article/writing-a-business-plan/)
