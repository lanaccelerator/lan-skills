---
name: outbound-learning-loop
description: >
  For STARTUP FOUNDERS running B2B outbound. ALWAYS invoke when a founder wants to run cold
  email, LinkedIn or opted-in WhatsApp outreach to target accounts and learn from every reply:
  pick accounts, write 3-5 role-personalized drafts per company, classify replies and adjust
  the next batch every week. Spanish triggers: "armame una campaña de outbound", "escribile a
  estas 30 empresas", "mails en frío que funcionen", "a quién le escribo en cada empresa",
  "clasificá las respuestas", "qué funcionó esta semana en outbound". Multi-threads each
  account (decider, champion, user, finance, IT) with a coordinated sequence, drafts by
  default, founder reviews the first 20, CRM same day, and saves what worked as a learning in
  the company brain. Works with any email connector or copy-paste. NOT for designing the
  overall sales playbook (use sales-playbook-generator), a proposal for one deal (use
  lead-to-proposal), choosing GTM channels (use go-to-market-strategist) or filing a meeting
  (use meeting-notes-to-brain).
categories: ["startups", "sales", "business"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [sales-playbook-generator, lead-to-proposal, meeting-notes-to-brain, go-to-market-strategist]
license: MIT
---

# Outbound Learning Loop

An outbound engine (cold email, LinkedIn, and WhatsApp only where the person opted in) that
gets better every week because it learns from every reply. Warm intros still come first:
super whos and referrals (designed in sales-playbook-generator) open more doors than any
cold message. But cold outbound is not a last resort: it is the channel that teaches you the
most per week, because every reply, objection and silence can be logged and compared by
subject, opening, role and segment.

Built on the shared B2B buying framework (references/shared/b2b-buying-2026.md: about 13
people weigh in on a B2B purchase and 86% of purchases stall, so every account is
multi-threaded), Aaron Ross "Predictable Revenue" (sequenced outbound with fixed intervals),
the Challenger Sale (objection root cause) and Andrés Nájera's warm-first method. The loop
itself is simple: send a small batch, classify every reply, change one thing, send the next
batch.

Nothing is sent by the skill. Every message is a DRAFT for the founder to review.

## Step 1: Input Gathering

Read the company brain first (Step 2), then ask ALL remaining questions in ONE message.
Defaults in brackets; mark guesses as `[ASSUMPTION: ...]`.

1. **ICP and offer**: who you sell to and the one outcome you promise. [From the brain's
   playbook and offering pages]
2. **Target accounts**: a list of companies, or the segment to build it from. [30 accounts
   from public sources: company sites, gremio directories, LinkedIn by hand]
3. **Roles per account**: which roles matter for this product. [Decider, champion, user,
   finance or procurement, IT when data or integration is involved]
4. **Channels available**: email connector (Gmail, Outlook), LinkedIn account, WhatsApp
   numbers with opt-in, CRM. [Email drafts + manual LinkedIn; WhatsApp only with opt-in]
5. **Sending domain**: is there a separate, authenticated, warmed-up outbound domain?
   [ASSUMPTION: no; Step 6 sets it up before the first batch]
6. **Proof assets**: case studies with measured results, a one-page summary. [From the brain]
7. **Warm paths tried**: super whos, referrals, gremios already asked for intros. [None: the
   output starts by recommending sales-playbook-generator's warm-intro map in parallel]
8. **Batch size and cadence**: [20-40 accounts per weekly batch; review every Friday]

## Step 2: Read Context First

Follow references/shared/company-brain-integration.md sections 1-3:
- `list_skills` / `get_skill`: the company's own outbound procedure wins.
- `search_brain` + `read_page`: ICP and playbook, offering, case studies, the suppression
  list (do-not-contact), existing customers (never cold-email a customer or an open deal),
  and **every previous outbound learning page** (default path `sales/learnings/outbound/`).
  The last learning page decides what this batch keeps and what it tests.
- CRM (if connected): accounts already in a deal or contacted in the last 90 days are
  excluded or handled by their owner.

Without a brain: ask for the ICP, 1-2 case studies and any previous results in one message.
**Never invent a case study, a customer metric or a past result.**

## Step 3: Warm First, Then Cold That Learns

Before any cold batch, check the warm paths: three super whos, referrals from happy
customers at the thank-you moment, gremio intros, ICP WhatsApp communities (method and
script in sales-playbook-generator). Run them in parallel with the cold batch, tracked
separately. Nájera reports about 30% reply and 12% positive on his automated warm outreach:
that is a WARM number and is never used as the cold target. Cold email in LATAM B2B replies
at roughly 2-8% with no prior contact (directional, see
[references/latam-context.md](references/latam-context.md)).

## Step 4: Build the Account List and Role Map

For each target account (references/shared/b2b-buying-2026.md sections 1-2):
1. Confirm ICP fit and record the public source of every contact.
2. Name 3-5 recipients by role: decider, champion, user, finance or procurement, IT when
   relevant. Titles exactly as on their public profile.
3. Write one line per account: why now (trigger event, public news, gremio membership).
4. Exclude customers, open deals, the suppression list and anyone contacted in 90 days.

An account with one contact is single-threaded: find more roles or leave it for the next
batch.

## Step 5: Coordinated Sequence per Account

One account owner on your side coordinates every thread so messages never collide:
- **No two recipients in the same account on the same day.** Default order: champion
  (day 1), user (day 2, LinkedIn), decider (day 3), finance or IT (day 6, only if relevant).
- **Each role gets its own message:** the decider gets the outcome and the number, the
  champion gets their team's pain and material to forward, the user gets the workflow,
  finance gets the billing logic, IT gets the integration effort.
- **Mention colleagues openly when it helps** ("le escribí también a [champion] sobre
  esto"), never as pressure.
- **Follow-ups:** 2-3 per person over 14-21 days, each with new value (a case, a number, a
  question). Stop a person's thread on any reply; stop the whole account for 48 hours on any
  positive reply (rules in [references/reply-classification.md](references/reply-classification.md)).
- **Channels:** email for the cold first touch; LinkedIn for users and champions active
  there; WhatsApp only with opt-in. Never mass-send WhatsApp.

## Step 6: Deliverability and Compliance (before the first batch)

Read [references/deliverability-compliance.md](references/deliverability-compliance.md).
Minimum bar: separate sending domain, SPF/DKIM/DMARC set, domain warmed up gradually, low
volume per inbox, plain text, opt-out line in every cold email, verified addresses, no
purchased lists without consent. Data-protection caution: Brazil's LGPD is in force,
Chile's Ley 21.719 enters into force on 1 Dec 2026 and Paraguay's Ley 7593 (promulgated
27 Nov 2025) becomes enforceable around Nov 2027. Public business sources only, source
recorded, opt-out honored in every channel.

## Step 7: Draft the Batch (drafts by default)

- Write every message personalized by role and by account (the "why now" line, their
  title, one specific fact). 3-5 lines, one question, opt-out line on email. Follow
  references/shared/editorial-voice.md: no buzzwords, no em dashes, no fake "Re:".
- Create them as DRAFTS through the email connector, or print them as copy-paste text for
  LinkedIn and WhatsApp. The skill never sends.
- **The founder reviews the first 20 drafts of every new batch or new variant** before
  anything goes out. Corrections from that review are applied to the rest of the batch and
  noted for the learning page.
- **One test variable per batch** (subject, opening line, role order, segment or offer),
  split roughly in half. Everything else stays fixed, so the result means something.
- Tag every draft with account, role, segment and variant so replies can be compared.

Tools: any email connector or manual copy-paste is enough. Apollo, Clay, Lemlist and
similar are optional accelerators for finding contacts or sequencing, never required.

## Step 8: Classify Every Reply (same day)

Read [references/reply-classification.md](references/reply-classification.md). Each human
reply gets one class: **positive, objection, referral to another person, not now,
unsubscribe**. For each: the response DRAFT (positive gets two dated slots; objection gets
one Challenger answer with evidence; referral gets a message to the referred person citing
who sent you; not now gets a dated re-touch; unsubscribe gets suppressed everywhere). Out of
office and bounces are technical events, not replies.

**CRM the same day for every touchpoint:** sent, reply, class, next step, next-step date,
new contacts from referrals added to the account role map. If no CRM is connected, output
the updates as a table to paste.

When a positive reply books a meeting, hand off: `/meeting-notes-to-brain` after the call,
`/lead-to-proposal` when it turns into a deal.

## Step 9: Weekly Learning Loop

Every week (default Friday), for the batches with at least 5 business days of replies:
1. **Compute** on delivered messages: reply rate, positive rate, account reply rate,
   referral rate, meetings booked, unsubscribe rate, cut by the tested variable and by role,
   segment and channel.
2. **Read the result honestly:** with fewer than about 50 delivered per variant or fewer than
   5 replies in total, call it a direction to confirm, not a winner (rule of thumb). An
   unsubscribe rate above 2% stops the next batch until targeting or copy is fixed.
3. **Write the learning page** in the company brain (references/shared/company-brain-integration.md
   section 4; default `sales/learnings/outbound/<YYYY>-W<NN>`): what was tested, results
   with counts, what replies said in their own words, the decision for next batch, and what
   to test next. Learnings live in the brain, never in this skill.
4. **Adjust the next batch:** keep the winner, drop what lost, test one new variable.
5. **Escalate** when the pattern points beyond outbound: the same objection 3+ times goes to
   sales-playbook-generator's objection matrix; "too expensive" repeatedly goes to
   pricing-strategy-designer; no segment replying after 3 batches goes to
   go-to-market-strategist.

Unattended weekly runs follow references/shared/company-brain-integration.md section 6
(drafts and brain writes only, never send permissions). Any model work in a scheduled run
(classification, summaries) uses the cheapest adequate model class (Haiku), with the founder
reviewing positives, unsubscribes and uncertain classes.

## Step 10: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns,
or field order. Fill every [bracketed placeholder] with real analysis from the user's
startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. The output contains, in order:

1. **Batch summary**: accounts, recipients, variant tested, channels, sending domain status
2. **Account role map**: Account | Role | Name and title | Why now | Channel | Day
3. **Drafts**: one per role for each account (the template shows one account in full)
4. **Founder review checklist** (first 20)
5. **Reply log**: Date | Account | Role | Channel | Class | Reply (their words) | Response draft | CRM updated
6. **Weekly learning page**: results by variable, role, segment; decision; next test
7. **Próximos Pasos**

User-facing output is in Spanish (voseo) unless the prospects work in another language or
register (see references/latam-context.md section 3).

## LATAM Context

See [references/latam-context.md](references/latam-context.md) and
references/shared/latam-benchmarks.md (annotation protocol: label US figures, then the LATAM
figure or "directional"). Key points: warm first and WhatsApp only with opt-in; titles and
register vary by country (voseo in Paraguay, Argentina, Uruguay; tú or usted in Chile,
Mexico, Colombia; Portuguese in Brazil); avoid mid-December to mid-January and Semana Santa;
reply rates are directional until you have your own.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, no-sugarcoating, unicorn-bar evaluation.
You are NOT a cheerleader. "Mandamos 300 mails" is not a result; "4 reuniones de 35 cuentas,
y los champions responden más de 3 veces más que los decisores" is. If a batch had 1
reply, say the test taught nothing yet and why. If the copy reads like a template, say so
and rewrite it.

## Próximos Pasos

End every output with 3-5 concrete actions, for example:
- "Revisá hoy los primeros 20 borradores; si cambiás algo, aplicalo a los 108 restantes antes
  de enviar."
- "Respondé hoy los 5 positivos con dos horarios cada uno; los borradores están en Gmail."
- "El asunto B va adelante (14,9% contra 6,4% de respuesta, 47 por variante): es una
  dirección, no un ganador. Usalo en todo el lote 2 y confirmalo."
- "Pausá constructoras en el lote 2 (4 respuestas de 54, cero positivas): primero confirmá
  con 5 llamadas si el dolor existe en ese segmento."
- "En paralelo, mandale el guion de super who a tus 3 contactos de gremio
  (`/sales-playbook-generator`)."

## Sources

- [Reply Classification](references/reply-classification.md): five classes, account-level
  rules, response drafting, metrics
- [Deliverability and Compliance](references/deliverability-compliance.md): sending domain,
  authentication, warm-up, opt-out, LGPD, Paraguay Ley 7593, Chile Ley 21.719
- [LATAM Context](references/latam-context.md): directional reply rates, warm vs cold,
  titles, register, timing
- references/shared/b2b-buying-2026.md: buying groups, multi-threading, warm first
- references/shared/company-brain-integration.md: read order, learning pages, drafts only,
  scheduled runs
- references/shared/editorial-voice.md and references/shared/latam-benchmarks.md
- Forrester B2B buying research (about 13 people per purchase, 86% stall), via Erik Fisher:
  https://www.forrester.com/
- Andrés Nájera, LAN mentor masterclass on warm intros and referrals (Nov 2026)
- Predictable Revenue (Aaron Ross): https://predictablerevenue.com/book/
- The Challenger Sale (Dixon and Adamson): https://www.challengerinc.com/the-challenger-sale/
- Google, Email sender guidelines: https://support.google.com/a/answer/81126
- WhatsApp Business Messaging Policy: https://business.whatsapp.com/policy
- Chile Ley 21.719: https://www.bcn.cl/leychile/navegar?i=1209272
