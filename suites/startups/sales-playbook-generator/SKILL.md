---
name: sales-playbook-generator
description: >
  For STARTUP FOUNDERS. B2B sales playbook design and generation.
  ALWAYS invoke when a founder asks how to build a sales process,
  create prospecting sequences, handle objections, write a demo
  script, or set up a CRM. NOT for broad go-to-market strategy or
  channel selection (use go-to-market-strategist for multi-channel
  GTM strategy).
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---

# Sales Playbook Generator

Produces a complete B2B sales playbook: ICP definition, WhatsApp-first
prospecting sequence, objection handling matrix with root cause analysis,
demo script outline, and CRM setup recommendation. Built on Aaron Ross
"Predictable Revenue" outbound methodology and Challenger Sale objection
frameworks. Calibrated for LATAM B2B sales culture — relationship-first,
WhatsApp-primary, 3–6 month cycles.

## Step 1: Input Gathering

Ask ALL seven questions in ONE message. Do not generate a playbook until
you have answers (or stated assumptions) for each.

1. **Product and business model** — what it does, who it's for, how it charges
2. **Target customer profile** — company size, industry, geography, decision-maker
   job title (use Spanish titles for LATAM: Gerente General, Director Comercial, etc.)
3. **Current sales status** — choose one:
   - Zero customers (pre-sales)
   - First 10 customers (founder-led, no process)
   - $50k–$500k ARR (repeating motion, needs playbook)
   - Scaling $500k+ ARR (optimizing and hiring SDRs/AEs)
4. **Average contract value (ACV)** — rough estimate: <$1k / $1k–$10k / $10k–$50k / $50k+
5. **Current biggest sales challenge** — choose one:
   - Generating leads (top of funnel)
   - Converting demos to proposals
   - Closing / getting to yes
   - Churn / retention after close
6. **Geography** — LATAM only / US / both
7. **Team** — Founder-led only / have SDR / have AE / have full sales team

