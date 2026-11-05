---
name: pricing-strategy-designer
description: >
  For STARTUP FOUNDERS pricing a B2B or AI product. ALWAYS invoke when a founder asks how much
  to charge, how to package plans or how to bill: "cuánto cobro", "armame los planes de
  precios", "cobro setup, por uso o por resultado?", "estoy cobrando muy barato?", "cómo cobro
  un agente de AI", "precios en dólares o moneda local". Finds the value metric (ProfitWell),
  designs three plans (Mínimo pilot to get in, Estándar to sell, Premium as anchor) with mixed
  billing (setup fee + usage + outcome or % of savings, never per seat only), checks the
  inference margin floor, runs willingness-to-pay methods (Van Westendorp), flags LATAM
  underpricing and ends with a price test. NOT for CAC, LTV or payback math (use
  unit-economics-calculator), the price inside one specific proposal (use lead-to-proposal),
  upsells and renewals with existing customers (use customer-retention-expansion), valuation
  (use startup-valuation-benchmark) or the sales process (use sales-playbook-generator).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.3"
  suite: startups
  complements: [unit-economics-calculator, lead-to-proposal, customer-retention-expansion, sales-playbook-generator]
license: MIT
---

# Pricing Strategy Designer

Designs how a startup charges: the value metric, three plans and a mixed billing model.
Built on the Patrick Campbell / ProfitWell value metric method, Kyle Poyar's usage and
hybrid pricing research, Simon-Kucher's "Monetizing Innovation" (price to value, not to
cost), and anchoring research (Tversky and Kahneman, 1974; Huber, Payne and Puto, 1982).

The packaging is always three plans:

- **Mínimo:** a small pilot with a narrow scope and a fixed, easy price. Its job is to get
  in the door and convert most proposals into a first "yes", then upsell.
- **Estándar:** the average standard work you actually want to sell. Most revenue lands here.
- **Premium:** the expensive anchor. Few buy it, it makes Estándar look reasonable, and the
  one who buys it pays like several Estándar customers.

Billing is mixed: a setup fee, a recurring base, a usage or variable component and, where
the value can be measured, an outcome fee or a % of savings. Per seat only is no longer
enough: when an AI agent does the work, the customer needs fewer seats exactly as you
deliver more value. Capture part of the upside you generate, and mix the components per
client.

## Step 1: Input Gathering

Read the company brain first (references/shared/company-brain-integration.md, sections
1-3): current price list, proposals sent and their outcome, case studies with measured
benefits, competitor notes, cost per unit. Then ask ONLY for what is missing, all in ONE
message. Defaults in brackets.

1. **Product and buyer:** what the product does, who uses it, who pays. [From the brain]
2. **Current pricing:** what you charge today and how (seat, flat, usage). [Nothing yet]
3. **Value delivered:** what the customer saves or earns, in their numbers (hours, costs,
   recovered revenue, risk avoided). [From case studies in the brain, else ask]
4. **Value metric candidates:** what the customer gets more of as they use it more
   (documents processed, invoices managed, conversations, revenue processed). [Inferred]
5. **Onboarding effort:** hours or cost to integrate, migrate data and train a new
   customer. [ASSUMPTION: 20-40 hours for B2B with an integration]
6. **Cost per unit:** hosting, inference, third-party APIs, messaging, human review per
   unit of work. [Required for AI products; estimate from provider price lists]
7. **Alternatives:** what the buyer does today and 2-3 competitors with known prices.
   ["I don't know" is fine]
8. **Deal history:** proposals sent, accepted, lost on price. [From the brain or CRM]
9. **Geography and currency:** countries sold to, currency of invoicing. [USD list price]
10. **Stage:** pre-revenue / early revenue / restructuring existing plans. [Early revenue]

If the user does not answer, proceed and mark it `[ASSUMPTION: ...]`. Never invent a case
study, a competitor price or a customer metric.

## Step 2: Apply Frameworks

Read [references/pricing-framework.md](references/pricing-framework.md) BEFORE designing.

1. **Value metric (Patrick Campbell / ProfitWell, now Paddle):** the unit the customer pays
   for must (a) be understood without explanation, (b) grow with the value received and
   (c) be measurable and billable without dispute. Pricing not tied to a value metric
   cannot grow without more seats or price increases.
2. **Usage and hybrid pricing (Kyle Poyar, Growth Unhinged):** a predictable floor plus a
   variable component that expands with use.
3. **Price is the strongest profit lever (Marn and Rosiello, HBR 1992, 2,400+ companies):**
   a 1% price improvement with no volume loss lifts operating profit 11.1%, vs 3.3% for 1%
   more volume.
4. **Price to value (Simon-Kucher, "Monetizing Innovation"):** start from willingness to
   pay, then design the product and plans around it.
