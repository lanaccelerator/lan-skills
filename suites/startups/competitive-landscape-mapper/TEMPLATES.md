# Competitive Landscape Mapper: Output Template

ALWAYS use this exact structure. Every section is required. Do not change
headings, table columns, or field order. Fill every section with real analysis
based on the user's actual market, no placeholders.

Output includes: baseline test (Claude/ChatGPT doing it alone), 2x2 competitive matrix,
competitor profile table, differentiation matrix, Porter's Five Forces risk table,
defensibility analysis, LATAM context, watch list for competitor-watch, and Próximos Pasos.
The "Claude/ChatGPT alone" row and column are mandatory in every map.

---

## Example Output: TalentBR

*This is a filled example for TalentBR, a hypothetical São Paulo HR tech SaaS
for SME recruitment automation in Brazil, raising a Seed round. Use this as the
structural template for every competitive landscape analysis. RecrutaPro and VagaFácil are
hypothetical competitors; in a real run every competitor fact (funding, customers, pricing,
acquisitions) comes from a dated, linked source.*

---

# Competitive Landscape: TalentBR

**Date:** April 2026
**Stage:** Seed
**Market:** Brazilian SME recruitment automation (10–500 employees)
**Geography:** Brazil-first, Andean expansion Year 2
**Analyzed by:** LAN Skills via Claude

---

## Baseline Test: Claude/ChatGPT Doing It Alone

Tested by hand with 3 anonymized tasks from a pilot customer, in Claude and ChatGPT, using
only what an SME HR manager would paste in. What the user gets: a general assistant at about
US$20 per user per month.

| Task | What Claude/ChatGPT alone does | Share of the job | Why they would still pay TalentBR |
|------|-------------------------------|------------------|-----------------------------------|
| Write the job post for a warehouse supervisor | Writes a solid post in Portuguese in one minute | 100% | They would not pay for this. Job-post writing is commodity; do not sell it. |
| Screen 200 applications from Catho and Infojobs | Ranks CVs the user pastes in, about 20 at a time; no pipeline, no history | 25% | TalentBR pulls applications from the job boards automatically, screens all 200, keeps the history and stores candidate data under LGPD rules |
| Check the offer against CLT rules and file the e-Social event | Explains the rules in general terms | 25% | TalentBR fills the 12 CLT fields and submits e-Social; an error has a fine, and the assistant does not answer for it |

**Verdict:** the assistant covers the writing and part of the screening for free. TalentBR's
paid value is the workflow lock-in (job boards in, e-Social out) and compliance it answers
for. Remove "AI-written job posts" from the pitch; lead with automated screening of the full
pipeline plus compliance. No `[RED FLAG: ASSISTANT SUBSTITUTE]`: the share is under 80% on the
paid tasks.

---

## 2×2 Competitive Matrix

**Axes:**
- **X-axis:** LATAM product fit (Low = generic product, not localized → High = built specifically for LATAM SME workflows and compliance)
- **Y-axis:** Automation depth (Low = job posting only → High = full candidate pipeline automation, screening, and scheduling)

**Rationale:** TalentBR's differentiation is the intersection of deep LATAM localization
(CLT compliance, PIX salary disbursement, local job board integrations) with high automation
depth. These axes show where TalentBR wins, US incumbents have automation but no LATAM fit;
local players have LATAM fit but limited automation.

**Quadrant Map:**

```
High Automation
       │
       │   Workday [US incumbent]     │   TalentBR [YOU, upper-right]
       │   SAP SuccessFactors          │
       │   (automation-heavy, generic)│   (LATAM-specialized + high automation)
       │                              │
───────┼──────────────────────────────┼──────────────────────────
       │                              │
       │   Manual agencies            │   VagaFácil [LATAM native]
       │   Excel + WhatsApp           │   RecrutaPro (limited automation)
       │   Claude/ChatGPT alone       │   (LATAM fit, low automation)
       │   (low fit, low automation)  │
       │                              │
                                   LATAM Fit
Low Automation
```