If a question is skipped, proceed with a stated assumption flagged as:
`[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/sales-playbook-framework.md](references/sales-playbook-framework.md)
BEFORE designing the playbook. Apply all three frameworks:

1. **Aaron Ross "Predictable Revenue"** — SDR/AE role separation, outbound prospecting
   machine, multi-touch sequence design with specific intervals and channel mix.
   Source: https://predictablerevenue.com/book/
2. **"The Challenger Sale"** (Dixon & Adamson) — Challenger profile (teach, tailor, take
   control) wins at complex B2B sales. Objection handling requires diagnosing root cause,
   not just scripting a response.
   Source: https://www.challengerinc.com/the-challenger-sale/
3. **Gong.io conversation data** — Top reps talk 46% of time vs 68% average; 8+ discovery
   questions = highest win rate; "does that make sense?" kills deal momentum.
   Source: https://www.gong.io/resources/labs/

## Step 3: Workflow

Execute in this exact order:

1. **Define ICP (Ideal Customer Profile)** — industry + company size + geography +
   trigger events + job title of buyer + job title of end user. Be specific: "logistics
   SME with 20–200 vehicles in Colombia" not "logistics companies."
2. **Design prospecting sequence** — 7–8 touches, multi-channel, Day 1 through Day 21.
   WhatsApp MUST appear in the sequence. Channel order: LinkedIn → WhatsApp → Email
   (not the reverse). Do not start with cold email.
3. **Build objection handling matrix** — 5 most common objections in this market.
   Each objection must have: Root Cause (why they're really saying it), Challenger
   Response (teach/tailor/take control), Evidence to Use.
4. **Outline demo script** — 5 phases with time allocations:
   Opening → Discovery → Demo → Close → Next Step
5. **Recommend CRM setup** — stage names, conversion rate targets, key fields per stage
6. **Apply LATAM context** from
   [references/latam-sales-context.md](references/latam-sales-context.md) — adapt
   sequence channels and timing to LATAM norms
7. **Output using TEMPLATES.md structure** — fill every section, no skeleton placeholders
8. **Próximos Pasos** focused on the founder's stated biggest sales challenge

## Step 4: Output Format

ALWAYS use the exact structure in [TEMPLATES.md](TEMPLATES.md). Every section is required.

The output is a B2B Sales Playbook containing:
- **ICP definition** (6 fields minimum: industry, size, geography, trigger events,
  buyer title, user title)
- **Prospecting sequence table** — Day | Channel | Message Type | Template Snippet |
  Expected Response Rate
- **Objection handling matrix** — Objection | Root Cause | Challenger Response |
  Evidence to Use
- **Demo script outline** — 5 phases with time allocation and key question per phase
- **CRM setup recommendation** — stage names, definition, conversion target, key activity
- **LATAM Context box** — channel adjustment, cycle length, reference account requirement
- **Próximos Pasos** — 3–5 concrete next steps

## Step 5: LATAM Context

Read [references/latam-sales-context.md](references/latam-sales-context.md) BEFORE
finalizing the prospecting sequence.

**WhatsApp is Channel 1 for LATAM B2B prospecting.** 85%+ open rates vs 22% cold email.
Every prospecting sequence must include WhatsApp messages — not as an option but as the
primary channel. A US-style 5-touch cold email sequence will fail in LATAM. If the
sequence has no WhatsApp touches, rewrite it.

Key LATAM adjustments:
- **Relationship-first motion:** warm intro > LinkedIn connection > WhatsApp DM > cold
  email. Cold email is a last resort after exhausting warm channels.
- **Sales cycle benchmarks:** LATAM enterprise B2B typically 3–6 months vs 2–4 months US.
  Budget accordingly and set realistic pipeline timelines.
- **Decision-maker title mapping:** Use Spanish titles in ICP definition.
  "Director Comercial" = VP Sales, "Gerente General" = CEO/MD for SMEs,
  "Jefe de Sistemas" = IT Director, "Director de Operaciones" = COO.
- **Reference request behavior:** LATAM buyers request reference calls at much higher rate
  than US. Build 2–3 happy customers willing to take reference calls before broad outbound.
- **WhatsApp best practices:** verified business account, professional photo, voice notes
  acceptable in LATAM, keep messages short, always personalize opening line.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — direct, no-sugarcoating, unicorn-bar
evaluation. Call out the cold email trap directly:

"A US-style 5-touch cold email sequence will fail in LATAM. Open rates are 22% vs 85%
for WhatsApp. If your sequence has no WhatsApp touches, rewrite it. If you're sending
generic outreach without personalization, you're not doing outbound — you're spamming."

Challenge vanity metrics: "50 emails sent" is not a pipeline metric. "3 qualified demo
calls booked this week" is.

## Step 6: Próximos Pasos

End EVERY playbook with 3–5 specific next steps. Address the founder's stated
biggest challenge first.

- **If "generating leads":** First action is building a list of 50 target accounts this
  week — name, company, title, LinkedIn URL, WhatsApp number if possible. Day 2: send
  first sequence message to all 50.
- **If "converting demos":** First action is reviewing the last 5 demos lost — identify
  whether it was wrong ICP, wrong demo flow, or no next step defined.
- **If "closing":** First action is reviewing the last 3 lost deals for pattern —
  was it price, champion, timing, or feature gap?
- **If "churn":** First action is 5 customer calls in the next 7 days asking "what
  would make you cancel?" — diagnose before prescribing.

Actions must be concrete:
- GOOD: "Send 50 WhatsApp messages to Gerentes de Operaciones of logistics companies
  in Bogotá using the Day 3 template. Track: % read, % response, % booked demo."
- BAD: "Start doing outbound sales."

## Sources

- [Sales Playbook Framework](references/sales-playbook-framework.md) — Predictable
  Revenue + Challenger Sale structure with objection handling and prospecting principles
- [LATAM Sales Context](references/latam-sales-context.md) — WhatsApp sequences, LATAM
  decision-maker mapping, sales cycle benchmarks, relationship-first tactics
- Predictable Revenue: https://predictablerevenue.com/book/
- Challenger Sale: https://www.challengerinc.com/the-challenger-sale/
- Gong.io Labs: https://www.gong.io/resources/labs/