5. **Anchoring and decoy effects:** the first number seen sets the reference (Tversky and
   Kahneman, 1974), and adding a clearly more expensive option shifts choice toward the
   middle one (asymmetric dominance, Huber, Payne and Puto, 1982; Ariely, "Predictably
   Irrational", 2008). This is why Premium exists.
6. **Services as software (Sequoia, Julien Bek, Mar 2026):** for every $1 spent on
   software, $6 is spent on services. If the product does the work, price the work and
   the result, not the tool.

## Step 3: Workflow

Execute in this order.

1. **Value metric.** Pick one, list the rejected alternatives and why.
2. **Delivered value per month** for the typical customer, conservative and base case,
   from their numbers. Every input carries its source or `[ASSUMPTION]`.
3. **Mixed billing design.** Decide each component, with its unit and its reason:
   - **Setup fee (one-time):** integration, data migration, configuration, training.
     Covers your onboarding cost and filters unserious buyers. Price it at or above your
     onboarding cost; never waive it in Estándar or Premium.
   - **Recurring base:** the predictable floor (platform fee, capacity included). Seats
     can be one line inside it, never the only one.
   - **Usage / variable:** price per unit of work above an included volume, with a cap
     the buyer can budget.
   - **Outcome or % of savings:** a share of the measured result (savings, recovered
     revenue, conversions). Only when there is an agreed baseline, a measurement method
     both sides can audit, and a cap and floor. Billed in arrears (monthly or quarterly
     true-up).
   Rule of thumb: total price captures 10-30% of delivered value (directional). Below 10%
   is underpricing; above 30% needs proof the buyer already accepts.
4. **Design the three plans.** Use [references/pricing-framework.md](references/pricing-framework.md)
   section "Three plans":
   - **Mínimo:** one team, one branch or one process; 30-90 days; fixed price known up
     front (procurement approves it fast); reduced setup that is credited to Estándar if
     they convert. Written success criteria and the Estándar price are agreed in the same
     document. Target: most proposals accept it. It must not lose money.
   - **Estándar:** the full standard scope; all billing components; the plan you
     recommend and show as "recomendado".
   - **Premium:** 2.5-4x the typical Estándar monthly total (directional); adds what costs
     you to deliver (dedicated person, SLA, custom integrations, guarantee, higher outcome
     share). It must be profitable if someone buys it: an anchor you cannot deliver is a
     lie. Target: 5-15% of deals.
5. **Upsell path Mínimo to Estándar.** Define the conversion meeting date, the success
   criteria, the setup credit and the pre-agreed price. The execution after the sale
   belongs to `/customer-retention-expansion`.
6. **Mix per client.** Show how the same plan flexes: a buyer with a fixed annual budget
   gets a higher base and a capped variable; a CFO who wants shared risk gets a lower base
   and a higher outcome share. The components move, the total value captured stays in range.
7. **Willingness to pay.** Run or design one method: Van Westendorp Price Sensitivity Meter
   (4 questions to 10-30 buyers), Gabor-Granger (accept or reject at successive prices),
   or the value-based estimate when no survey is possible. See the framework file.
8. **Margin floor.** Gross margin of at least 60% per plan at the median customer's usage,
   with inference, messaging, third-party APIs and human review in COGS. Also check the
   heaviest customer. Cap or meter usage so one power user cannot turn an account
   unprofitable.
9. **Buyer alternatives.** Compare against the status quo (doing it by hand), an agency or
   service provider, and 1-3 competitors. Only published prices, with source and date.
10. **Expected funnel.** For 10 proposals, estimate how many accept Mínimo, Estándar and
    Premium, the Mínimo to Estándar conversion, setup revenue (one-time, reported apart)
    and MRR at month 6. Compare with the current model.
11. **Flag underpricing** directly if present (common in LATAM). Give the evidence.
12. **Price test** and handoffs (Próximos Pasos).

Setup fees are one-time revenue: report them apart from MRR and ARR, never inside them.
Hand the plan to `/unit-economics-calculator` to compute payback with and without setup.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns,
or field order. Fill every [bracketed placeholder] with real analysis from the user's
startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. Sections, in order:

1. Métrica de valor
2. Modelo de cobro mixto: Componente | Qué cobra | Unidad | Por qué
3. Los tres planes: Plan | Para quién | Alcance | Setup | Base mensual | Variable | Resultado | Total mes típico | Rol
4. Ruta de upsell Mínimo a Estándar
5. Cómo ancla Premium
6. Valor entregado y disposición a pagar
7. Piso de margen
8. Alternativas del comprador
9. Embudo esperado de 10 propuestas
10. Contexto LATAM
11. Próximos pasos (with one specific price test)
12. Fuentes

If the brain is connected, file the result as a page (default
`sales/pricing/<YYYY-MM-DD>-planes`) and link it from the offering page, so lead-to-proposal
reads the new price list from there. Never overwrite the current price list without the
founder's approval: create the new version and flag the change.

## LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing the
output. For regional data, follow references/shared/latam-benchmarks.md and label LATAM
ranges `(LATAM, directional)`.

- **Chronic underpricing:** LATAM SaaS is often priced at a small fraction of delivered
  value because founders fear churn. If case studies show USD 1,000+ of annual savings and
  the price is USD 29/month, the price captures about 3% of value. Raise prices before
  raising capital.
- **The LATAM discount is real but overstated:** lower willingness to pay justifies part
  of the gap with US prices, not pricing at 5% of delivered value.
- **Mínimo fits LATAM procurement:** a fixed, small amount often sits below the
  threshold that needs board or regional approval. Ask for that threshold in discovery
  and size Mínimo under it.
- **Setup fee and payment terms:** corporates pay at 30-60 days; ask for 50% of setup on
  signature. Invoice setup as a separate line (taxes such as IVA apply to it too).
- **Outcome fees need an auditable baseline:** agree the baseline and the data source
  (bank statement, ERP report) in writing before the start. Without it, the outcome fee
  becomes a monthly argument.
- **Currency:** USD list price, local currency invoicing at the day's rate when needed.
  Multi-country and US-facing products price in USD.
- **Monthly before annual:** LATAM B2B buyers often need 3+ months of proof before an
  annual prepay. Lead monthly; offer annual at month 3-4 with about a 15-20% discount.
- **AI-native: price the work and the result, not the seat.** In ICONIQ's State of AI
  snapshot (Jan 2026), usage-based pricing rose from 19% to 35% of AI companies and
  outcome-based from 2% to 18% in six months, and AI product gross margins average around
  50%, well below SaaS (US-sourced benchmark). Price above the inference cost floor.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, not a cheerleader. Challenge
underpricing with numbers:

"A USD 300 por usuario, cada vez que tu agente hace mejor su trabajo tu cliente te saca un
usuario. Tu ingreso cae justo cuando tu valor sube. Con setup + base + 10% de lo
recuperado, el mismo cliente te paga USD 1.100 por mes y se queda con el 83% del valor."

If Premium is a fake anchor (a price nobody could justify and you could not deliver), say
so. If Mínimo is so cheap it loses money or so broad it cannibalizes Estándar, say so.

## Próximos Pasos

Always include one specific price test with a method, not "test your pricing". Examples:

- "Mandá las próximas 10 propuestas con los tres planes lado a lado y Estándar marcado
  como recomendado. Medí cuántas eligen cada plan. Si menos de 6 de 10 aceptan Mínimo, el
  piloto es muy caro o muy amplio: reducí el alcance, no el precio."
- "Corré Van Westendorp con 15 gerentes de finanzas de tu ICP (4 preguntas, formulario
  gratis). Si tu base de Estándar queda arriba del punto 'caro pero lo consideraría', bajá
  la base y subí el componente de resultado."
