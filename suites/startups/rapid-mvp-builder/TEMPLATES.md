# Rapid MVP Builder — Output Template

ALWAYS use this exact structure. Every section is required. Do not change headings,
table columns, or field order. Fill every [bracketed placeholder] with real content
from the user's startup.

---

## Example Output: WasteConnect

*This is a filled example for WasteConnect — a hypothetical B2B marketplace connecting
restaurants with recycling and organic waste collectors in São Paulo, Brazil. Pre-product
stage, non-technical founding team with a CTO co-founder, 6-week timeline.*

---

# MVP Plan: WasteConnect

**Date:** April 2026
**Stage:** Pre-product
**Business Model:** B2B Marketplace
**Geography:** Brazil (São Paulo)
**Team Tech Capacity:** Non-technical founder + CTO co-founder
**Timeline:** 6 weeks to MVP

---

## Hypothesis

This MVP will prove that São Paulo restaurant owners (first 100 users: independent
restaurants 10-50 employees) will pay R$200/month to reduce kitchen waste disposal
costs by 40% if we provide a platform connecting them with certified organic waste
collectors who confirm pickups within 2 hours of posting.

---

## MoSCoW Feature Prioritization

| Feature | Category | Rationale | Dependency | Est. Build Time |
|---------|----------|-----------|------------|----------------|
| Restaurant signup + profile | Must-have | No marketplace without supply side | None | 3 days |
| Collector signup + profile | Must-have | No marketplace without demand side | None | 3 days |
| Pickup request posting | Must-have | Core transaction unit — hypothesis cannot be tested without it | Restaurant profile | 4 days |
| Pickup acceptance flow | Must-have | Closes the transaction loop — collector confirms, restaurant notified | Pickup request | 3 days |
| PIX payment integration | Must-have | LATAM requirement — cash payment and bank transfer by QR code; without PIX, conversion drops 60-80% in Brazil | Pickup acceptance | 5 days |
| LGPD data consent notice | Must-have | LATAM requirement — Brazil data privacy law requires notice at registration, even at MVP stage | Signup | 1 day |
| Pickup status tracking | Should-have | Reduces support tickets and WhatsApp coordination; important but the hypothesis can still be tested without it | Pickup acceptance | 4 days |
| In-app messaging | Should-have | Reduces dependency on WhatsApp; improves retention but not required for v1 transaction | Pickup request | 4 days |
| Rating + review system | Could-have | Trust signal; valuable but not needed at first 10 customers | Both profiles | 3 days |
| Analytics dashboard | Won't-have | Pre-product analytics = vanity metrics; no learning value until 50+ active users | N/A | Out of scope v1 |
| Mobile app (iOS/Android) | Won't-have | Web app works on mobile browsers; native app adds 4-6 weeks of build time for zero additional hypothesis validation | N/A | Out of scope v1 |

**Total Must-have build time: ~19 days (within 6-week window with buffer)**

---

## Tech Stack Recommendation

| Layer | Technology | Rationale |
|-------|-----------|-----------|
| Frontend | Next.js 14 (React) | Component-based, works as web app on mobile browser, large LATAM dev talent pool, CTO familiar |
| Backend | Next.js API Routes (Node.js) | Same codebase as frontend — reduces context switching at MVP; sufficient for early load |
| Database | Supabase (PostgreSQL) | Managed Postgres with built-in auth, storage, and Row Level Security; reduces backend complexity |
| Payments | PagSeguro (PIX via API) | PIX integration required for Brazil; PagSeguro provides PIX + boleto + credit card in one API |
| Auth | Supabase Auth | Built-in Google OAuth + email/password; no custom auth at MVP stage |
| File Storage | Supabase Storage | Profile photos, waste category images; no custom storage setup needed |
| Hosting | Vercel (Next.js) | Zero-config deployment, free tier sufficient for MVP, Brazilian edge nodes available |

**Why not React Native / Flutter?** A web app works on mobile browsers and is deployable
in days, not weeks. Mobile app build time would consume the entire 6-week timeline before
validating a single hypothesis. Build mobile after you have paying users.

---

## 4-Week Build Plan

*(Adapted to 6 weeks: Weeks 5-6 added for integration testing and soft launch)*

