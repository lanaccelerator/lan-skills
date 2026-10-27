---
name: go-to-market-strategist
description: >
  For STARTUP FOUNDERS designing how to win customers. ALWAYS invoke when a founder asks how to
  acquire customers, which growth channels to use, how to define the ICP or beachhead, how to
  launch in a new market, or wants a 90-day GTM plan. Spanish triggers: "cómo consigo
  clientes?", "armame el plan go-to-market", "qué canales uso?", "cómo entro a México/Brasil?",
  "plan de 90 días para vender". Applies Moore (Crossing the Chasm), Weinberg (Traction, 19
  channels) and YC, with LATAM channel norms and AI-era sales tools. NOT for the step-by-step
  sales process and scripts (use sales-playbook-generator), price levels (use
  pricing-strategy-designer), a proposal for one deal (use lead-to-proposal), competitor
  mapping (use competitive-landscape-mapper), unit economics math (use
  unit-economics-calculator) or the pitch deck (use pitch-deck-builder).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: startups
license: MIT
---

# Go-to-Market Strategist

Designs a working GTM plan: beachhead segment, channel scorecard, acquisition plan per channel,
unit economics targets and a 90-day execution table. Moore for the segment, Weinberg's 19
channels for prioritization, YC for founder-led sales. Output is a plan to execute, not a deck.

## Step 1: Input Gathering

If a company brain is connected, read it first (references/shared/company-brain-integration.md
sections 1-3): customer list, win/loss notes, call notes, pricing, current channel results.
Then ask, in ONE message, only for what is missing:

1. **Company and one-sentence description**
2. **Business model:** B2B SaaS / B2C / marketplace / fintech / e-commerce / AI-native (seat,
   usage or outcome pricing) / other
3. **Stage:** pre-product / pre-revenue / early revenue (under USD 100K ARR) / growth (USD 100K+ ARR)
4. **Current customers:** number, segment, geography ("none" if pre-revenue)
5. **Top 3 competitors and the difference**
6. **Channels tried and results**: including what failed
7. **Deal size and sales cycle:** transactional (under USD 500) / SMB (USD 500-5K) / enterprise (USD 5K+)

Proceed on answers or on `[ASSUMPTION: ...]`. Never block.

## Step 2: Frameworks

Read [references/gtm-channels.md](references/gtm-channels.md) before scoring channels.

1. **Moore, Crossing the Chasm:** a beachhead narrow enough to dominate in under 12 months and
   large enough to be the reference for the next segment.
2. **Weinberg and Mares, Traction:** score all 19 channels, pick the top 3.
3. **YC and Paul Graham:** do things that don't scale; founder-led sales first; one channel
   until it breaks, then the second. Sources: https://paulgraham.com/ds.html,
   https://www.ycombinator.com/library/4D-yc-s-essential-guide-to-go-to-market
4. **Motion by stage:** founder-led sales, then repeatable sales or product-led adoption, then
   outbound at scale once CAC payback is proven.
5. **AI-era GTM:** read [references/ai-native-gtm.md](references/ai-native-gtm.md) when the
   product is AI-native or when the team will use AI tools in sales.

## Step 3: Workflow

1. **Beachhead:** job title + company size + geography + trigger event. Not "SMBs in LATAM".
2. **Score the 19 channels** (1-5) for this model, stage and geography. LATAM channel behavior
   differs from the US: read [references/latam-context.md](references/latam-context.md).
3. **Top 3 channels** with the reason each fits this stage, model and geography.
4. **Acquisition plan per channel:** owner, budget or hours, 90-day target (leads, demos,
   closed deals), first experiment and its kill criterion.
5. **Unit economics targets per channel:** CAC target, conversion assumption, LTV basis. Mark
   anything not yet measurable as an assumption to test.
6. **90-day plan:** `| Week | Goal | Owner | KPI | Budget |`.
7. **Compliance check:** every channel respects platform rules and data law (WhatsApp opt-in,
   LinkedIn automation limits, consent for email lists under local data protection law).
8. Output with the structure in [TEMPLATES.md](TEMPLATES.md), then Next Steps.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's startup.
Required: beachhead definition, 19-channel scorecard, top-3 acquisition plans, unit economics
targets, 90-day plan table, LATAM context box, Next Steps. Tables, not narrative.

If the plan is turned into slides or a one-pager for the team or investors, apply
references/shared/deck-design-rules.md.

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE selecting channels:

- **WhatsApp is where B2B conversations happen, but it is opt-in.** WhatsApp's Business policy
  allows contacting people only if they gave you their number and opted in to receive messages;
  messaging at scale without authorization gets the account limited or removed. Use it after a
  warm intro, an event, a referral or an inbound click-to-WhatsApp ad, not for cold blasts.
- **Relationship-first selling:** warm intros, industry associations, accountants and
  ecosystem networks (accelerators, Endeavor, corporate programs) open doors faster than cold
  outbound.
- **Paid media is cheaper than in the US** for most B2B and B2C audiences, but conversion and
  ticket sizes are lower; compare CAC, not CPM.
- **Each country is its own GTM:** language, invoicing rules and payment methods differ.
- Label figures `(LATAM, <source>)`, `(US-sourced benchmark, <source>)` or `(directional, LAN
  operator read)`. Most LATAM channel benchmarks are directional; say so.

## Tone & Editorial Voice

See references/shared/editorial-voice.md. If the founder wants five channels at pre-seed, say
it splits focus. If the beachhead is "all SMBs", say it is not a beachhead.

## Step 6: Next Steps

3-5 actions for the next 30 days, all channel experiments with a target and a kill criterion.
The first item is the first step of the top-scoring channel.

- GOOD: "Ask your 5 current customers for 2 intros each to peers in Monterrey manufacturing;
  move each intro to WhatsApp only after they reply; target 10 discovery calls by day 14."
- BAD: "Start marketing efforts."

## Sources

- [GTM Channels](references/gtm-channels.md): the 19 Weinberg channels with LATAM notes
- [LATAM Context](references/latam-context.md): channel norms, sales cycles, WhatsApp rules
- [AI-Native GTM](references/ai-native-gtm.md): pricing, AI in the sales stack, growth bar
- Moore, G. (2014). *Crossing the Chasm*, 3rd ed. HarperBusiness.
- Weinberg, G. and Mares, J. (2015). *Traction*. Portfolio.
- Paul Graham, "Do Things that Don't Scale" (2013): https://paulgraham.com/ds.html
- YC's essential startup advice: https://www.ycombinator.com/library/4D-yc-s-essential-guide-to-go-to-market
- WhatsApp Business Messaging Policy: https://business.whatsapp.com/policy
