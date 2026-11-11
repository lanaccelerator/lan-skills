---
name: sales-playbook-generator
description: >
  Use when a founder asks how to sell B2B: build the full sales process, ICP, warm-first
  prospecting (super whos, gremios, referrals, WhatsApp-first for LATAM), multi-threaded
  accounts, objection handling, meeting script with the must-ask list, CRM stages and
  conversion targets ("cómo vendo esto a empresas", "armame el playbook de ventas", "qué le
  escribo por WhatsApp a un prospecto", "cómo consigo intros", "cómo manejo la objeción de
  precio", "cómo armo el CRM", "guion para la reunión de ventas"). Founder-led to first SDR/AE
  hires, with AI-assisted prospecting. NOT for running and learning from an outbound campaign
  (use outbound-learning-loop), turning one lead into a proposal (use lead-to-proposal),
  overall go-to-market or channel strategy (use go-to-market-strategist), setting prices (use
  pricing-strategy-designer) or retention and upsell of current customers (use
  customer-retention-expansion).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.3"
  suite: startups
  complements: [lead-to-proposal, outbound-learning-loop, pricing-strategy-designer, go-to-market-strategist, customer-retention-expansion]
license: MIT
---

# Sales Playbook Generator

Produces a complete B2B sales playbook: ICP and buying-group map, warm-first prospecting
(super whos, gremios, WhatsApp communities, referrals), a multi-threaded account sequence,
objection handling with root cause, a meeting script where the founder talks at most 33%, the
full B2B process from first touch to referral (including technical meetings, legal and
vendor-portal onboarding), and the CRM setup.

Built on Aaron Ross "Predictable Revenue" (outbound machine and role separation), Dixon and
Adamson "The Challenger Sale" (objection root cause), the shared B2B buying framework
(references/shared/b2b-buying-2026.md: buying groups, multi-threading, talk-ratio rule,
must-ask list, business case, full process) and Andrés Nájera's warm-intro method (super
whos and referrals). Calibrated for LATAM B2B: relationship-first, WhatsApp-primary, 3-6
month cycles.

## Step 1: Input Gathering

Read the company brain first (references/shared/company-brain-integration.md sections 1-3):
past deals, win/loss notes, case studies, the CRM export and any saved sales procedure. The
brain is the raw material for the ICP and the objection matrix. Then ask ALL remaining
questions in ONE message, with defaults in brackets. Do not generate a playbook until you
have answers or stated assumptions for each.

