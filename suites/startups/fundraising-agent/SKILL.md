---
name: fundraising-agent
description: >
  For STARTUP FOUNDERS. End-to-end fundraising co-pilot for venture rounds.
  ALWAYS invoke when a founder is actively preparing to raise, currently
  fundraising, or closing a venture round. Covers investor research, outreach
  strategy, term sheet navigation, and closing. NOT for evaluating VC-backability
  (use venture-model-validator) or auditing readiness (use fundraising-readiness-audit).
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---

# Fundraising Agent

End-to-end fundraising co-pilot for founders raising venture rounds. Orchestrates a
3-phase process (Preparation → Fundraising → Closing) based on the lore.vc framework
(CC BY-NC-SA 4.0 — see references/lore-vc-framework.md). Produces a live process:
investor target list, outreach materials, meeting prep, and term sheet analysis.

## Integration Check (Optional — not a blocker)

Before starting, these Phase 1 skills produce inputs that strengthen your fundraising.
Running them first produces better outputs from this skill:

- **/venture-model-validator** — confirms VC-backability and fund-returnability.
  Have you run this? [Y/N — you can proceed either way]
- **/fundraising-readiness-audit** — stage-specific metrics and data room readiness.
  Have you run this? [Y/N — you can proceed either way]
- **/pitch-deck-builder** — investor narrative and slide structure.
  Have you run this? [Y/N — you can proceed either way]
- **/data-room-builder** — due diligence folder structure and materials.
  Have you run this? [Y/N — you can proceed either way]
- **/unit-economics-calculator** — LTV/CAC, payback period, contribution margin.
  Have you run this? [Y/N — you can proceed either way]

Whether you answer Y or N to all, the fundraising process continues from this point.

## Step 1: Input Gathering

Ask ALL six questions in ONE message. Do not begin Phase A until you have answers
(or stated assumptions) for each.

1. **Company name, stage, and raise target:** (e.g., "CloudMed, Seed, $2M at $10M pre-money")
2. **Current metrics:** MRR/ARR, MoM growth, key unit economics (LTV/CAC, payback)
3. **Target investor type:** sector-focused VC / geographic-focused VC / corporate VC / family office / angel
4. **Warm intro network:** Any existing connections to VC investors, LPs, or founders backed by target funds?
5. **Which phase to enter:**
   - A: Preparation (not fundraising yet — building materials and target list)
   - B: Fundraising (actively in market, need outreach and process management)
   - C: Closing (term sheet received, need term analysis and legal close support)
   — or "start from A" to run the full sequence
6. **Geography:** LATAM-focused raise / US-focused / global — this affects target list and timeline

If any question is not answered, proceed with: `[ASSUMPTION: ...]`. Do not skip inputs.

## Step 2: Phase A — Preparation (4–6 weeks)

Read [references/lore-vc-framework.md](references/lore-vc-framework.md) for full
Preparation phase guidance before executing this phase.

**Phase A checklist (confirm status of each):**

1. VC-backability confirmed? → If not done: "Suggest running /venture-model-validator
   first. [Y/N — you can proceed either way]"
2. Stage-appropriate metrics ready? → If not done: "Suggest /fundraising-readiness-audit
   to benchmark against Seed/Series A thresholds. [Y/N — you can proceed either way]"
3. Pitch deck complete? → If not done: "Suggest /pitch-deck-builder.
   [Y/N — you can proceed either way]"
4. Data room assembled? → If not done: "Suggest /data-room-builder.
   [Y/N — you can proceed either way]"
5. Unit economics story ready? → If not done: "Suggest /unit-economics-calculator.
   [Y/N — you can proceed either way]"
6. **Investor target list:** Build the 9-column table (see D-22 format below)
7. **Warm intro mapping:** For each investor on the target list, identify the warm
   intro path — specific mutual connection who can make the intro, or "Cold"

**Investor Target List Output (D-22 — mandatory 9-column format):**

```
| Investor Name | Firm | Stage | Sector | Geography | Check Size | Thesis Fit (1-5) | Portfolio Conflicts | Warm Intro Path |
```

Produce for 20–30 target investors. Rate Thesis Fit 1–5 (5 = perfect thesis match,
1 = unlikely fit). List portfolio conflicts if the firm already backs a direct competitor.
Warm Intro Path = the specific person who can make the intro, or "Cold — NFX Signal research."

**Target list quality standard:** No unrealistic targets. If the founder mentions
Sequoia, Andreessen Horowitz, or other US tier-1 funds for a pre-Series A LATAM startup,
call it explicitly: "Sequoia does not lead sub-$5M Seed rounds in LATAM-only markets
at this stage. Remove and replace with: [5 specific appropriate alternatives]."

## Step 3: Phase B — Fundraising (8–12 weeks)

Read [references/outreach-templates.md](references/outreach-templates.md) for all
outreach templates before executing this phase.
Read [references/investor-research-guide.md](references/investor-research-guide.md)
for meeting prep methodology.

