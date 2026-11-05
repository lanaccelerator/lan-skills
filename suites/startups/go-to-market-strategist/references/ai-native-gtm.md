# AI-Native GTM and AI in the Sales Stack

**When to use:** go-to-market-strategist Steps 2-9, for every plan: the default competitor
(section 6) and the distribution check (section 5) apply to any startup, AI-native or not.

**Sources:**
- Anthropic, "Donating the Model Context Protocol and establishing the Agentic AI Foundation"
  (Dec 2025): https://www.anthropic.com/news/donating-the-model-context-protocol-and-establishing-of-the-agentic-ai-foundation
- Claude connectors directory (Jul 2025): https://claude.com/resources/articles/connectors-directory
- OpenAI, "Introducing apps in ChatGPT and the new Apps SDK" (Oct 6, 2025):
  https://openai.com/index/introducing-apps-in-chatgpt/
- YC Requests for Startups, Summer 2026, "AI-Native Service Companies" (Gustaf Alströmer):
  https://www.ycombinator.com/rfs
- Sequoia, "Services: The New Software" (Julien Bek, Mar 2026):
  https://www.sequoiacap.com/article/services-the-new-software
- a16z, "How 100 Enterprise CIOs Are Building and Buying Gen AI in 2025" (Jun 2025):
  https://a16z.com/ai-enterprise-2025/
- Bessemer, State of AI 2025: https://www.bvp.com/atlas/the-state-of-ai-2025

---

## 1. Pricing shapes the motion

| Pricing model | What the buyer pays for | GTM implication |
|---|---|---|
| Seat | Users | Classic SaaS motion; weak fit when the AI replaces work instead of helping a user |
| Usage | Tokens, tasks, documents, minutes | Low-friction land, expansion follows usage; forecast and margin need monitoring |
| Outcome | Resolved tickets, booked meetings, recovered revenue | Strongest value story; needs an agreed, measurable outcome and attribution |
| Hybrid | Platform fee + usage or outcome | Predictable floor for the buyer, upside for the seller; common in 2025-2026 |