**Reading the matrix:** TalentBR occupies the upper-right quadrant (high automation +
high LATAM fit), a position currently uncontested. Claude/ChatGPT alone sits low on both
axes: it automates single tasks the user pastes in, not the pipeline, and knows CLT only in
general terms. The risk is that RecrutaPro or VagaFácil
adds automation capabilities before TalentBR achieves scale. That is the primary
competitive threat, not Workday.

---

## Competitor Profile Table

| Name | Stage | Funding | Model | Strengths | Weaknesses | Type |
|------|-------|---------|-------|-----------|------------|------|
| Workday | Public (NASDAQ: WDAY) | n/a (public) | Enterprise SaaS, seat-based | Brand, integrations, global ATS | No LATAM-specific SME product, no Portuguese UX, pricing inaccessible for SMEs | Indirect (different segment) |
| SAP SuccessFactors | Public | N/A (SAP subsidiary) | Enterprise SaaS, seat-based | SAP ERP integration, global compliance | Same as Workday, enterprise-only, no LATAM SME focus | Indirect (different segment) |
| RecrutaPro | Series B | ~$35M | Mid-market SaaS, per posting + seat | Brazil-native, strong brand in mid-market, 2,500+ clients | Limited automation, no SME pricing tier, ATS-only (no payroll or onboarding) | Direct (same market, less automation) |
| Claude/ChatGPT alone (baseline) | General AI assistant | n/a | About US$20/user/month subscription | What the user gets: job posts, CV ranking for pasted batches, general CLT explanations, in Portuguese, instantly | Why they would still pay TalentBR: no job-board integration, no pipeline or history, no e-Social filing, no LGPD-grade candidate storage, nobody answers for a compliance error | Substitute (mandatory baseline) |
| VagaFácil | Acquired (2022) | N/A (a local ERP vendor) | SME SaaS, bundled with a local ERP | SME distribution through a local ERP vendor channel, CLT compliance | Bundled product, weak standalone, poor UX, no automation innovation since acquisition | Direct (same segment, legacy product) |

*[Added by analysis]* **Indeed/LinkedIn:** Indirect substitute, large Brazilian employers use
job boards as a discovery channel. SMEs under 50 employees often rely solely on LinkedIn
for hiring. TalentBR must show it reduces reliance on these platforms, not competes with them.

---

## Differentiation Matrix

| Capability | TalentBR | Workday | RecrutaPro | VagaFácil | Claude/ChatGPT alone |
|------------|----------|---------|------|--------|--------|
| Portuguese-native UX | ✓ Built-in | ✗ Translation layer only | ✓ Native | ✓ Native | ✓ Native |
| CLT compliance automation | ✓ Full, automates 12 compliance fields | ✗ Manual compliance, consultant-managed | ~ Partial, job posting compliance only | ✓ Via a local ERP vendor integration | ✗ General explanation only |
| PIX salary disbursement integration | ✓ Direct API | ✗ Not available | ✗ Not available | ~ Via a local ERP vendor payroll | ✗ Not available |
| SME pricing (<50 employees) | ✓ R$299/month flat | ✗ Enterprise pricing only ($30k+ ACV) | ~ R$499+/job posting | ✓ Bundled, unclear standalone | ✓ About US$20/user/month |
| AI candidate screening | ✓ Core feature, 85% screening automation | ~ Basic ATS filtering | ✗ Manual review required | ✗ No AI capabilities | ~ Pasted batches only, no pipeline |
| Local job board integrations (Catho, Infojobs, VAGAS) | ✓ All three integrated | ✗ LinkedIn/Indeed only | ✓ Catho + Infojobs | ~ Catho only | ✗ None |
| Onboarding workflow automation | ✓ Digital onboarding + document signing | ~ Via Workday modules (+cost) | ✗ ATS only, no onboarding | ✓ Via a local ERP | ✗ None |