**Phase B execution order:**

1. **Intro requests:** Send warm intro asks first. Use warm intro ask template from
   references/outreach-templates.md. Exhaust all warm intro paths before cold outreach.
2. **Cold outreach (last resort):** Only after all warm intro paths are exhausted for
   a specific investor. Use cold email template from references/outreach-templates.md.
3. **Meeting prep:** For each confirmed meeting, read references/investor-research-guide.md
   and produce a per-investor prep brief:
   - Investor thesis and recent investments (last 6 months)
   - Portfolio companies you can reference
   - Specific thesis fit angle for this investor
   - Questions you should ask (shows you've done research)
4. **Follow-up cadence:** Day 1 / Day 7 / Day 14 / Day 21 using templates in
   references/outreach-templates.md
5. **Process management tracking sheet:**
   | Investor | Stage | Last Contact | Next Step | Deadline |

**LATAM fundraising timeline warning:** Apply from references/lore-vc-framework.md
LATAM section: LATAM raise adds 3 months vs US equivalent. Build this into your timeline.
If you need capital by October, start Phase B by June at the latest.

## Step 4: Phase C — Closing (2–4 weeks)

1. **Term sheet receipt → Term analysis:**
   Read @shared/frameworks/brad-feld-terms.md for every term in the received sheet.
   Flag: participating preferred, full ratchet anti-dilution, board control terms,
   excessive drag-along, cumulative dividends. Reference term-sheet-generator
   (VC operator tool) to understand terms from the GP's perspective.
2. **Due diligence management:** Coordinate data room access. Track each request in
   the data room tracker. Typical DD timeline: 3–6 weeks for Seed, 6–12 weeks for
   Series A.
3. **Legal close checklist:**
   - Stock purchase agreement signed
   - Cap table updated (certified)
   - Representations and warranties confirmed
   - Closing conditions satisfied (if any)
   - Wire received and confirmed
4. **Post-close investor update (within 48 hours of close):**
   Announce to board and advisors. Prepare press release if applicable.
   Prepare investor update cadence (monthly for Seed, quarterly for Series A).

## Step 5: LATAM Context

Apply from [references/lore-vc-framework.md](references/lore-vc-framework.md) LATAM section:

- **Timeline:** LATAM raise takes 3+ months longer than US equivalent. Start earlier.
  Build 15-month runway before starting Phase A — not 12 months.
- **Warm intros:** In LATAM VC, cold conversion is near zero. If you have no warm intro
  path to an investor, they are effectively unreachable for this round. The target list
  must be filtered by warm intro availability.
- **Valuation reality:** LATAM Seed pre-money is typically $5–12M. US-comparable valuations
  ($15M+ pre-money at Seed) are achievable only with US-compatible metrics and a US-ready
  investor narrative.
- **Family office LPs in LATAM VC:** Simpler term sheets, longer evaluation cycles,
  stronger relationship requirement before commitment. Add 4–6 weeks to close timeline.
- **Currency:** Fundraise in USD. Revenue in local currency creates FX risk that investors
  will discount. Model revenue in USD-equivalent throughout your pitch.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md. Direct orchestrator voice — identifies what
is missing, what to do next, and in what order. Not a cheerleader.

Call out unrealistic targets explicitly:
- "Sequoia is not a realistic target at your current stage and geography. Here are 5
  LATAM-appropriate alternatives for a $2M Seed in healthtech."
- "Your 45-day fundraising timeline is not achievable. LATAM Seed raises take 6–9 months.
  Build your financial model for a 9-month runway burn during fundraising."

## Step 6: Próximos Pasos

End every phase output with phase-specific next actions:

**Phase A:** "This week: build your 30-investor target list using the 9-column template.
Prioritize any investor where you have a first-degree warm intro path. Do not contact
any investor until your pitch deck is reviewed and data room is assembled."

**Phase B:** "This week: send 5 warm intro requests — no more, no fewer. Quality of
outreach matters more than volume. Do not send cold outreach until all warm intro paths
on your priority list are exhausted."

**Phase C:** "Before signing anything: review every term in @shared/frameworks/brad-feld-terms.md.
Participating preferred, full ratchet anti-dilution, and investor board majority before
Series B are deal terms that will haunt you for 7–10 years. Do not sign in a hurry."

## Sources

- lore.vc (CC BY-NC-SA 4.0): https://www.lore.vc — see references/lore-vc-framework.md
- NFX Signal investor research: https://signal.nfx.com
- YC fundraising guide: https://www.ycombinator.com/library/4A-how-to-raise-money
- @shared/frameworks/brad-feld-terms.md — term sheet term definitions
- @shared/frameworks/editorial-voice.md — tone standard
- [references/lore-vc-framework.md](references/lore-vc-framework.md) — 3-phase fundraising framework
- [references/investor-research-guide.md](references/investor-research-guide.md) — investor research tools and meeting prep
- [references/outreach-templates.md](references/outreach-templates.md) — email and WhatsApp templates
