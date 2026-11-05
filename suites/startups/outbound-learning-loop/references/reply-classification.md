# Reply Classification and Response Rules

**Purpose:** classify every reply to an outbound touch the same day, draft the response,
update the CRM, and feed the weekly learning loop. Read before processing any reply batch.

**Sources:**
- LAN Accelerator founder sales sessions (2026): reply handling, same-day CRM rule
- The Challenger Sale (Dixon and Adamson, 2011): objection root cause before response
- Predictable Revenue (Ross and Tyler, 2011): referral replies as the highest-yield outcome of outbound

---

## 1. The five classes

Every human reply gets exactly one class. If a reply mixes two (an objection plus a
referral), pick the one that drives the next action and note the other.

| Class | Definition | Typical wording (LATAM) | Next action | CRM update (same day) |
|---|---|---|---|---|
| **Positive** | Agrees to talk, asks for a meeting, a demo or a price | "Dale, ¿cuándo podés?", "Mandame más info y lo vemos la semana que viene", "¿Cuánto sale?" | Draft a reply proposing 2 dated slots within 5 business days; stop all other touches to this person | Stage to Qualified or Meeting Booked; next step with date |
| **Objection** | Engages but raises a reason not to move | "Ya tenemos un sistema", "No hay presupuesto este año", "Es caro" | Diagnose the root cause; draft one Challenger response with evidence from the brain; one follow-up maximum | Log the objection text and class; stage unchanged |
| **Referral to another person** | Points to someone else inside the account (or another company) | "Eso lo ve Marta, de Finanzas", "Hablá con el Jefe de Sistemas" | Thank them; ask permission to mention them; draft a message to the referred person citing the referral; add the person to the role map | New contact with role and "referido por"; account role map updated |
| **Not now** | Interested in principle, wrong timing | "Escribime en marzo", "Ahora estamos con el cierre del año" | Draft a short acknowledgment; schedule a re-touch on the date they gave (or 90 days); pause this person's sequence | Re-touch date set; reason logged |
| **Unsubscribe** | Asks to stop, or any clear "no me escribas más" | "No me interesa, sacame de la lista", "Por favor no me escriban" | Stop immediately in every channel; add to the suppression list; no reply needed beyond a one-line confirmation if the channel expects it | Contact marked do-not-contact, with date and channel |

**Not counted as replies:** out-of-office, bounces, auto-acknowledgments. Log them as
technical events: a bounce removes the address; an out-of-office with a return date moves
the next touch to the day after it.

## 2. Account-level rules (multi-threading)

- **Positive from any role:** the account owner pauses every other thread in that account
  for 48 hours, then decides which roles to keep warm. Two people from the same company
  should never receive "¿pudiste ver mi mail?" after a colleague already booked a meeting.
- **Referral inside the account:** the referred person becomes the next touch; the original
  thread is paused, not continued.
- **Objection from the decider:** pause the user and IT threads; the champion thread
  continues with material that addresses the decider's objection.
- **Unsubscribe from the decider:** pause the whole account; the founder decides whether
  to continue with other roles. Never ask other roles to "convince" the person who opted out.
- **Unsubscribe from another role:** stop that person only; the rest of the account continues.

## 3. Response drafting rules

- Drafts only. The founder approves every response before it goes out.
- Respond the same business day. A positive reply answered two days later converts like a
  cold one.
- One ask per response. A positive reply gets slots, not a deck plus slots plus a question.
- Quote their words back when they gave a number or a pain.
- Never argue with a "no". One Challenger response to an objection, then respect the answer.

## 4. Classification quality

- When the class is ambiguous ("interesante, después lo vemos"), classify as **not now**,
  not positive. Optimistic classification inflates the learning loop.
- In a scheduled run, reply classification can run on the cheapest adequate model class
  (Haiku), with the founder reviewing every reply classified as positive or unsubscribe and
  any reply the model marks as uncertain.
- Keep the raw reply text in the CRM activity note so the class can be audited later.

## 5. Metrics this file feeds

Per batch and per week, computed on delivered messages (sent minus bounces):

| Metric | Formula |
|---|---|
| Reply rate | Human replies / delivered |
| Positive rate | Positive replies / delivered |
| Account reply rate | Accounts with at least one reply / accounts contacted |
| Referral rate | Referral replies / delivered |
| Meeting rate | Meetings booked / accounts contacted |
| Unsubscribe rate | Unsubscribes / delivered (above 2% in a batch: stop and review targeting and copy) |
