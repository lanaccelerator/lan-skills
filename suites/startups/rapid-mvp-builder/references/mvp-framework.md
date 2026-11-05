# MVP Framework Reference

**Sources:**
- Lean Startup: http://theleanstartup.com/
- MoSCoW Prioritization: https://www.productplan.com/glossary/moscow-prioritization/
- Pieter Levels: https://levels.io/bootstrapping/
- YC Launch Now: https://www.ycombinator.com/library/4D-yc-s-essential-guide-to-go-to-market

---

## MoSCoW Prioritization Rubric

### Must-have

Definition: The MVP fails its hypothesis test without this feature. If you launch without it,
you cannot learn what you came to learn.

Challenge question for every Must-have candidate:
> "What specifically breaks if this is not in v1? Can the hypothesis still be tested?"

If the answer is "users can work around it" or "we'd have to do it manually but it works",
it is not a Must-have. Demote to Should-have.

Examples of genuine Must-haves:
- User authentication (without it, you have no users at all)
- The core transaction or workflow the MVP is designed to validate
- Payment processing (if the hypothesis requires customers to pay; without payment, you have
  not validated willingness-to-pay, only interest)
- Legal requirements (LGPD notice in Brazil, Ley 7593 consent notice in Paraguay, CFDI in
  Mexico): these are not optional at launch

Anti-patterns in Must-have categorization:
- Admin dashboard → Should-have (use Supabase Studio directly)
- Email notifications → Should-have (use Zapier at MVP)
- Analytics → Won't-have (not enough data to be actionable)
- Mobile app → Won't-have (web app works on mobile browsers)
- Multi-language support → Won't-have

### Should-have

Definition: Important for user experience and retention, but the MVP works and the hypothesis
can be tested without it. Ship in v1 only if Must-haves are done with time remaining.

Challenge question: "If we cut this, does the hypothesis become untestable?" If no, it is
at most a Should-have.

Examples:
- In-app messaging (users can WhatsApp in the meantime)
- Status notifications (founder can manually notify in early days)
- Search + filter (manual browsing works for first 50 items)
- Profile editing (support request for MVP, address post-launch)

### Could-have

Definition: Nice to have if time permits after Should-haves. Creates incremental value.
Cut immediately if behind schedule.

Examples:
- Rating and review system
- Social sharing
- Referral program
- Advanced filters and sorting

### Won't-have

Definition: Explicitly out of scope for this version. Saying "won't-have" is a commitment,
not a deferral. If it appears in v2, it should be a conscious re-evaluation, not a
"we ran out of time."

Always include in the plan: it prevents scope creep by making exclusions explicit.

Examples:
- Native mobile app (v1)
- Analytics dashboard (v1)
- Multi-currency support (unless LATAM geography requires it)
- Third-party integrations beyond core payment
- AI features bolted onto a non-AI product (v1: validate the core workflow first). If AI IS
  the product (an agent or AI service), the model call is the core flow and a Must-have:
  use a hosted model API, no fine-tuning or custom models in v1

---

## Tech Stack Decision Tree

### By Business Model

**SaaS (B2B):**
- Frontend: Next.js or React
- Backend: Next.js API routes (Node.js) or Supabase Edge Functions
- Database: Supabase (PostgreSQL)
- Auth: Supabase Auth
- Recommended: Full Supabase stack: fastest to production, handles RLS, auth, storage

**Marketplace:**
- Same as SaaS + payment processing for both sides
- Critical: Choose payment provider that handles marketplace splits from day 1
  (Stripe Connect, MercadoPago Marketplace, PagSeguro Marketplace)
- Do not build a custom split payment system at MVP: use provider primitives

**E-commerce:**
- Frontend: Next.js
- Payments: Stripe + local LATAM provider (PagSeguro for Brazil, Clip/Conekta for Mexico)
- Backend: Next.js API routes + Supabase
- Consider: Shopify for pure e-commerce (reduces build time from weeks to days)

**Fintech:**
- Requires banking partner / fintech infrastructure from day 1 (not optional at MVP)
- Brazil: Partner with a Baas (Banking-as-a-Service) provider: Dock, Celcoin, or BMP
- Mexico: STP for SPEI integration, Conekta for card processing
- Do not attempt to build payment infrastructure at MVP: use regulated partners

**Consumer App:**
- Mobile-first web app (Next.js, mobile-responsive) before native app
- Build native only after validating hypothesis with web version
- React Native if native required: one codebase for iOS + Android

### By Team Tech Capacity

**Default in 2026: build with an AI coding agent** (Claude Code, Cursor, Codex or similar).
A founder who can describe the product precisely can ship a working Next.js + Supabase MVP
in days, not months. The agent writes the code; the founder owns the spec, the tests and
the security checklist below.

**Solo non-technical founder:**
- AI coding agent on the standard stack (Next.js + Supabase + Vercel), one user journey at a
  time, deployed from day 1. No-code (Glide, Bubble, Webflow + Airtable) is still fine for a
  form-and-list product, but it becomes a rewrite later
- Goal: ship in 1-2 weeks to validate the hypothesis
- Get a technical advisor to review auth, data access and secrets before real users arrive
- Hire a CTO after validation, not before

**Non-technical co-founder + CTO:**
- Standard Supabase + Next.js stack, CTO directs AI coding agents
- CTO builds, founder validates with users simultaneously
- Timeline: 1-3 weeks to MVP depending on complexity

**AI-written code security minimum (all teams):**
- Row Level Security on every Supabase table; test that user A cannot read user B's data
- No secrets in the repo or in client code; keys in environment variables
- Payments and webhooks verified server-side
- One end-to-end test of the core journey that runs before every deploy