1. **Product and business model**: what it does, who it is for, how it charges. [From the
   brain's offering and pricing pages]
2. **Target customer profile**: company size, industry, geography, decision-maker title
   (Spanish titles: Gerente General, Director Comercial, Gerente de Operaciones).
3. **Current sales status**: zero customers / first 10 (founder-led, no process) /
   USD 50k-500k ARR (needs a playbook) / USD 500k+ (hiring SDRs or AEs). [First 10]
4. **Average contract value (ACV)**: under USD 2k / 2k-5k / 5k-15k / 15k-50k / 50k+ (the bands of revenue-bowtie.md section 4). [5k-15k]
5. **Biggest sales challenge**: generating leads / converting meetings to proposals /
   closing / churn after close. [Generating leads]
6. **Geography**: which LATAM countries, US, or both. [Founder's home country]
7. **Team**: founder only / SDR / AE / full team. [Founder only]
8. **Warm assets**: current happy customers who could refer, gremios or associations you
   belong to, people who know hundreds of your buyers, ICP WhatsApp communities you are in.
   [None known: the playbook starts by finding three super whos]
9. **Connectors**: email, CRM, company brain, recorder. [Whatever the session exposes]

If a question is skipped, proceed with a stated assumption flagged as
`[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/sales-playbook-framework.md](references/sales-playbook-framework.md) and
references/shared/b2b-buying-2026.md BEFORE designing the playbook. Apply them; do not copy
the shared framework into the output, point to it and use it.

1. **Predictable Revenue (Aaron Ross):** SDR/AE separation, multi-touch sequence with fixed
   intervals and channel mix. Founder is SDR and AE until win rate is above 25%.
2. **The Challenger Sale (Dixon and Adamson):** teach, tailor, take control; every objection
   gets a root cause before a response.
3. **Buying groups (Forrester, via the shared framework):** about 13 people weigh in on the
   average B2B purchase and 86% of purchases stall. Every target account gets a role map
   (decider, champion, user, finance or procurement, IT when data is involved).
4. **Talk-ratio rule: founder max 33%.** The client talks the rest. Gong Labs' ~43% seller
   talk on top calls is a reference stat only, never the target.
5. **Warm first (Nájera):** three super whos, referrals at the thank-you moment, gremios and
   WhatsApp communities before any cold touch.
6. **Revenue bowtie (Winning by Design, Diego Morales of Rocket Revenue):** one process from
   lead to expansion with a conversion rate and a cycle time per stage, the sales motion set by
   ticket size, BANT or SPICED qualification, and outbound as science (lists, CRM) plus art
   (the message). Read references/shared/revenue-bowtie.md sections 2, 3, 4 and 7.

## Step 3: Workflow

Execute in this order.

1. **ICP:** industry + company size + geography + trigger events + buyer title + user
   title. Specific enough to find 50 named people in two hours ("Chilean industrial SME with
   20-200 vehicles", not "logistics companies"). Add a **blacklist**: the customer types the
   founder will not take even if they ask (distractions, pilots with no buyer), and set the
   sales motion from the ACV row in revenue-bowtie.md section 4 (one phase, SDR plus closer,
   or ABM). This is the motion to build toward; the founder runs every phase until win rate is
   above 25%.
2. **Buying-group map per account:** the five roles from the shared framework with what each
   cares about and the asset each needs. One contact per account is flagged as a risk.
3. **Warm-intro map:** three super whos across different industries or associations, the
   gremios that gather the ICP (Chile and Paraguay lists in
   [references/latam-sales-context.md](references/latam-sales-context.md) section 7), the
   ICP's WhatsApp communities, and a referral calendar (several asks a year, each at a
   thank-you moment: a measurable win, a renewal, a compliment). Include the super-who
   script in voseo:
   "Hola [nombre], estoy ayudando a [cliente ideal] a [resolver X] con [solución].
   ¿Conocés a alguien que se pueda beneficiar?"
   Nájera reports about 30% reply and 12% positive on his automated warm outreach: label it
   as warm, never as a cold benchmark.
4. **Account sequence (multi-threaded):** 7-12 touches over 21 days depending on ACV, 3-5
   recipients per target account by role, coordinated by one account owner so messages never
   collide or contradict each other. The first message follows the art rule in
   revenue-bowtie.md section 7: the prospect's specific pain plus peers already served, or a
   relevant news item about their competitor, written per prospect, never generic. Order: warm
   intro if one exists, then LinkedIn,
   WhatsApp (only after a connection, referral or opt-in) and email. Cold email is not a last
   resort: it is the channel that learns from every reply. Running and improving the
   campaign is outbound-learning-loop's job; this step designs it.
5. **Objection matrix:** the 5 most common objections in this market, each with root cause,
   Challenger response and evidence to use (from the brain, never invented).
6. **Meeting script:** the structure in references/shared/b2b-buying-2026.md section 3
   (short opening, questions first, brief demo only on their pain, more questions, close
   with a dated next step), with time allocations, the founder's talk budget per phase
   (total max 33%) and the 8 must-ask questions (section 4) mapped to phases. After every
   call, score must-ask coverage x/8; below 6 means a qualification call before any
   proposal.
7. **Full B2B process map:** prospect, first touch, discovery, technical and integration
   meetings, proposal (with business case sent before the decision meeting), legal and
   contract, vendor-portal onboarding, onboarding, invoicing and collections, retention,
   upsell, referrals. For each stage: owner, exit criterion, documents needed. Include the
   vendor-portal folder checklist (tax ID such as RUC or RUT, certificates of good standing
   and tax compliance, insurance policies, bylaws, legal representative's ID and powers,
   bank certificate, security documentation), ready before the first proposal.
8. **CRM setup:** stages that mirror the process map, a conversion rate and days-in-stage
   target per stage (revenue-bowtie.md section 2; Morales, directional: SMB 1-3 months,
   mid-market 3-5, enterprise 6-18; LATAM mid-market here runs 3-6), qualification fields (BANT
   or SPICED) filled from the must-ask answers with 6 of 8 still the gate, key fields
   (including every account role and must-ask coverage), and the AI assist per stage: account
   research and first-line personalization drafted from the prospect's site and LinkedIn,
   call notes summarized into the CRM, follow-ups drafted for founder approval.
9. **Outbound operating rules:** every message is a DRAFT by default (email connector or
   copy-paste text); the founder reviews the first 20 before any batch goes out; the CRM is
   updated the same day for every touchpoint; what worked (subject, opening, role, segment)
   is saved as a learning page in the company brain, never in this skill. Never automate
   mass WhatsApp sends: WhatsApp's Business Messaging Policy requires opt-in for
   business-initiated messages, and numbers reported as spam get banned.
10. **Apply LATAM context** from
    [references/latam-sales-context.md](references/latam-sales-context.md): channel order,
    titles, cycle length, reference accounts, budget calendar.
11. **Output** with the TEMPLATES.md structure, then Próximos Pasos focused on the stated
    biggest challenge.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns,
or field order. Fill every [bracketed placeholder] with real analysis from the user's
startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. The playbook contains, in order:

- **ICP** (6 fields minimum, plus blacklist and sales motion)
- **Buying-group map**: Role | Title at target | What they care about | Asset they need
- **Warm-intro map**: super whos, gremios, WhatsApp communities, referral calendar, script
- **Account sequence**: Day | Channel | Recipient role | Message type | Snippet | Expected
  response
- **Objection matrix**: Objection | Root cause | Challenger response | Evidence to use
- **Meeting script**: Phase | Minutes | Founder talk budget | Goal | Must-ask questions
- **Full B2B process**: Stage | Owner | Exit criterion | Documents
- **CRM setup**: Stage | Definition | Conversion target | Days in stage | Key activity, plus key fields
- **Outbound operating rules** (drafts, first 20 reviewed, CRM same day, learnings to brain)
- **LATAM Context box**
- **Próximos Pasos**: 3-5 concrete actions

If a brain is connected, file the playbook per references/shared/company-brain-integration.md
section 4 (default path `sales/playbook/<YYYY-MM-DD>-playbook`) and report the path.

## LATAM Context

Read [references/latam-sales-context.md](references/latam-sales-context.md) BEFORE
finalizing the sequence. For any quantitative benchmark follow the annotation protocol in
references/shared/latam-benchmarks.md (US figure labeled, LATAM figure or "directional").

- **WhatsApp is Channel 1 for LATAM B2B,** read and answered far more than cold email
  (directional: no public LATAM dataset; track your own rates from touch one). It is used
  after a connection, a referral or an opt-in, not as a mass broadcast.
- **Relationship-first order:** warm intro (super who, referral, gremio) > LinkedIn
  connection > WhatsApp > email. Email still runs as a learning channel from week one.
- **Cycles:** LATAM mid-market B2B typically 3-6 months vs 2-4 months US (directional).
  Corporates add legal review and vendor-portal registration: plan weeks for it.
- **Titles:** Director Comercial = VP Sales, Gerente General = CEO/MD in SMEs, Jefe de
  Sistemas = IT Director, Director de Operaciones = COO, Jefe de Compras = procurement.
- **References:** LATAM buyers ask for reference calls more than US buyers. Have 2-3 briefed
  lighthouse customers before broad outbound.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, no-sugarcoating, unicorn-bar evaluation.
You are NOT a cheerleader. Call out the traps directly:

"Una secuencia de 5 mails fríos estilo US, todos a la misma persona, va a fallar. Tus
compradores viven en WhatsApp y deciden en grupo: si tu cuenta tiene un solo contacto, no
tenés un deal, tenés una esperanza."

"Si en la reunión hablaste más de un tercio del tiempo, no hiciste discovery: hiciste un
pitch."

Challenge vanity metrics: "50 mails enviados" is not a pipeline metric. "3 reuniones
calificadas con must-ask 7/8 esta semana" is.

## Próximos Pasos

End EVERY playbook with 3-5 specific next steps, the founder's biggest challenge first.

- **If "generating leads":** "Esta semana identificá tus 3 super whos (uno por gremio o
  industria) y mandales el guion como borrador para aprobar. En paralelo armá la lista de 30
  cuentas con 3-5 roles cada una."
- **If "converting meetings":** "Revisá las últimas 5 reuniones: ¿hablaste más del 33%?
  ¿cubriste 6 de las 8 preguntas? Si no, la próxima reunión arranca con preguntas, no con
  demo."
- **If "closing":** "En los últimos 3 deals perdidos, ¿cuántos roles de la cuenta conocías?
  Si era uno solo, el próximo deal no avanza a propuesta sin el decisor mapeado."
- **If "churn":** "Hacé 5 llamadas a clientes en 7 días preguntando qué los haría cancelar,
  y pasá el resultado a `/customer-retention-expansion`."
- Always: "Armá hoy la carpeta de alta de proveedor (RUC o RUT, certificados, pólizas,
  estatutos, datos bancarios): un documento faltante puede atrasar el primer cobro semanas."

GOOD: "Mandá 30 borradores de WhatsApp a Gerentes de Operaciones de la lista de CChC con la
plantilla del día 3; revisá los primeros 20 antes de enviar y medí % respuesta y % reunión."
BAD: "Empezá a hacer outbound."

Handoffs: `/outbound-learning-loop` to run and improve the campaign, `/lead-to-proposal` once
a qualified lead asks for a proposal, `/pricing-strategy-designer` if "too expensive"
dominates the objection log, `/go-to-market-strategist` if the problem is the channel, not
the sales motion, `/customer-retention-expansion` after the first invoice.

## Sources

- [Sales Playbook Framework](references/sales-playbook-framework.md): Predictable Revenue +
  Challenger structure, sequence principles, multi-threading, talk-ratio rule
- [LATAM Sales Context](references/latam-sales-context.md): WhatsApp, titles, cycles,
  references, budget calendar, super whos, gremios (Chile and Paraguay), referrals
- references/shared/b2b-buying-2026.md: buying groups, multi-threading, founder max 33%,
  must-ask list, business case, executive meeting, full B2B process, vendor-portal readiness
- references/shared/company-brain-integration.md: brain read order, write-back, drafts only
- Predictable Revenue (Aaron Ross): https://predictablerevenue.com/book/
- The Challenger Sale (Dixon and Adamson): https://www.challengerinc.com/the-challenger-sale/
- Gong Labs, talk-to-listen research (reference stat only):
  https://www.gong.io/resources/labs/talk-to-listen-conversion-ratio/
- Forrester B2B buying research (about 13 people per purchase, 86% stall), via Erik Fisher:
  https://www.forrester.com/
- Andrés Nájera, LAN mentor masterclass on warm intros and referrals (Nov 2026)
- references/shared/revenue-bowtie.md: bowtie, stage metrics, qualification, motion by ACV, outbound art and science
- Winning by Design, the Bowtie: https://winningbydesign.com/bowtie/
- Winning by Design, SPICED: https://winningbydesign.com/spiced/
- Diego Morales, Rocket Revenue, LAN V5 revenue masterclass (Nov 2026): https://rocketrevenuehq.com
- WhatsApp Business Messaging Policy: https://business.whatsapp.com/policy