- Enterprise buyers still prefer paying by usage over outcomes, citing unpredictable cost and
  unclear outcome measurement (a16z, "How 100 Enterprise CIOs Are Building and Buying Gen AI in
  2025", June 2025, https://a16z.com/ai-enterprise-2025/). Offer outcome pricing as an option,
  not the only door.
- The same survey reports AI spend moving from innovation budgets (25% down to 7% of LLM spend)
  to core budgets: sell to the owner of the operational budget, not to an innovation lab.
- Price levels themselves: hand off to pricing-strategy-designer.

## 2. Growth and efficiency bar

- Bessemer's State of AI 2025 (https://www.bvp.com/atlas/the-state-of-ai-2025) describes two
  archetypes among high-growth AI companies: "Supernovas" (about USD 40M ARR in year one, about
  25% gross margin) and "Shooting Stars" (about USD 3M ARR in year one, about 60% gross margin,
  growing roughly 4x, 4x, 3x, 3x, 3x). US-sourced benchmark, small sample of top companies.
- LAN's read for early-stage AI-native startups: top funds look for about 10% week-over-week
  growth at the earliest stage, with small teams. Label it as LAN's read.
- Revenue from pilots and experimental budgets is not ARR. Track conversion from pilot to
  contract as its own GTM metric.

## 3. AI in the sales stack (any startup)

Use AI to multiply founder-led sales, not to replace the relationship:

| Job | How AI helps | Guardrail |
|---|---|---|
| Account research | Summarize the prospect's site, news, filings and hiring before a call | Every fact used in outreach is checked against its source |
| List building and enrichment | Find companies matching the ICP and the right role | Respect data protection law and platform terms; no scraping behind logins |
| Personalized first drafts | First lines tied to a real trigger (expansion, new regulation, hire) | A human reads and edits every message; no mass-personalized blasts |
| Call notes and CRM hygiene | Transcribe, extract next steps and MEDDICC fields, update the CRM | Get consent to record where the law or the customer requires it |
| Company context | Pull win/loss notes, case studies and pricing from the company brain so every rep sells from the same facts | The brain is the source of truth; no improvised prices or claims |
| Support and qualification bots | Answer inbound questions on web or WhatsApp, book meetings | WhatsApp only with opt-in; hand off to a human fast |

## 4. Defensibility questions buyers and investors will ask

- What happens when the model provider ships this as a feature?
- What data, workflow integration or distribution does the product own that a competitor with
  the same model cannot copy in 6 months?
- Gross margin after inference costs, and how it improves with scale.

## 5. Distribution inside AI assistants (MCP)

Buyers increasingly do their work inside Claude or ChatGPT. A product that shows up there gets
used where the work happens, without a new tab or a new login.

- **The standard:** the Model Context Protocol (MCP) connects AI assistants to external tools
  and data. Anthropic reported 10,000+ published MCP servers and 97M monthly SDK downloads when it
  donated MCP to the Agentic AI Foundation (Dec 2025).
- **Two storefronts:** the Claude connectors directory (launched Jul 2025) lists MCP servers
  that users connect in one click; the OpenAI Apps SDK (launched Oct 6, 2025) is built on MCP and
  lets apps run inside ChatGPT with their own interface. One MCP server can serve both.
- **When it is a real channel (score 3 on channel 14):** the buyer already uses Claude or
  ChatGPT daily for this job; the product's value is data or an action the assistant cannot
  reach alone (your database, your transaction, your human team); and a single tool call shows
  value in under a minute.
- **When it is "later" (score 2):** buyers use assistants but not yet for this job, or the
  product needs a heavy UI. Ship a small read-only MCP server as an experiment.
- **When it is "never for now" (score 1):** buyers do not use AI assistants at work (common in
  traditional LATAM SMBs and field operations); WhatsApp is still the interface.
- **What to measure:** installs, weekly active connections, tool calls per account, and the
  share of new accounts whose first touch was the assistant.
- **Guardrails:** least privilege per tool, explicit user consent for every write action,
  simple tool descriptions, follow each directory's review and data policies. Never expose data
  of one customer to another through a shared server.
- **No-dependency path:** if the team cannot ship an MCP server yet, publish a public page with
  clear structured content and an `llms.txt`, so assistants that browse can find and cite the
  product, and test discoverability by asking Claude and ChatGPT the buyer's question by hand.

## 6. Competitor 0: Claude/ChatGPT doing the job alone

Every GTM plan analyzes this competitor, even when the founder does not name it. A general
assistant at about USD 20 per month per user is the new "do nothing" option for many workflows.

Run the test by hand in 20 minutes:

1. Take 3 real tasks the buyer would give your product (anonymized).
2. Ask Claude and ChatGPT to do each task with only what a buyer would paste in.
3. Score the share of the job the assistant completes acceptably (0%, 25%, 50%, 80%, 100%).
4. Write, in one line each, why the buyer would still pay you. Valid reasons:

| Reason | Test |
|---|---|
| Proprietary data | The answer needs data the assistant cannot access or buy |
| Workflow lock-in | The output must land in a system of record (ERP, payroll, invoicing) with integration and audit |
| Distribution | You already sit where the buyer works (a gremio, a platform, an existing contract) |
| Service layer | Someone answers for the result: humans in oversight, an SLA, liability, a signature |
| Regulation or trust | Local compliance, data residency, a licensed professional on record |

Reading: if the assistant does 80% or more of the job and none of the five reasons holds, the
GTM is not the problem; the wedge is. Say it first and hand off to venture-model-validator or
ai-service-horizon. If the assistant does under 25%, say it is not the main threat, and keep the
row so the team re-tests every quarter (models improve; competitor-watch re-runs it weekly).

## 7. The service horizon: tool -> tool+service -> service

- **YC RFS Summer 2026, "AI-Native Service Companies":** AI agents as the primary workforce,
  humans in oversight. The company sells the finished work, not the software.
- **Sequoia, "Services: The New Software":** for every USD 1 spent on software, USD 6 is spent
  on services. Selling the work opens the larger budget.

GTM implications by position:

| Position | What the buyer buys | Motion | Pricing that fits |
|---|---|---|---|
| Tool | Software their team operates | Product-led or founder-led SaaS sale | Seat or usage |
| Tool + service | Software plus done-for-you setup, operation or review | Founder-led sale, onboarding as part of the offer | Setup fee + usage |
| Service | The outcome (closed books, resolved tickets, filed reports) | Consultative B2B sale to the budget owner of the outsourced work | Outcome or % of savings, with a floor |

A service sells against the agency, the outsourcer or the in-house team, not against software,
so the competitor list and the buyer change. Price levels go to pricing-strategy-designer (three
plans: Mínimo, Estándar, Premium, with mixed billing). The full horizon decision goes to
ai-service-horizon.
