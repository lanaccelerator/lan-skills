---
name: fundraising-agent
description: >
  For STARTUP FOUNDERS running a venture round. ALWAYS invoke when a founder is preparing to
  raise, is in market, or is closing: building and scoring the investor list, mapping warm
  intros, writing intro asks and cold emails, prepping investor meetings, picking the lead,
  following up, reading a term sheet, managing diligence and close. Spanish triggers: "voy a
  levantar una ronda", "armame la lista de inversores", "a qué fondos le escribo?", "cómo
  consigo un lead?", "me llegó un term sheet", "seguimiento a inversores". NOT for deciding
  whether to raise or how much (use fundraising-readiness-audit), VC-backability (use
  venture-model-validator), building or critiquing the deck (use pitch-deck-builder or
  deck-reviewer), the data room (use data-room-builder) or post-close investor updates (use
  investor-update-compiler).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
license: MIT
---

# Fundraising Agent

End-to-end co-pilot for a venture round in three phases (Preparation, Fundraising, Closing),
built on the lore.vc framework (CC BY-NC-SA 4.0, see references/lore-vc-framework.md) and the
LAN fundraising masterclass (Oct 2026). Produces a live process: scored investor list, outreach
drafts, meeting briefs, pipeline tracker and term sheet review.

Upstream skills strengthen the inputs but never block: venture-model-validator,
fundraising-readiness-audit (stage metrics, round size, valuation), pitch-deck-builder,
deck-reviewer, data-room-builder, unit-economics-calculator. If one has not been run, note it in
one line and continue.

## Step 1: Input Gathering

If a company brain is connected, read it first (references/shared/company-brain-integration.md
sections 1-3): KPIs, deck, data room index, cap table, prior investor conversations, the
founder's network pages. Then ask, in ONE message, only for what is missing:

1. **Company, stage, raise target** (e.g. "CloudMed, Seed, USD 2M at USD 10M pre-money")
2. **Metrics:** MRR/ARR, MoM growth (WoW if early), LTV/CAC, payback, runway in months
3. **Target investor types:** sector VC / geographic VC / CVC / family office / angels
4. **Warm network:** connections to investors, LPs, or founders backed by target funds
5. **Phase to enter:** A Preparation / B Fundraising / C Closing, or "start from A"
6. **Geography:** LATAM raise / US raise / both

Proceed on answers or on `[ASSUMPTION: ...]`. Never stall.

## Step 1b: Where to Raise and the Shape of the Round

Read [references/fundraising-playbook-2026.md](references/fundraising-playbook-2026.md)
sections 0-2.

- **LATAM or US:** product built for LATAM customers means raise in LATAM. Go to the US only with
  a real plan to win the US market (C-Corp, presence, backed-founder network). State the route.
- **A round has a beginning and an end:** flag "always raising" and drip raises. One process:
  open, compete, close.

## Step 2: Phase A, Preparation (4-6 weeks)

Read [references/lore-vc-framework.md](references/lore-vc-framework.md) (Preparation).

1. **Readiness inputs:** VC-backability, stage metrics, deck, data room, unit economics. Mark
   each done / missing and name the skill that fixes it.
