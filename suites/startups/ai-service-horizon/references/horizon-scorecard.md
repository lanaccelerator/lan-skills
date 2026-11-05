# Horizon Scorecard: Finished Unit, Work Split, Scoring, Margins

**Sources:**
- YC Requests for Startups, Summer 2026, "AI-Native Service Companies" (Gustaf Alströmer):
  https://www.ycombinator.com/rfs
- Sequoia, "Services: The New Software" (Julien Bek, Mar 2026):
  https://www.sequoiacap.com/article/services-the-new-software
- Bessemer, State of AI 2025: https://www.bvp.com/atlas/the-state-of-ai-2025
- ICONIQ State of AI 2026 (AI builders expect about 52% gross margin in 2026)
- LAN Accelerator operator read (2025-2026) for the default ranges marked "directional"

**When to use:** ai-service-horizon Steps 2-6.

---

## 1. The finished unit

The finished unit is what the customer would happily pay for without caring how it was done.

| Vertical | Tool sells | Finished unit (service sells) |
|---|---|---|
| Bookkeeping | Categorization software | A closed month, reconciled and signed |
| Tax | Filing software | A filed return, on time, with no fines |
| Collections | Reminder automation | A collected invoice (or % of what is recovered) |
| Customer support | Helpdesk with AI drafts | A resolved ticket within SLA |
| Legal | Contract review assistant | A reviewed contract with a lawyer's sign-off |
| Recruiting | ATS with AI screening | A shortlist of qualified candidates, or a hire |
| Sales development | Prospecting tool | A qualified meeting held |

Test: can you count it, can the customer verify it, and does it map to a line in their budget
today? Three yes answers: the line can be a service.

## 2. Work split patterns

Decompose the finished unit into its tasks. Typical pattern for a back-office service:

| Task type | Default owner | Why |
|---|---|---|
| Intake and data collection (documents, emails, portals) | AGENT | Volume, structured |
| Extraction and classification | AGENT | High volume, checkable by sampling |
| Reconciliation and matching | AGENT | Rules plus fuzzy matching |
| Drafting the output (report, filing, message) | AGENT + REVIEW | Must be right before it leaves |
| Exceptions (missing data, contradictions) | HUMAN, agent prepares the case | Judgment |
| Sign-off, filing under a license | HUMAN | Liability, regulation |
| Customer relationship, bad news, scope changes | HUMAN | Trust |
| Follow-up and reminders | AGENT | Volume, timing |

Sampling rule for AGENT tasks: start by reviewing 100% for the first 2-4 weeks, then drop to a
fixed sample (for example 10%) only while the error rate stays under the agreed threshold.
Any error that reaches a customer resets to 100% for that task.

YC's bar for an AI-native service: agents are the primary workforce. If HUMAN tasks take most
of the hours, the company is an agency with tools.

## 3. Scoring rubric (1-5 per criterion)

| Criterion | 1 | 3 | 5 |
|---|---|---|---|
| Assistant substitution risk as a tool | Claude/ChatGPT alone do 80%+ of the job | 25-50% | Under 25%, or blocked by data, integration or license |
| Agent readiness | Under 30% of tasks at AGENT or AGENT + REVIEW | About 50-60% | 80%+ |
| Outcome measurability | No countable unit | Unit defined, verification manual | Unit counted automatically and verified by the customer |
| Service budget | Nobody pays for this job today | Done in-house, cost unclear | Customer pays an outsourcer or firm a known monthly fee |
| Liability manageable | Errors are catastrophic and uninsurable | Errors are costly but caught by review | Errors are rare, caught early, capped by contract or insured |
| Human scaling | Hours per unit flat or rising | Falling slowly | Falling fast as agents improve; target hours known |

## 4. Margin model

Per customer per month:

```
Gross margin % = (Price - Inference - Human hours x Loaded hourly cost - Other direct) / Price
```

- **Inference:** model calls per finished unit x units x cost per call. Route routine steps to
  a lower-cost model class and reserve the top class for hard cases; this is often the largest
  lever after human hours.
- **Human hours:** measure, do not guess, after the first 5 customers. Track hours per unit
  weekly.
- **Loaded hourly cost:** salary plus taxes, benefits and tools, divided by productive hours.
- **Other direct:** professional liability insurance or an error reserve, licensed signature
  fees, third-party data or APIs.

Default ranges for a first model (directional, LAN operator read; replace with the founder's
numbers as soon as they exist):

| Position | Gross margin, early | Gross margin, target | What moves it |
|---|---|---|---|
| Tool | 70-85% | 75-85% | Inference cost per user |
| Tool + service | 50-70% | 65-80% | Setup hours amortized, review hours per customer |
| Service (AI-native) | 40-60% | 65-80% | Human hours per unit falling, model routing |

Bars to compare against (shared/ai-era-evaluation.md): above 70% healthy for
software, under 50% fragile; AI builders expect about 52% in 2026 (ICONIQ). Bessemer's
"Shooting Star" AI companies run about 60% gross margin.

Market sizing: tool TAM = customers x software price x 12. Service TAM = customers x what they
pay a person or firm for the same job x 12. Sequoia's ratio (USD 6 on services per USD 1 on
software) is the sanity check for the gap.

## 5. Where it usually goes wrong

- Selling a service with no eval set: quality is promised, not measured.
- Hours per unit never measured: margin looks fine in the deck and bad in the bank.
- Pricing the service by seat: the customer pays per user while agents do the work; the
  upside goes to the customer.
- Taking liability without a cap or insurance.
- Replacing the customer's outsourcer without a plan for the outsourcer's reaction (they are
  often the person who recommended you).