| Week | Sprint Goal | Features to Ship | Validation Method |
|------|------------|-----------------|-------------------|
| 1 | Core data model + auth | Restaurant + collector signup flows, profile schema, Supabase auth configured | 3 test users successfully register and view their dashboard |
| 2 | Primary user flow | Pickup request posting, collector browse + accept flow, status updates | Complete a test transaction end-to-end between founder acting as restaurant + real collector contact |
| 3 | Payment + compliance | PIX payment via PagSeguro, LGPD consent notice at signup, email notifications | Full transaction with real PIX payment — R$1 test charge |
| 4 | Should-haves + polish | Pickup status tracking, WhatsApp fallback notification, mobile responsive UI | 5 real São Paulo restaurants complete registration and post at least 1 pickup request |
| 5 | Integration testing | Full end-to-end flow with real users, edge case handling, error states | 2 successful paid transactions between unrelated restaurant + collector |
| 6 | Launch prep + soft launch | Landing page, onboarding emails, 10 restaurant outreach calls | 10 restaurants invited; at least 3 confirm first pickup within launch week |

---

## Launch Checklist

Minimum criteria before calling WasteConnect "live":

- [ ] Restaurant can register, create profile, and post a pickup request in under 5 minutes
- [ ] Collector can register, browse requests in their neighborhood, and accept a request
- [ ] PIX payment processes successfully (R$1 test + real transaction)
- [ ] LGPD data collection notice visible at signup (legal requirement)
- [ ] Email notification sent to restaurant when collector accepts
- [ ] Basic error handling (form validation, payment failure messaging)
- [ ] Web app works on mobile browser (not just desktop)
- [ ] Privacy policy and terms of service pages exist (even if simple)
- [ ] Founder has personally talked to 5 target restaurants and confirmed they would use this

---

## LATAM Context

**Brazil — required, not optional:**

- **PIX (Brazil Central Bank):** Mandatory for any consumer or B2B product in Brazil.
  Free, instant (24/7), and used by 73% of Brazilian adults. Without PIX as a payment
  option, conversion rates are 60-80% lower than equivalent product with PIX. Integrate
  via PagSeguro or Mercado Pago, not directly via Banco Central API (too complex for MVP).
  Source: Brazilian Central Bank, Pix adoption statistics.

- **LGPD (Lei Geral de Proteção de Dados):** Brazilian data privacy law equivalent to GDPR.
  Requires a data collection notice at user registration stating what data is collected and
  how it is used. A single checkbox + privacy policy link is sufficient at MVP stage. This
  is a launch requirement, not a post-launch concern. Non-compliance exposes the company
  to ANPD fines even at early stage.

- **Tech hiring:** Node.js, React, PostgreSQL are the dominant LATAM stack. Supabase
  reduces DevOps at MVP. Avoid niche backend frameworks (Elixir, Rust) that limit
  future hiring in São Paulo.

---

## Next Steps

1. **Before writing a single line of code:** Talk to 5 São Paulo restaurant owners this week.
   Ask: "How do you currently dispose of organic waste? What do you pay? How much time does
   it take? What would you pay for a service that handles it in under 2 hours?" Get at least
   3 to say "yes, I'd pay R$200/month for that" before starting the build.

2. Set up Supabase project + Next.js repository this week — 2-hour setup, not a milestone.
   The CTO does this while the founder does customer discovery.

3. Register for PagSeguro developer account immediately — API approval takes 2-3 business
   days in Brazil and can block Week 3 if not initiated early.

4. Draft a 1-paragraph LGPD data notice with a lawyer (flat fee, R$500-1,500 in Brazil).
   Do not launch without it.

5. Target 10 specific restaurants for launch week outreach — identify them by name before
   Week 5. Warm intros through restaurant associations (ABRASEL São Paulo) or food delivery
   platform contacts are more effective than cold outreach.

---

## Sources

- Lean Startup: http://theleanstartup.com/
- MoSCoW Prioritization: https://www.productplan.com/glossary/moscow-prioritization/
- PIX documentation: https://www.bcb.gov.br/en/financialstability/pix_en
- LGPD (Brazilian data law): https://www.gov.br/cidadania/pt-br/acesso-a-informacao/lgpd
- YC Launch Now: https://www.ycombinator.com/library/4D-yc-s-essential-guide-to-go-to-market
