# Competitive Analysis Framework: Porter's Five Forces + Defensibility Taxonomy

**When to use:** Read this file BEFORE mapping any competitive landscape.
Apply Porter's Five Forces to the industry structure, then use the defensibility
taxonomy to assess what moats exist today vs what must be built.

**Sources:**
- Porter, "The Five Competitive Forces That Shape Strategy" (HBR 2008, updating the 1979 article): https://hbr.org/2008/01/the-five-competitive-forces-that-shape-strategy
- a16z, "The Empty Promise of Data Moats" (2019): https://a16z.com/the-empty-promise-of-data-moats/
- NFX, "The Network Effects Bible": https://www.nfx.com/post/network-effects-bible
- CB Insights Market Maps: https://www.cbinsights.com/research/report/venture-capital-market-maps/

---

## 1. Porter's Five Forces

### Definition and Purpose

Porter's Five Forces (Michael E. Porter, Harvard Business Review, 1979) analyzes
the structural attractiveness of an industry, not just whether a startup can win
against named competitors today, but whether the industry structure allows for
sustainable profits over time.

Apply to the user's industry, not just their competitor list. The most dangerous
threat often comes from a force that does not yet have a name.

---

### Force 1: Threat of New Entrants

**What it measures:** How easy is it for new competitors to enter the market?

**HIGH threat signals (bad for the startup):**
- Low capital requirements to launch a competing product
- No regulatory licenses required
- No proprietary technology advantage that takes years to replicate
- No switching costs that lock in customers
- Established distribution channels are accessible to new entrants
- No brand premium required to win initial customers

**LOW threat signals (good for the startup, structural protection):**
- Regulatory licenses with long approval timelines (fintech, healthtech)
- High upfront capital requirements (hardware, infrastructure)
- Network effects that make early entrants permanently advantaged
- Proprietary data that requires years of operation to accumulate
- Brand moat where trust is a prerequisite (medical, financial, legal)

---

### Force 2: Supplier Power

**What it measures:** How much leverage do suppliers (inputs to the business) have?

**HIGH supplier power (bad for the startup):**
- Few alternative suppliers for a critical input
- Switching suppliers requires significant cost or time
- Supplier can credibly vertically integrate into the startup's market
- The startup is a small customer, suppliers prioritize larger clients

**LOW supplier power (good for the startup):**
- Many alternative suppliers, no single supplier has pricing leverage
- Inputs are commoditized (AWS, GCP, compute is not a moat)
- The startup is or will become a large customer with negotiating power

---

### Force 3: Buyer Power

**What it measures:** How much leverage do customers have on pricing and terms?

**HIGH buyer power (bad for the startup):**
- Customers are large and purchase in high volumes (enterprise B2B)
- Low switching costs, customers can move to a competitor easily
- Customers have credible alternatives that they will use if pricing increases
- Product is not mission-critical, customers can walk away without operational disruption
- Customer has price transparency and regularly bids out contracts

**LOW buyer power (good for the startup):**
- Fragmented customer base, no single customer accounts for >20% of revenue
- High switching costs, data, workflow integration, or compliance dependency
- Product is mission-critical, stopping use causes immediate operational pain
- No credible alternatives at equivalent price point

---

### Force 4: Threat of Substitutes

**What it measures:** What alternatives can customers use to solve the same problem?

**CRITICAL:** Substitutes are not just competing products. They include:
- Status quo behavior (Excel, WhatsApp, paper-based processes)
- DIY solutions (building internally)
- Outsourcing (hiring a person to do what the software does)
- Adjacent tools that partially solve the problem

**HIGH substitute threat (bad for the startup):**
- The current substitute is free or already paid for (spreadsheets, email)
- The substitute requires no behavioral change from the customer
- Substitute quality is improving faster than the startup's product

**LOW substitute threat (good for the startup):**
- Substitutes require significantly more time or cost to achieve the same outcome
- The startup's product demonstrates a 3–5× performance improvement over the substitute
- Regulatory requirements force customers to use a compliant solution (not optional)

