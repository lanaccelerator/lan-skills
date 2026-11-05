# Retention Frameworks Reference

**Sources:**
- Mehta, Steinman and Murphy (2016). *Customer Success*. Wiley.
- Gallo, "The Value of Keeping the Right Customers", HBR, Oct 2014: https://hbr.org/2014/10/the-value-of-keeping-the-right-customers
- Reichheld, "The One Number You Need to Grow", HBR, Dec 2003: https://hbr.org/2003/12/the-one-number-you-need-to-grow
- David Skok, SaaS Metrics 2.0: https://www.forentrepreneurs.com/saas-metrics-2/
- Andrés Nájera, LAN mentor masterclass (Nov 2026)
- Forrester buying research, via Erik Fisher: about 13 people weigh in on the average B2B purchase; 86% of purchases stall

---

## 1. Onboarding to First Value

**First value** is the first moment the customer sees the result they bought, measured in
their terms. Account created, users invited or integration live are steps, not value.

| Plan | First value example | TTFV target (directional) |
|---|---|---|
| Mínimo (pilot) | First result inside the pilot scope that the champion shows internally | 14-21 days |
| Estándar | First result across the full scope, used in a real decision | 30 days |
| Premium | First result plus the first review with the decider | 30 days |

**Onboarding checklist (per account):**
1. Kickoff with the decider present (or a written reason why not)
2. Baseline signed: the "before" numbers, date and source
3. Integration or data connection live
4. Users trained; the main user has used it unassisted
5. First value reached and recorded in the brain
6. First results check booked on the calendar
7. Billing set up: vendor portal, purchase order, invoice contact

An account past its TTFV target without first value is yellow at best.

---

## 2. Health Score

Each dimension is scored 0-100 with this rubric, then weighted.

| Dimension (weight) | 100 | 60 | 20 |
|---|---|---|---|
| **Uso (30%)** | Uses 90%+ of contracted scope, stable or rising | 50-70% of scope, or down 15-30% in 4 weeks | Under 40% of scope, or down 30%+ in 4 weeks |
| **Valor (30%)** | At or above the success criteria | 50-90% of the target | Under 50% of the target, or not measured |
| **Relación (15%)** | Champion active, decider met in last 90 days, 3+ people engaged | Champion active, decider not met in 90 days | Champion gone or silent 21+ days |
| **Soporte (10%)** | No open issues over 7 days | 1-2 open issues, no complaint | Unresolved complaint or repeated incident |
| **Pagos (15%)** | Paid on time | 1-15 days overdue | 30+ days overdue or disputed |

Interpolate between columns when the account sits in between. Score = sum of (dimension
score x weight). Green 70 or more, yellow 50-69, red under 50. Any dimension at 20 or less is
a red flag regardless of the total.

Rules:
- Score from data, not from the founder's feeling about the relationship.
- Pilots are scored too; Valor uses progress against the pilot's criteria.
- Recompute weekly; record the change and its reason in the account page.

---

## 3. Churn Signals

| Signal | Threshold | First action |
|---|---|---|
| Usage drop | 30%+ in 4 weeks | Call the main user within 48 hours |
| Champion leaves or goes silent | Left, or no reply 21+ days | Reach the decider and the new owner; re-onboard |
| Decider never met | 90+ days without contact | Book a business review with the decider |
| Results below criteria | Two periods in a row | Root cause with the user; recovery plan with dates |
| Invoice overdue | 30+ days | Collections sequence; check purchase order and portal |
| Data export or contract questions | Any | Treat as a churn signal; call the decider |
| Restructuring, merger, budget cut | Public news or internal comment | Ask directly; map the new decision chain |
| No-show at reviews | Two in a row | Change the format: shorter, with the decider |

Many people weigh in on a B2B purchase (about 13 on average, Forrester); they also weigh in
on the renewal. An account with one contact is one resignation away from churn. Keep at
least three people engaged per account.

**Save play format:** account, signals, root-cause hypothesis, meeting with the decider (date),
recovery plan (actions, owner, dates), measurable target, decision date. Discounts are a last
resort; a downgrade to a smaller plan is better than a loss.

---

## 4. Renewal Calendar

| Milestone | Days before renewal | Output |
|---|---|---|
| Internal review | T-120 | Health, results, expansion option, risks |
| Business review | T-90 | One-pager with measured results; recommendation |
| Renewal proposal | T-60 | Draft proposal with renewal and upsell option |
| Contract and paperwork | T-30 | Signature, purchase order, vendor-portal update |
| Renewal | T-0 | New term; invoice on day 1 |

- Monthly contracts: run the same cycle on the contract anniversary.
- Pilots (Mínimo): conversion meeting 5 days before the pilot ends, against the written criteria.
- A milestone missed is flagged in the output with how many days late.
- Price changes at renewal: written notice at least 60 days before (directional; check the
  contract).

---

## 5. Business Review (QBR) One-Pager

One page, sent 48 hours before, pre-wired with the champion, decider confirmed.