- "Pasá a los 3 clientes actuales por usuario a setup + base + uso en la renovación, con
  60 días de aviso por escrito y precio congelado 90 días."

Then hand off: `/unit-economics-calculator` with the new plans (payback with and without
setup, margin on outcome fees), `/lead-to-proposal` to quote a named prospect from the new
price list, `/customer-retention-expansion` to run the Mínimo to Estándar to Premium
upsells, and `/sales-playbook-generator` if the plans change who sells and how.

## Sources

- ProfitWell value metric: Patrick Campbell / ProfitWell (now Paddle) value-based pricing method; the original profitwell.com articles are offline
- Kyle Poyar, Growth Unhinged (usage and hybrid pricing research): https://www.growthunhinged.com/
- Marn and Rosiello, "Managing Price, Gaining Profit", HBR 1992: https://hbr.org/1992/09/managing-price-gaining-profit
- Monetizing Innovation (Simon-Kucher): https://www.simon-kucher.com/en/book/monetizing-innovation
- Tversky and Kahneman, "Judgment under Uncertainty: Heuristics and Biases", Science, 1974: https://www.science.org/doi/10.1126/science.185.4157.1124
- Huber, Payne and Puto, "Adding Asymmetrically Dominated Alternatives", Journal of Consumer Research, 1982: https://doi.org/10.1086/208899
- Ariely, D. (2008). *Predictably Irrational*. Harper.
- Van Westendorp, P. (1976). NSS Price Sensitivity Meter, ESOMAR Congress.
- Sequoia, "Services: The New Software" (Julien Bek, Mar 2026): https://www.sequoiacap.com/article/services-the-new-software
- ICONIQ State of AI bi-annual snapshot, Jan 2026 (summary: SaaStr, 28 Jan 2026): https://saastr.com/inference-costs-average-23-of-revenue-at-ai-b2b-companies-how-will-you-pay-for-it
- [Pricing Framework](references/pricing-framework.md): value metric, mixed billing, three plans, willingness-to-pay methods
- [LATAM Context](references/latam-context.md): currency, billing cadence, procurement, underpricing
