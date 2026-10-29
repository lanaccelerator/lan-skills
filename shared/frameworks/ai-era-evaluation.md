# AI-Era Deal Evaluation (2024-2026)

**Sources:**
- [AI Will Eat Application Software — a16z](https://a16z.com/good-news-ai-will-eat-application-software/)
- [The State of AI 2025 — Bessemer](https://www.bvp.com/atlas/the-state-of-ai-2025)
- [VCs Betting on AI 2025 — The VC Corner / Redpoint](https://www.thevccorner.com/p/vcs-betting-on-ai-2025)
- Augustin Sayer, "The Hidden Fragility of AI-Era Revenue"; ICONIQ State of AI 2026; SaaS CFO "AI ARR vs SaaS ARR"
- [Cursor breakdown — Contrary Research](https://research.contrary.com/company/cursor); [Sacra](https://sacra.com/research/cursor-at-100m-arr/)
- [Rebel Fund AI DD checklist](https://rebelfund.vc); [The Investment Memo — NextView](https://nextview.vc/blog/the-investment-memo/); [Sequoia Arc / PMF Framework](https://www.sequoiacap.com/article/pmf-framework/)

**License/Attribution:** Synthesized from public sources. Cite each individually in output.
**When to use:** deal-memo-writer loads this when the company is AI-native or AI-core. These dimensions are what classic 2010s memos miss.

---

## Core principle

Better models do not make the application layer thinner — they make it more capable, because the hard part was never raw intelligence, it was knowing what to do with it (a16z). But most AI revenue is *rented demand*: easy to start, easy to switch, easy to price-compress. The job of the memo is to separate durable value from a viral spike.

## 1. AI moats — what is real

Rank the moat. From classic 2010s thinking the durable AI-era moats are:

| Moat | What it means | Test |
|------|---------------|------|
| **Process power** | The software encodes opinions about how a function should operate (a "stored process"). | Does using it change the org's workflow such that ripping it out breaks operations? |
| **Proprietary data** | Data competitors and base models cannot access; a flywheel where usage generates labeled outcomes. | Every transaction adds data nobody else has? Or is it public/scrapable? |
| **System of record** | The product becomes the authoritative store for a workflow's state/outcomes. | Is it the source of truth, or a thin layer on top of one? |
| **Network effects** | Classic; see NfX 16 types. | Which type, and where on the ladder? |

**Wrapper risk (mandatory check for AI deals):** if the product relies primarily on third-party foundation models with no proprietary data or lock-in, it has "limited control over its core technology stack" and a single model update can erase it (Contrary on Cursor). Name the dependency explicitly. The mitigant is the data flywheel or system-of-record position, NOT "better UX + a head start." Distribution/incumbent bundling (e.g., Microsoft via GitHub) can also erase a wrapper.

**Redpoint's new questions:** (1) Is there an effective **wedge** — a narrow high-urgency use case users love, not a top-down "try AI" pilot? (2) How far can it **expand** from the wedge? (3) Will **quality** matter — does pricing power come from accuracy rather than cost? Accuracy-driven markets are more durable.

**Co-pilot vs agent test:** "Does this replace work or just recommend it?" Products that don't automate a complete outcome are treated as features, not investable businesses.

## 2. Revenue quality — the biggest new dimension

AI ARR is not SaaS ARR. Demand to see the split and underwrite the durable part.

| Signal | Healthy | Fragile |
|--------|---------|---------|
| ARR composition | mostly **contracted** | mostly **usage** annualized from one peak month |
| Customer concentration | top-3 < 30% | revenue from design partners who are also investors/affiliates |
| Gross margin | > 70%, inference < 15% of revenue | < 50%, inference ~25% of revenue |
| Retention | cohorts flat past 90 days | viral spike that decays within months |

- "Spikes are not moats." Fast growth + low gross margin is a different asset than fast growth + 75-90% gross margin.
- **Emergent-ARR caution:** several creative/video tools hit 8-9 figures of run-rate via viral demos, then stalled or declined within months. Buyers now discount headline ARR. Split **contracted vs usage vs pilot/PoC**.
- Cost to query a GPT-3.5-level model fell ~280x between Nov 2022 and Oct 2024 — first-mover features get commoditized; price the durability, not the spike.
- **CAC payback + NRR** are the two strongest predictors of long-term profitable growth. NRR: best-in-class > 130%, good 100-120%, concerning < 100%.

## 3. Bessemer AI archetypes — classify the deal

State which margin/retention profile you are underwriting:

- **Supernova:** ~$40M ARR year 1, ~$125M year 2; gross margins ~25% (often negative); ~$1.13M ARR/FTE. Explosive but fragile retention, thin margins.
- **Shooting Star:** ~$3M year 1, "Q2T3" path ($3M→$12M→$40M→$103M over 5y); ~60% GM; ~$164K ARR/FTE. Bessemer's verdict: "this era will be defined not by a few outliers but by hundreds of Shooting Stars — the most important benchmark for AI founders to aim for."

AI-native growth benchmarks (2025) vs B2B SaaS median: <$1M ARR 100% vs 75%; $1-5M 110% vs 40%; $20-50M 60% vs 35%; >$50M 40% vs 15%. AI gross margin runs ~5-10 pts below SaaS; ICONIQ: AI builders expect ~52% GM in 2026; 84% see ≥6% GM erosion from AI infra.

## 4. Modern red flags (2024-2026)

- **Round-tripping / circular revenue:** vendor-financed demand inflates revenue (macro: Nvidia↔OpenAI↔Microsoft↔Anthropic compute loops). At startup scale: revenue from design partners who are also investors. Validate revenue comes from genuine customers, not investor-backed spending.
- **Demo-vs-product gap:** is it a real product sellable as-is, or a demo? (Cursor's April 2025 support-bot fabricating a policy is the canonical reputational example.)
- **Headline-ARR inflation:** annualizing one usage-heavy month; counting discounted PoCs/design-partner revenue as ARR.
- **Foundation-model dependency:** "thin wrapper" risk; one model update erases the product.
- **Talent retention:** AI capability is embodied in people. Single-point-of-failure researchers; comp benchmarking; retention mechanisms.
- **Copyright / IP / freedom-to-operate:** training-data provenance. "Open-source license conflicts delayed or blocked 1 in 5 Series A closings in 2025."
- **GPU / compute access:** secured capacity vs spot dependence as a scaling risk.
- **Transient PMF:** retention past 90 days is the real test, not signups; early traction can erode as models evolve.

## 5. PMF archetype (Sequoia Arc) — label it

- **Hair on Fire:** urgent existing problem (fastest GTM; crowded).
- **Hard Fact:** must re-educate the market to change a process (slow; high switching).
- **Future Vision:** demand doesn't yet exist (highest risk and reward).

Stating the archetype forces clarity on GTM motion and the dominant risk.

## 6. Modern memo format notes

- Lead with a ≤2-sentence thesis + recommendation; cap "positives" at ~4 bullets.
- Make **risks/concerns first-class**, not an appendix.
- Add an explicit **pre-mortem** ("what kills this") and a **"what has to be true"** inversion block (Flyer One). Prospective hindsight improves identification of failure causes by ~30%.
- Close with a one-line "glimmer of greatness" vision and a single clear recommendation (NextView).

## AI-era good/bad examples

**Moat** — ❌ "Defensible: best UX + 6-month head start." ✅ "Defensibility is process power + proprietary data: we are the system of record for X workflow; every resolution adds labeled outcome data base models can't access. Wrapper risk is real; the mitigant is the data flywheel, not the model."

**Revenue quality** — ❌ "$20M ARR, growing 400% — Supernova." ✅ "$20M run-rate, but 70% usage and 35% from 3 design partners (2 are angels). Contracted ARR is $6M. Underwriting the Shooting Star case (~60% GM), flagging headline-ARR discount."

**Margins** — ❌ "SaaS-like ~80% GM at scale." ✅ "GM 41% today, inference ~25% of revenue. Path to 60% depends on model-cost decline + caching, not pricing. Value as AI, not SaaS."

**Pre-mortem** — ✅ "What kills this: (1) GPT-6 absorbs the workflow natively; (2) usage revenue churns >40% after novelty; (3) sole model author leaves; (4) training-data copyright suit blocks enterprise sales."