---

### Force 5: Industry Rivalry

**What it measures:** How intense is competition among existing players?

**HIGH rivalry (bad for the startup):**
- Multiple competitors at similar scale fighting for the same customers
- Low differentiation, price competition is the primary lever
- High customer acquisition costs due to marketing spend competition
- Competitors can easily copy features, no moat prevents replication

**LOW rivalry (good for the startup):**
- Clear market segmentation, few competitors target the same ICP
- Network effects reward the leader disproportionately
- Differentiation is structural (compliance data, first-mover distribution) not cosmetic (design, UX)
- Industry is growing fast enough that multiple players can expand without head-to-head competition

---

## 2. Defensibility Moat Taxonomy

A moat is a sustainable competitive advantage that makes it progressively harder
for competitors to win your customers over time. Technology is NOT a moat, it
is a head start. A moat compounds. Technology can be replicated.

Apply the taxonomy below to evaluate: (a) which moats the startup has built today,
and (b) which moats must be built by the next funding milestone.

---

### Network Effects (Direct and Indirect)

**Definition:** The product becomes more valuable as more users join. The first
100 users are less well-served than the 10,000th user.

**Direct network effect:** Each new user directly adds value to all existing users.
- Example: WhatsApp (calling), Slack (workspace collaboration), Mercado Libre (buyer-seller marketplace)
- LATAM example: Pix (Brazil's instant payment network), each new bank that connects makes the network more valuable to all existing users

**Indirect network effect:** User growth on one side of a market benefits a different
side (two-sided marketplace or platform).
- Example: Mercado Libre (more sellers → more buyers → more sellers), iFood (more restaurants → more orders → more couriers → more restaurants)

**Key test for network effects:** "If we double our user count, does each existing
user get materially more value?" If yes, you have a network effect. If the product
is equally useful with 100 or 100,000 users (e.g., a personal productivity tool), it is not.

---

### Switching Costs

**Definition:** The cost (time, money, risk, data migration) a customer incurs when
switching from one product to a competitor. High switching costs create retention without
requiring price competition.

**Types of switching costs:**

**Data switching costs:** Customer's historical data is stored in your system.
Migrating it requires time, manual effort, or data quality risk.
- Example: A CRM with 5 years of customer interaction history. Migrating to a competitor means migrating all contact records, deal histories, and email threads, weeks of work.
- LATAM example: Accounting SaaS with 3 years of CFDI (Mexican tax invoices) or NF-e (Brazilian fiscal notes), switching means re-importing all tax records and risking compliance gaps.

**Workflow switching costs:** Customer's internal processes have been redesigned around
your product. Switching disrupts operations, not just software.
- Example: A payroll system that 50 employees use to submit timesheets. Switching means retraining all employees and rebuilding approval workflows.

**Contractual switching costs:** Multi-year contracts, early termination fees, or
compliance requirements that bind the customer to a vendor.
- Example: Annual SaaS subscriptions with penalty clauses. Multi-year enterprise agreements.

---

### Data Advantages

**Definition:** Proprietary data that the company accumulates through operation, data
that a new entrant cannot replicate without years of operation.

**Proprietary data moat:** Data that only your company has because of your specific
position in the market.
- Example: Nubank's credit scoring models trained on 90M+ Brazilian consumer financial profiles, no competitor has this training set without operating at scale for 10+ years.

**Scale data moat:** Your data set is larger than any competitor's, enabling better
model accuracy, recommendation quality, or prediction.
- Example: Totvs has Brazilian SME accounting data from 40+ years of operations, a new entrant's model is always worse because it has less training data.

**Unique data moat:** Data that can only be collected through your specific product design.
- Example: A logistics platform that collects real-time truck location data, this data is only available to the platform operator, not purchasable from any third party.

---

### Brand

**Definition:** A brand moat exists when buyers choose a product because of trust or
status, not just because it is the best product for the price. Brand is a moat only
when it affects purchasing behavior, not just awareness.

**When brand IS a moat:** Medical software (trust = patient safety), financial products
(trust = money security), enterprise software (trust = CIO's job security), consumer
products where social signaling matters (Nubank's purple card as a status signal in Brazil).

**When brand is NOT a moat:** SME SaaS where the buyer makes a rational cost-benefit
comparison. "People know our name" is not a moat if they still evaluate competitors.

---

### Scale Economies

**Definition:** Unit costs decrease as volume increases. Scale creates a cost advantage
that a smaller competitor cannot replicate without first achieving the same scale.

**Examples:** AWS (data center infrastructure), Totvs (R&D costs spread over 40k+ SME
customers), iFood (delivery logistics cost per order falls with density).

**Key test:** "Does our cost per unit meaningfully decline as we grow?" If fixed costs
are high and variable costs are low, scale economies exist.

---

### Regulatory Moats

**Definition:** A regulatory license, certification, or compliance requirement creates
a barrier that competitors must satisfy before entering the market.

**LATAM regulatory moat examples:**
- Mexico fintech (SOFOM license, CNBV): 12–24 month approval process creates structural delay for new entrants
- Colombia fintech (SFC sandbox): Regulators have limited capacity, only a small number of companies can participate simultaneously
- Brazil health data (LGPD compliance for medical data): Data sovereignty requirements limit which companies can store patient data
- Brazil e-Social (mandatory labor compliance reporting): Companies integrated into e-Social reporting have a switching cost, auditors rely on historical filings stored in the system

---

## 3. Direct vs Indirect Competitor Classification

**Direct competitor:** Same customer segment, same problem, same solution type.
- Compete for the same purchase decision. Customers evaluate both before deciding.
- Example: Gupy vs TalentBR, both are Brazilian ATS platforms targeting SME recruitment.

**Indirect competitor:** Same customer, same problem, different solution type.
- Customers may use one or both, but they address the same underlying need.
- Example: LinkedIn Recruiter vs TalentBR, both help SMEs find candidates, but LinkedIn
  is a job board + network while TalentBR is an ATS. Customer may use both.

**Substitute:** Different solution to a related problem the customer has.
- Customer chooses between the solution categories, not the individual products.
- Example: WhatsApp + Catho vs TalentBR, the customer decides whether to use a structured
  ATS at all, before deciding which ATS to use.

**Why the classification matters:** Direct competitors require differentiation.
Indirect competitors may become direct (market expansion). Substitutes require
behavior change as the first sales motion, harder than switching from a competitor.

---

## 4. 2×2 Axis Selection Guide

The 2×2 matrix is only useful if the axes reflect actual differentiation, dimensions
where the startup genuinely outperforms competitors, not dimensions chosen to manufacture
a favorable positioning.

**Axis selection rules:**

1. **Axes must reflect real capability, not aspiration.** If the startup plans to build
   LATAM compliance automation but has not built it yet, do not use compliance as an axis.
   Use what is true today.

2. **Avoid generic axes.** "Price vs features" and "ease of use vs functionality" are
   meaningless, every company claims to be in the upper-right. Use specific capability
   dimensions relevant to this market.

3. **The user should be in the upper-right**: but only because the axes genuinely
   reflect where they win. If the user cannot credibly defend their position on both
   axes, the matrix will collapse in investor diligence.

4. **Good axis examples:**
   - "Alert latency (slow → real-time)" for an agtech platform competing on speed of crop alerts
   - "LATAM SME compliance automation depth (low → full CLT automation)" for an HR tech platform
   - "Proprietary Latin American credit data vs generic credit bureau data" for a fintech

5. **Test your axes:** Can you name a specific competitor who is legitimately high on
   one axis but low on the other? If all competitors cluster on one side, the axes do not
   differentiate.