1. **Recomendación:** renew, expand or fix, in one sentence.
2. **Su objetivo y dueño:** the goal in their words and who owns it.
3. **Resultados medidos:** table with Métrica | Línea base | Hoy | Cambio | Método y fuente.
4. **Lo que paga vs lo que obtiene:** monthly price vs monthly value, in their numbers,
   conservative.
5. **Por qué:** maximum three reasons, each tied to one of their metrics.
6. **Riesgos:** what could go wrong and what you will do.
7. **Decisión que pedimos y próximo paso con fecha.**

In the meeting: short opening, their reactions first, founder talks at most 33%, ask for the
decision, leave with a dated next step. If the numbers are good, ask for a referral at the end
(section 8).

---

## 6. Expansion Math

**Revenue = customers x average ticket x purchase frequency.** Improvements compound.

| Improvement per lever | Added (wrong) | Compounded (right) |
|---|---|---|
| +10% each | +30% | 1.1^3 = 1.331, +33% |
| +20% each | +60% | 1.2^3 = 1.728, +73% |

Andrés Nájera presents three 20% improvements as +66%; the compounded figure is +72.8%,
rounded +73%.

For a recurring B2B product, read frequency as billed months per customer per year (net of
pauses and churn) or billable purchases per customer per year (renewals, modules, new
sites). Name the mapping in the output.

Which work moves which lever:

| Lever | Retention work that moves it |
|---|---|
| Customers | Pilot conversion (Mínimo to Estándar), referrals, saving red accounts |
| Average ticket | Estándar to Premium, more sites or units, price update at renewal |
| Frequency | Fewer pauses and cancellations, annual renewals, add-on purchases |

**NRR** = (Starting MRR + Expansion - Contraction - Churned MRR) / Starting MRR, over 12
months. Above 100% means the existing base grows on its own (Skok, negative churn).

**Upsell triggers (Estándar to Premium):** volume above included capacity two months in a
row, a new entity or region, a request for SLA, dedicated support or weekly reviews, a
regulated process that needs audit trails.

---

## 7. Measured Benefits and Case Studies (write-back)

Account results page: `customers/<account>/resultados-<YYYY-QN>`.

| Field | Content |
|---|---|
| Industria y tamaño | e.g. supermercados, 24 sucursales |
| Métrica | the metric the customer cares about |
| Línea base | value, date, source |
| Resultado | value, date, source |
| Período | months between baseline and result |
| Método | how it was measured and by whom |
| Cita | exact words, with name and role only if permitted |
| Permiso | público / anonimizado / solo interno, with date and who approved |

Benefits library: `sales/beneficios-medidos`, one row per measured result:
Industria | Tamaño | Métrica | Antes | Después | Período | Permiso | Página fuente.

lead-to-proposal reads this page to match a new prospect with the closest measured result.
Rules: only measured numbers; written permission before any public use; anonymize when
permission is partial; update the row when a newer measurement replaces it.

---

## 8. Referrals

- **When:** at the thank-you moment (Nájera): after a business review with good numbers, a
  renewal, a compliment, an approved case study.
- **How often:** several times a year; at least three asks per green account per year.
- **Who:** green accounts only. Never yellow or red.
- **Script:** "Gracias, [nombre]. Con [resultado medido] que vimos hoy, ¿conocés a alguien en
  [otra empresa / su gremio] que se pueda beneficiar? Si te sirve, te paso un texto corto
  para que lo reenvíes."
- **Make it easy:** a forwardable two-line text; name the gremio, association or WhatsApp
  community where their peers are.
- **Track:** every ask in the CRM: date, who asked, names received, outcome.

Reichheld (HBR 2003) showed that willingness to recommend tracks growth in many industries:
customers who would recommend you are the ones to ask.

---

## 9. Invoicing and Collections Hygiene

| Day | Action (all drafts) | To |
|---|---|---|
| 0 | Invoice on the agreed day, with purchase order number, in the vendor portal if used | Accounts payable |
| +1 overdue | Friendly note with the invoice | Accounts payable |
| +7 | Second note, invoice and purchase order attached, ask for the payment date | Accounts payable |
| +15 | Copy the champion, ask if anything blocks the payment | Accounts payable + champion |
| +30 | Call; apply the pause rule agreed in the contract | Finance contact + decider |

- Outcome fees: invoice after the customer approves the measurement report.
- Keep the vendor folder current (tax ID, certificates, insurance, bank data). Expired
  documents block payment.
- No renewal or upsell proposal while an invoice is disputed.
- Collections status feeds the Pagos dimension of the health score.

---

## 10. Account Sheet (when there is no CRM)

Columns: Cuenta | Plan | MRR | Inicio | Renovación | Champion | Decisor | Último contacto con decisor | Primer valor (fecha) | Uso | Valor | Relación | Soporte | Pagos | Score | Estado | Próximo hito | Fecha | Último pedido de referido | Factura abierta | Días vencida | Notas.

Update it the same day as every touchpoint.
