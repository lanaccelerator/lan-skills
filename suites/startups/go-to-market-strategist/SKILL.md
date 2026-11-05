---
name: go-to-market-strategist
description: >
  For STARTUP FOUNDERS designing how to win customers. ALWAYS invoke when a founder asks how to
  acquire customers, which growth channels to use, how to define the ICP or beachhead, how to
  launch in a new market, or wants a 90-day GTM plan. Spanish triggers: "cómo consigo
  clientes?", "armame el plan go-to-market", "qué canales uso?", "cómo entro a México/Brasil?",
  "cómo me distribuyo dentro de ChatGPT o Claude?". Applies Moore, Weinberg's 19 channels and
  YC, plus 2026 channels: gremios, super-who warm intros, MCP apps inside Claude/ChatGPT, and
  Claude/ChatGPT alone as the default competitor. NOT for the sales process (use
  sales-playbook-generator), price levels (use pricing-strategy-designer), one deal's proposal
  (use lead-to-proposal), the competitor map (use competitive-landscape-mapper), weekly
  competitor tracking (use competitor-watch), tool vs service decision (use
  ai-service-horizon), unit economics (use unit-economics-calculator) or the deck (use
  pitch-deck-builder).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
  complements: [sales-playbook-generator, pricing-strategy-designer, competitive-landscape-mapper, ai-service-horizon, competitor-watch, outbound-learning-loop]
license: MIT
---

# Go-to-Market Strategist

Designs a working GTM plan: beachhead segment, the default competitor (Claude/ChatGPT doing
the job alone), channel scorecard, warm map (gremios and super whos), distribution inside AI
assistants, acquisition plan per channel, unit economics targets, service horizon and a 90-day
execution table. Moore for the segment, Weinberg's 19 channels for prioritization, YC for
founder-led sales, Forrester and Nájera for how B2B buyers are reached in 2026. Output is a plan
to execute, not a deck.

## Step 1: Input Gathering

If a company brain is connected, read it first (references/shared/company-brain-integration.md
sections 1-3): customer list, win/loss notes, call notes, pricing, current channel results,
competitor notes filed by competitor-watch. Then ask, in ONE message, only for what is missing:

1. **Company and one-sentence description**
2. **Business model:** B2B SaaS / B2C / marketplace / fintech / e-commerce / AI-native (seat,
   usage or outcome pricing) / AI-native service / other
3. **Stage:** pre-product / pre-revenue / early revenue (under USD 100K ARR) / growth (USD 100K+ ARR)
4. **Current customers:** number, segment, geography ("none" if pre-revenue)
5. **Top 3 competitors and the difference** [Claude/ChatGPT alone is always added as competitor 0]
6. **Channels tried and results**: including what failed
7. **Deal size and sales cycle:** transactional (under USD 500) / SMB (USD 500-5K) / enterprise (USD 5K+)
8. **Warm access:** associations, chambers or communities where your ICP gathers, and people
   who know hundreds of your buyers [none known yet]
9. **AI-assistant distribution:** do your buyers already work inside Claude or ChatGPT, and do
   you have (or could you ship) an MCP server? [unknown: the skill will assess]

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
5. **How B2B buyers buy in 2026:** about 13 people weigh in on the average B2B purchase and 86%
   of purchases stall (Forrester, via Erik Fisher). A GTM plan with one contact per account is a
   plan with one point of failure. Read references/shared/b2b-buying-2026.md (sections 1, 2, 7
   and 8) for multi-threading, gremios and warm-first outbound.
6. **AI-era GTM:** read [references/ai-native-gtm.md](references/ai-native-gtm.md) for every
   plan. It covers the default competitor, distribution inside AI assistants, the service
   horizon and AI in the sales stack.

## Step 3: Workflow

1. **Beachhead:** job title + company size + geography + trigger event. Not "SMBs in LATAM".
2. **Competitor 0: Claude/ChatGPT doing the job alone.** Always analyzed, never skipped. What
   does the buyer get today for about USD 20 per month from a general assistant, which part of
   your job it already does, and why they would still pay you (proprietary data, workflow
   lock-in, distribution, a service layer, liability). If the honest answer is "they would not",
   say so first and stop the channel work until the wedge is fixed. Method in
   [references/ai-native-gtm.md](references/ai-native-gtm.md) section 6.
3. **Score the 19 channels** (1-3) for this model, stage and geography. LATAM channel behavior
   differs from the US: read [references/latam-context.md](references/latam-context.md).
   Channel 14 (Existing Platforms) now includes the Claude connectors directory and ChatGPT
   apps; channel 10 and 15 include gremios.
4. **Warm map:** name 3 gremios or associations where the ICP gathers and 3 "super whos"
   (people with access to thousands of your ICP, across different industries or associations,
   per Andrés Nájera). Give the super-who script from
   [references/latam-context.md](references/latam-context.md). Warm intros come first; cold
   email is a channel that learns from every reply, multi-threaded to 3-5 roles per account,
   drafts by default (hand off to outbound-learning-loop and sales-playbook-generator).
5. **Distribution inside AI assistants:** decide whether an MCP server or ChatGPT app is a real
   channel for this buyer now, later or never (section 5 of ai-native-gtm.md). Score it as part
   of channel 14.