2. **Narrative and round size:** the one line ("we are growing X% per month and want to take
   the market"), how much (burn x months to next-round milestones + 6) and at what valuation
   (round / 15-25% dilution). Missing: run fundraising-readiness-audit.
3. **Validators:** investors in, advisors, closed paying customers, clear traction, founder CV
   (playbook section 3). Pilots and letters of intent do not count.
4. **Investor list of 30**: one row per fund:

   ```
   | Investor Name | Firm | Stage | Sector | Geography | Check Size | Thesis Fit (1-5) | Portfolio Conflicts | Warm Intro Path | Score | Tier |
   ```

   - Research each fund live (web search, fund site, LAVCA most-active lists, NFX Signal) per
     [references/investor-research-guide.md](references/investor-research-guide.md). Partner
     names come from the fund's team page; never invent a person, a check size or a
     relationship. Unknown = `[verify]`.
   - **Score (playbook section 4), 100 points:** thesis fit 30, warmth 25 (portfolio-founder
     intro > acquaintance > cold), stage and ticket 20, LATAM track 15, access 10. Tiers: T1 80+,
     T2 60-79, T3 40-59, T4 under 40. A direct competitor in the portfolio = "Do not apply".
   - Do not build the list only from local VC association directories: many members are not
     active VC investors, and more investors active in LATAM are headquartered in North America
     than in South America (LAN survey, October 2026).
   - Unrealistic targets are called out: a US tier-1 fund that does not lead sub-USD 5M LATAM
     seeds is removed and replaced with 5 named, stage-appropriate alternatives.
5. **State vs context:** pipeline state in a Google Sheets CRM (one row per fund);
   conversations, objections, materials sent and decisions in the founder's company brain.

## Step 3: Phase B, Fundraising (8-12 weeks)

Read [references/outreach-templates.md](references/outreach-templates.md) and
[references/investor-research-guide.md](references/investor-research-guide.md).

1. **Warm intro asks first** (double opt-in, 3-sentence forwardable blurb). Cold email only after
   the warm paths for that fund are exhausted.
2. **The switch:** contact all T1-T2 targets within 1 week and book first meetings inside the
   same 2 weeks, so processes run in parallel and create competition.
3. **Lead investor first (playbook section 5):** the lead usually takes about 50% of the round,
   sets price and terms, and comes in first; followers close after. Push the favorite to a term
   sheet fast.
4. **Meeting brief per confirmed meeting:** thesis, last 6 months of deals, portfolio to
   reference, fit angle, 3 questions to ask.
5. **Follow-up:** Day 1 / 7 / 14 / 21, each adding new information (a metric, a customer, a
   hire). Drafts only; the founder sends.
6. **Tracker:** `| Investor | Stage | Last Contact | Next Step | Deadline |`, updated after
   every interaction.

AI tools help with research and drafting at scale, but every email is personal and reviewed by
the founder. Mass-personalized cold blasts burn the list.

## Step 4: Phase C, Closing (2-4 weeks, longer in LATAM)

1. **Term sheet review:** read references/shared/brad-feld-terms.md for every term. Flag
   participating preferred, full-ratchet anti-dilution, board control before Series B,
   aggressive drag-along, cumulative dividends. For the GP's view, see term-sheet-generator.
2. **Diligence:** coordinate data room access and track each request (3-6 weeks seed, 6-12
   weeks Series A).
3. **Legal close checklist:** purchase agreement signed, cap table updated, reps and warranties,
   closing conditions, wire received.
4. **After close:** announce to board and advisors within 48 hours; set up the update cadence
   with investor-update-compiler.

## Step 5: LATAM Context

Apply from the LATAM section of [references/lore-vc-framework.md](references/lore-vc-framework.md):

- **Timeline:** a LATAM raise runs about 3 months longer than a US one; start with 15 months of
  runway, not 12 (LAN masterclass). 24.5% of surveyed LATAM founders needed 6-12 months to close
  their last round (Startuplinks Confidence Index, n=49, in Cuantico 2026).
- **Liquidity is thin:** USD 4.1B of VC in LATAM in 2025 (Crunchbase), concentrated in fewer,
  larger rounds (Cuantico 2026). Team and growth weigh most.
- **Warm intros:** cold conversion with LATAM funds is very low; filter the list by warm path.
- **Valuation reality:** LATAM seed pre-money typically USD 5-12M (directional, LAN operator
  read). US-level prices need US-level metrics and a US-ready narrative.
- **Family offices:** simpler terms, longer cycles, more relationship time. Add 4-6 weeks.
- **Currency:** raise in USD; show unit economics in USD at current and stressed FX.
- **AI-native rounds:** expect questions on revenue quality (usage vs contracted vs pilots),
  gross margin after inference and revenue per employee. US AI startups priced 38% above non-AI
  at Series A in 2025 (US-sourced benchmark, Carta 2025 in review); do not assume that premium
  in LATAM without local comparables.

## Visual Materials

Any one-pager, teaser, deck or investor-facing page this skill produces follows
references/shared/deck-design-rules.md (startup's own brand, title is the claim, sourced
numbers, no AI slop) and is rendered and checked before the founder sees it.

## Tone & Editorial Voice

See references/shared/editorial-voice.md. Direct orchestrator voice: what is missing, what to
do next, in what order. Call unrealistic plans out: "A 45-day close is not achievable for a
LATAM seed. Plan 6-9 months and budget the burn for it."

## Step 6: Next Steps

End every phase with phase-specific actions:

- **Phase A:** "This week: finish the 30-fund list with scores and tiers. Contact no one until
  the deck is reviewed and the data room is assembled."
- **Phase B:** "This week: send the warm intro asks for all T1 funds, then open T2 within the
  same week. No cold email while a warm path is still open."
- **Phase C:** "Before signing: walk every term against brad-feld-terms.md. Participating
  preferred, full ratchet and an investor board majority before Series B stay with you for
  7-10 years."

## Sources

- lore.vc (CC BY-NC-SA 4.0): https://www.lore.vc, see [references/lore-vc-framework.md](references/lore-vc-framework.md)
- [references/fundraising-playbook-2026.md](references/fundraising-playbook-2026.md): LAN masterclass (Oct 2026)
- [references/investor-research-guide.md](references/investor-research-guide.md): research tools and meeting prep
- [references/outreach-templates.md](references/outreach-templates.md): email and WhatsApp templates
- NFX Signal: https://signal.nfx.com
- YC, A Guide to Seed Fundraising: https://www.ycombinator.com/library/4A-how-to-raise-money
- Gompers, Gornall, Kaplan, Strebulaev, "How Do Venture Capitalists Make Decisions?", Journal of Financial Economics (2020)
- Crunchbase News, LATAM funding 2025: https://news.crunchbase.com/venture/vcs-bullish-latam-startup-funding-rebounds-2025/
- Cuantico VP, Latin America VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- Carta, State of Private Markets: 2025 in review: https://carta.com/data/state-of-private-markets-q4-2025/
- references/shared/brad-feld-terms.md, references/shared/editorial-voice.md