**Technical founding team:**
- Same Supabase + Next.js stack (do not over-engineer at MVP stage)
- Resist the urge to build custom infrastructure: use managed services
- Goal is shipping, not technical purity

---

## Feature Scoring Guide

When prioritizing features, score each on two dimensions (1-5 scale):

**Hypothesis Relevance (1-5):**
- 5: Without this feature, the hypothesis cannot be tested at all
- 4: Required for a credible test; workarounds exist but degrade results
- 3: Improves test quality but hypothesis is still testable without it
- 2: Useful post-validation but not needed for the test
- 1: Not related to the hypothesis at all

**Build Cost (1-5, inverted: lower cost = higher score):**
- 5: Less than 1 day to build
- 4: 1-3 days
- 3: 3-7 days
- 2: 1-2 weeks
- 1: More than 2 weeks

**Priority Score = Hypothesis Relevance × (6 - Build Cost)**

Features with Priority Score ≥ 12 are candidates for Must-have. Features below 6 are
candidates for Won't-have.

---

## Minimum Viable Launch Checklist

These criteria must be met before calling any MVP "live":

**Functional:**
- [ ] The core user journey works end-to-end without errors
- [ ] Payment processes successfully (real transaction, not just test)
- [ ] Error states handled (form validation, payment failure, empty states)
- [ ] Web app works on mobile browser (responsive design)

**Legal:**
- [ ] Privacy policy exists (even if simple)
- [ ] Terms of service exist
- [ ] LGPD notice at signup (Brazil), Ley 7593 consent notice (Paraguay, enforceable ~Nov 2027)
  OR equivalent local privacy notice
- [ ] Data is not stored without explicit user consent

**Operational:**
- [ ] Founder has personally completed the user journey as both sides (supply + demand)
- [ ] Founder has talked to at least 5 target users and confirmed willingness to pay
- [ ] Support contact exists (even if just email or WhatsApp)
- [ ] Monitoring exists (even if just manual Supabase dashboard checks)

**LATAM-specific:**
- [ ] Local payment method integrated (PIX for Brazil, OXXO/SPEI for Mexico, PSE for Colombia)
- [ ] Compliance notice at registration for jurisdiction

---

## Building with an AI Coding Agent

**Sources:**
- LAN Brain workflow-bench (Aug 2026): curated docs vs raw files, 165 runs of real tasks
- Anthropic, "The new rules of context engineering" (claude.dev blog, 2026):
  https://claude.dev/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models/
- Claude Code subagents docs: https://code.claude.com/docs/en/sub-agents

### 1. A PRD over a prompt

The agent builds what the spec says. A one-line prompt ("hacé una app para restaurantes")
produces a generic app; a one-page PRD produces the MVP you scoped. Write the PRD first,
save it in the repo (`docs/prd.md`), and point every build session at it.

Minimum PRD (one page, plain markdown):
1. **Hypothesis** (the sentence from Step 1 of the workflow)
2. **First user** and the one journey from login to value, as numbered steps
3. **Must-haves** from the MoSCoW table, each with an acceptance test ("restaurante publica
   un retiro en menos de 5 minutos")
4. **Won't-haves**, explicit, so the agent does not add them
5. **Data model** (tables and who can read each row)
6. **Integrations** (payment provider, email, LATAM compliance notice)
7. **Definition of done**: the end-to-end test that must pass before deploy

### 2. Docs are the AI's memory

The agent forgets everything between sessions. What survives is what is written: the PRD,
a short instructions file (`AGENTS.md` or `CLAUDE.md`), decisions and learnings. Curated
docs beat raw files by a wide margin:

| Finding (LAN Brain workflow-bench, Aug 2026, 165 runs) | Result |
|---|---|
| Curated brain vs raw files | -67% tokens, -52% time, at least the same quality |
| Cheaper model class (Opus) with curated docs vs top model class (Fable) alone | 82.9 vs 79.6 out of 100 |
| Fixing 3 stale pricing pages | +56 points across all 4 models tested |

Two lessons for an MVP team: (a) good docs are worth more than a more expensive model;
(b) one stale page poisons every answer that touches it, so update docs in the same PR
that changes the behavior.

### 3. Progressive disclosure

Anthropic removed over 80% of Claude Code's system prompt for newer models with no
measurable loss. The principles that carry over to your own repo:
- Let the model use judgment: short instructions, no walls of rules for old model weaknesses
- Design the interfaces (folder layout, file names, tool and script names) so the right
  thing is easy to find
- Progressive disclosure: the instructions file stays short and points to deeper docs and
  skills that load only when the task needs them
- Simple tool descriptions: one line on what it does and when to use it

Rule of thumb: if `AGENTS.md` passes about 150 lines, move sections into `docs/` and leave a
one-line pointer.

### 4. Shipping cadence: several PRs merged per day

Small PRs, merged the same day, deployed automatically. One user journey or one fix per PR,
each with its test. Benchmark: LAN Brain shipped 116 PRs in 30 days (16 in one day) with one
person coding with Claude Code. A week-long branch is a red flag at MVP stage: it hides
risk and delays learning.

### 5. Security day-1 checklist

Run before the first real user, not after the first incident:
- [ ] **Secrets scanning pre-commit** (gitleaks or trufflehog as a git hook). No key in the
  repo, ever; keys in environment variables
- [ ] **Least privilege**: database Row Level Security on every table, separate keys per
  environment, the agent and each tool get only the access the task needs
- [ ] **Dependency scan** (Trivy, Semgrep, `npm audit` or GitHub Dependabot, all free tiers)
- [ ] Payments and webhooks verified server-side
- [ ] One test that proves user A cannot read user B's data

For questionnaires, data protection laws and certifications, hand off to
security-compliance-starter.