**Reading the matrix:** TalentBR's differentiation is strongest on the intersection of
SME pricing + CLT automation + PIX integration. This is the stack of capabilities that
a local SME cannot replicate with Workday (too expensive), RecrutaPro (too manual) or a
general AI assistant (no integrations, no compliance filing).

---

## Porter's Five Forces Assessment

| Force | Risk Level | Commentary |
|-------|-----------|------------|
| Threat of new entrants | Medium | Building CLT compliance automation and PIX integration requires 6–12 months of local legal and payment engineering. Capital requirements are not trivial for a new entrant. However, RecrutaPro or an international HR tech player (Deel, Rippling) with LATAM ambitions could enter this segment with funding. |
| Supplier power | Low | No single supplier has pricing power. Job board integrations (Catho, Infojobs) are non-exclusive. AWS/cloud infrastructure is commoditized. No key person dependency on any external provider. |
| Buyer power | Medium | Brazilian SME market is fragmented, no single buyer segment has pricing leverage. However, SMEs are price-sensitive and can churn to a cheaper solution without meaningful switching costs early on. This changes once CLT compliance data is embedded in TalentBR workflows. |
| Threat of substitutes | High | The primary substitute is the incumbent behavior: WhatsApp + Excel + Catho job posting, now often with Claude or ChatGPT writing the posts and ranking pasted CVs. This requires almost no learning curve, about US$20/month, and zero vendor dependency. TalentBR must show a 3× time-to-hire improvement to displace this substitute. |
| Industry rivalry | Medium | RecrutaPro holds the mid-market. VagaFácil holds legacy SME (diminishing). TalentBR enters an underserved niche. Rivalry intensifies if RecrutaPro launches a downmarket SME pricing tier, this is the primary competitive threat to monitor. |

**Biggest structural threat:** Substitute behavior (WhatsApp + Excel + free job boards +
a general AI assistant) is harder to displace than any named competitor. The product must eliminate friction, not just
add features.

---

## Defensibility Analysis

### Current Moats (Built Today)

| Moat | Status | Evidence |
|------|--------|----------|
| LATAM compliance data | Early, CLT compliance rules are encoded, not yet proprietary | 12 CLT compliance fields automated. As more companies use TalentBR, compliance data improves. Not yet a data moat, still an engineering advantage. |
| Local payment integration (PIX) | Real, PIX API integration is built and tested | Workday and RecrutaPro do not have this. However, any engineer can replicate it in 3–6 months. This is a head start, not a structural moat. |
| SME distribution | Early, 47 customers | Not yet a channel moat. Becomes meaningful at 500+ customers with referral network effects among SME owner networks. |

### Required Moats at Series A (18–24 months)

| Moat Required | Why | How to Build It |
|---------------|-----|-----------------|
| Workflow switching costs | Without deep workflow integration (payroll, compliance calendar, employee records), SME churn risk is high | Expand from ATS-only to end-to-end onboarding + payroll data handoff, creates CLT compliance data that is costly to migrate |
| Employer network effect | SMEs in the same industry cluster hire from the same candidate pools | Build employer referral mechanics, "Hire from our network" feature creates indirect network effect among SMEs sharing candidate pools |
| Data moat (proprietary Brazilian SME hiring data) | 12–24 months of hiring patterns, CLT issue frequency, candidate quality by source, this data set is not replicable without scale | Instrument every hiring event and build a "Hiring Intelligence" report, proprietary insight that competitors cannot offer without the same data volume |

---

## LATAM Context

- **(LATAM)** RecrutaPro's recent price increases have created an SME churn wave, a distribution
  window for TalentBR. Brazilian SME owners talk to each other at industry events (FEBRABAN,
  ABComm, ABRH). Word-of-mouth in this segment travels through WhatsApp groups and industry
  associations, not review sites. TalentBR's go-to-market must include these channels.