6. **Top 3 channels** with the reason each fits this stage, model and geography.
7. **Acquisition plan per channel:** owner, budget or hours, 90-day target (leads, demos,
   closed deals), first experiment and its kill criterion.
8. **Unit economics targets per channel:** CAC target, conversion assumption, LTV basis. Mark
   anything not yet measurable as an assumption to test.
9. **Service horizon (one block):** where the offer sits on tool -> tool+service -> service and
   what that does to the GTM motion (section 7 of ai-native-gtm.md). For the full decision,
   hand off to ai-service-horizon.
10. **90-day plan:** `| Week | Goal | Owner | KPI | Budget |`.
11. **Compliance check:** every channel respects platform rules and data law (WhatsApp opt-in,
    LinkedIn automation limits, consent for email lists under local data protection law, MCP
    directory and ChatGPT app review policies).
12. Output with the structure in [TEMPLATES.md](TEMPLATES.md), then Next Steps. File the plan in
    the company brain (references/shared/company-brain-integration.md section 4) at
    `strategy/gtm/<YYYY-MM-DD>-gtm-plan` when connected.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's startup.
See [TEMPLATES.md](TEMPLATES.md) for the filled example.

Required: beachhead definition, competitor 0 (Claude/ChatGPT alone), 19-channel scorecard, warm
map, AI-assistant distribution decision, top-3 acquisition plans, unit economics targets,
service horizon, 90-day plan table, LATAM context box, Next Steps. Tables, not narrative.

If the plan is turned into slides or a one-pager for the team or investors, apply
references/shared/deck-design-rules.md.

## LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE selecting channels.
For benchmarks, follow references/shared/latam-benchmarks.md.

- **WhatsApp is where B2B conversations happen, but it is opt-in.** WhatsApp's Business policy
  allows contacting people only if they gave you their number and opted in to receive messages;
  messaging at scale without authorization gets the account limited or removed. Use it after a
  warm intro, an event, a referral or an inbound click-to-WhatsApp ad, not for cold blasts.
- **Relationship-first selling:** warm intros, gremios (industry associations, chambers,
  clusters), accountants and ecosystem networks (accelerators, Endeavor, corporate programs)
  open doors faster than cold outbound. Cold email still runs, as a learning channel.
- **Paid media is cheaper than in the US** for most B2B and B2C audiences, but conversion and
  ticket sizes are lower; compare CAC, not CPM.
- **Each country is its own GTM:** language, invoicing rules, vendor-portal registration and
  payment methods differ.
- Label figures `(LATAM, <source>)`, `(US-sourced benchmark, <source>)` or `(directional, LAN
  operator read)`. Most LATAM channel benchmarks are directional; say so.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, not a cheerleader. If the founder wants five
channels at pre-seed, say it splits focus. If the beachhead is "all SMBs", say it is not a
beachhead. If Claude or ChatGPT already does 80% of the job for USD 20 a month, say it in the
first paragraph.

## Próximos Pasos

3-5 actions for the next 30 days, all channel experiments with a target and a kill criterion.
The first item is the first step of the top-scoring channel. Examples:

- GOOD: "Pedile a tus 5 clientes actuales 2 intros cada uno a pares de manufactura en
  Monterrey; pasá a WhatsApp solo cuando respondan; meta: 10 llamadas de discovery al día 14."
- GOOD: "Mandale el guion de super who a las 3 personas del mapa cálido esta semana; si ninguna
  responde en 7 días, cambiá el pedido, no el canal."
- GOOD: "Probá tu tarea principal en ChatGPT y Claude con 3 casos reales del cliente; anotá qué
  resuelven solos y escribí en una línea por qué igual te pagarían."
- BAD: "Start marketing efforts."

## Sources

- [GTM Channels](references/gtm-channels.md): the 19 Weinberg channels with LATAM notes
- [LATAM Context](references/latam-context.md): channel norms, gremios, super whos, WhatsApp rules
- [AI-Native GTM](references/ai-native-gtm.md): competitor 0, MCP distribution, service horizon,
  AI in the sales stack
- references/shared/b2b-buying-2026.md: buying committees, multi-threading, warm-first outbound
- Moore, G. (2014). *Crossing the Chasm*, 3rd ed. HarperBusiness.
- Weinberg, G. and Mares, J. (2015). *Traction*. Portfolio.
- Paul Graham, "Do Things that Don't Scale" (2013): https://paulgraham.com/ds.html
- YC's essential startup advice: https://www.ycombinator.com/library/4D-yc-s-essential-guide-to-go-to-market
- YC Requests for Startups, Summer 2026, "AI-Native Service Companies": https://www.ycombinator.com/rfs
- Sequoia, "Services: The New Software" (Julien Bek, Mar 2026): https://www.sequoiacap.com/article/services-the-new-software
- Anthropic, donating MCP and the Agentic AI Foundation (Dec 2025): https://www.anthropic.com/news/donating-the-model-context-protocol-and-establishing-of-the-agentic-ai-foundation
- Claude connectors directory (Jul 2025): https://claude.com/resources/articles/connectors-directory
- OpenAI, "Introducing apps in ChatGPT and the new Apps SDK" (Oct 6, 2025): https://openai.com/index/introducing-apps-in-chatgpt/
- Andrés Nájera, LAN mentor masterclass on warm intros and super whos (Nov 2026)
- WhatsApp Business Messaging Policy: https://business.whatsapp.com/policy