- **(LATAM)** Workday and SAP SuccessFactors have no meaningful LATAM SME sales motion -
  their Brazil revenue comes from large enterprises. This is a structural window: enterprise
  HR tech vendors have ignored Brazilian SMEs for 10+ years. TalentBR has 3–5 years before
  a RecrutaPro downmarket move or an international entrant (Rippling, Deel) builds LATAM SME fit.

- **(LATAM)** Regulatory moat opportunity: Brazil's e-Social (labor compliance reporting)
  was mandated for employers over 10 employees in 2023. TalentBR can build automated
  e-Social reporting as a compliance switching cost, once an employer relies on TalentBR
  for e-Social submissions, migration to a competitor requires migrating compliance records.
  This is a achievable regulatory moat within 12 months.

- **(LATAM)** Language: TalentBR operates entirely in Portuguese (Brazilian). Competitors
  entering from Argentina or Mexico face a full Portuguese localization requirement, 6–9
  months of investment that TalentBR's local team completes on day one.

---

## Watch List for competitor-watch

| Competitor | Pages to watch weekly | Signal that matters |
|------------|-----------------------|---------------------|
| RecrutaPro | Pricing page, changelog, careers page, blog | A new SME tier or price under R$300/month |
| VagaFácil | Product page, parent ERP release notes | Automation features after years without updates |
| Workday | LATAM newsroom, careers page (Brazil roles) | Hiring SME account executives in São Paulo |
| Rippling | Countries page, careers page | Brazil payroll or CLT support announced |
| Deel | Changelog, Brazil product pages | Local hiring workflow for SMEs |
| Claude/ChatGPT alone (baseline) | Release notes of both assistants | A connector or feature that files e-Social or integrates job boards |

---

## Próximos Pasos

1. **Build e-Social compliance automation (highest-priority moat):** E-Social reporting
   is mandatory for Brazilian employers over 10 employees. Automate the 6 most common
   e-Social event types within the TalentBR onboarding workflow. This creates a compliance
   switching cost that locks in customers who rely on TalentBR for regulatory reporting -
   a structural moat, not a feature.

2. **Turn on competitor-watch this week:** RecrutaPro's downmarket move is the #1 competitive
   threat. Hand the watch list below to competitor-watch for a weekly Monday summary (pricing
   page, changelog, careers page, blog), plus the Claude/ChatGPT baseline re-test. Also ask every
   new TalentBR customer "what did you use before?" to detect RecrutaPro churn patterns.

3. **Build employer referral mechanics within the product:** At 47 customers, TalentBR is
   below the network effect threshold. Build a feature that allows one TalentBR employer to
   share a candidate who did not get hired with a peer employer. This is the indirect network
   effect that makes the platform more valuable with each additional employer.

4. **Instrument hiring events for the data moat:** Every candidate screening decision,
   every CLT issue, every time-to-hire measurement is a data point. Instrument these events
   now. At 500 companies and 2 years of data, TalentBR will have a Brazilian SME hiring
   dataset that no competitor can replicate, turn it into a "Hiring Intelligence" product.

5. **Displace the WhatsApp substitute explicitly:** The primary competitor is not RecrutaPro -
   it is the WhatsApp + Catho workflow. Build a migration tool that imports a company's
   existing candidate WhatsApp history and Catho postings into TalentBR in under 15 minutes.
   Remove the switching friction before the product even launches.

---

## Sources

- Porter, "The Five Competitive Forces That Shape Strategy" (HBR 2008, updating the 1979 article): https://hbr.org/2008/01/the-five-competitive-forces-that-shape-strategy
- a16z, "The Empty Promise of Data Moats" (2019): https://a16z.com/the-empty-promise-of-data-moats/
- NFX, "The Network Effects Bible": https://www.nfx.com/post/network-effects-bible
- CB Insights Market Maps: https://www.cbinsights.com/research/report/venture-capital-market-maps/
