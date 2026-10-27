# LATAM Context — Rapid MVP Builder

**Sources:**
- Brazilian Central Bank PIX documentation: https://www.bcb.gov.br/en/financialstability/pix_en
- SAT Mexico CFDI requirements: https://www.sat.gob.mx/consultas/26572/comprobantes-fiscales-digitales
- LGPD (Brazilian data law): https://www.gov.br/cidadania/pt-br/acesso-a-informacao/lgpd
- Mercado Pago documentation: https://www.mercadopago.com.br/developers/en
- PagSeguro developer docs: https://dev.pagseguro.uol.com.br/

---

## Payment Integrations by Country

These integrations are MVP requirements for consumer and fintech products, not optional features.
Without local payment methods, checkout conversion drops sharply (directional; measure it).

**Shares below:** only the Pix figure is sourced. Every other share is **directional**: confirm
the mix with your payment provider before deciding what to build first.

### Brazil

| Method | Type | Market Share | Integration |
|--------|------|-------------|-------------|
| PIX | Instant bank transfer (QR code) | ~40% of online purchases (EBANX Beyond Borders 2025) | PagSeguro or Mercado Pago API |
| Boleto Bancário | Cash payment slip | declining (directional) | PagSeguro or Stripe |
| Credit/Debit Card | Card payment, often in installments | still the other large share (directional) | PagSeguro, Stripe, or Mercado Pago |

**PIX is mandatory for any Brazil consumer product.** It is free, instant (24/7/365),
and used by over 150 million Brazilians. Launched November 2020 by the Central Bank of Brazil.

**Best integration option for MVP:** PagSeguro or Mercado Pago — both provide PIX + boleto +
card in a single API with comprehensive Brazilian developer documentation in Portuguese.

**Do not** integrate directly via the Banco Central PIX API — it requires a financial institution
license. Always use an intermediary (PagSeguro, Mercado Pago, Stripe, Dock, etc.).

### Mexico

| Method | Type | Market Share | Integration |
|--------|------|-------------|-------------|
| OXXO | Cash payment at retail stores | material share of consumer e-commerce (directional) | Conekta or Clip |
| SPEI | Bank transfer (instant) | default rail for B2B payments (directional) | Any bank PSP via STP |
| Credit/Debit Card | Card payment | largest share online (directional) | Conekta, Clip, Stripe |

**OXXO matters for Mexican consumer e-commerce.** Many unbanked or card-averse buyers pay
cash at OXXO convenience stores. Without it, a B2C product excludes them at launch.

**Best integration option for MVP:** Conekta — provides OXXO + SPEI + card in one API,
with strong Mexican market documentation and support. Clip is a strong alternative for
card-only merchants.

**SPEI for B2B:** Most Mexican companies pay suppliers via SPEI (bank transfer). B2B
SaaS invoicing in Mexico often requires SPEI as primary payment method.

### Colombia

| Method | Type | Market Share | Integration |
|--------|------|-------------|-------------|
| PSE | Bank transfer portal | major share (directional) | PayU or Wompi |
| Nequi | Mobile wallet (Bancolombia) | popular with younger users (directional) | Nequi API |
| Credit/Debit Card | Card payment | directional | PayU, Wompi, or Stripe |

**PSE (Proveedor de Servicios Electrónicos):** Colombia's bank transfer system, operated
by ACH Colombia. Required for any serious B2C or B2B product in Colombia.

**Wompi** (by Bancolombia): Easiest Colombian payment integration for startups — handles
PSE + Nequi + cards with good developer documentation.

**Nequi:** mobile-first wallet, popular with younger demographics (verify current user
count). **Bre-B**, Colombia's instant payment system modeled on Pix, launched in 2025: check
whether your provider supports it.

### Chile

| Method | Type | Market Share | Integration |
|--------|------|-------------|-------------|
| WebPay Plus | Bank payment gateway (Transbank) | dominant (directional) | Transbank API or Khipu |
| Khipu | Bank transfer | directional | Khipu API |
| Credit Card | Card payment | directional | Transbank or Stripe |

**WebPay is dominant in Chile.** Operated by Transbank, a consortium of Chilean banks.
Integration is straightforward but requires Chilean business registration.

### Pan-LATAM (Multi-Country)

**Mercado Pago** covers Brazil, Mexico, Colombia, Chile, Argentina, Peru, Uruguay.
One integration, multiple countries. Best option for any pan-LATAM MVP.

**Stripe** covers Mexico, Brazil, Colombia (card-only in Colombia). Familiar API but
limited local payment method coverage.

**Kushki** covers Colombia, Mexico, Ecuador, Peru, Chile. Latin American native PSP.

---

## Compliance Requirements at MVP Stage

These are launch requirements, not post-launch items. Non-compliance at any stage
can result in regulatory action.

### Brazil — LGPD (Lei Geral de Proteção de Dados)

Effective: September 2020. Enforced by ANPD (Autoridade Nacional de Proteção de Dados).

**MVP minimum requirements:**
1. Data collection notice at user registration: "We collect [types of data] to provide
   [service]. Your data is stored in [location] and is not sold to third parties."
2. Privacy policy page (can be simple — 1-2 pages)
3. Mechanism for users to request data deletion (email request is acceptable at MVP)

**Penalties:** Up to 2% of Brazilian revenue per violation, maximum R$50M per incident.
ANPD has issued fines to companies of all sizes. This is not theoretical risk.

**Cost to comply at MVP:** R$500-1,500 for a lawyer to review a basic data notice. Do it.

### Mexico — SAT CFDI 4.0

Introduced January 2022, mandatory since April 2023. Required for commercial invoicing.

**Who needs this:** Any Mexican B2B product that generates invoices. CFDI is Mexico's
electronic invoicing standard — digital invoices (Facturas Electrónicas) are required
by the SAT for tax purposes.

**MVP minimum requirement:** If you are billing B2B customers in Mexico at any amount,
you need CFDI 4.0 compliant invoicing. Options:
- Integrate with an invoicing API (Facturama, Trazo, or similar)
- Issue invoices manually via SAT's free portal (workable only at very low volume)

**B2C products:** Not required at MVP if transactions are consumer-to-business.

### Colombia — No additional data law at MVP stage

Colombia's data protection law (Ley 1581 de 2012) requires a privacy policy and data
use notice. Less strict than LGPD at MVP stage. A simple privacy policy page is sufficient.

---

## Tech Hiring Stack — LATAM

When recommending tech stack, account for LATAM developer availability.

**High availability in LATAM:**
- Node.js / JavaScript → Large talent pool in all LATAM markets
- React / Next.js → Strong community, many bootcamp graduates
- PostgreSQL → Standard relational database, widely known
- Python → Strong in Argentina, Brazil; data science + backend
- PHP / Laravel → Legacy but common in Mexico and Colombia for SMB tooling

**Lower availability (avoid for MVP unless CTO is expert):**
- Elixir / Phoenix → Niche, expensive to hire for
- Rust → Limited LATAM talent pool
- Kotlin (backend) → Limited vs Java or Node.js
- Ruby on Rails → Declining availability, especially outside Brazil

**Recommended for LATAM MVP:**
- Full stack: Next.js + Supabase (PostgreSQL) + Vercel
- This stack has the widest LATAM dev talent pool and lowest DevOps burden at MVP stage

---

## Country Priority for Staged Expansion

For pan-LATAM startups choosing where to launch first:

| Country | Share of 2025 LATAM VC dollars | Population | Payment Complexity |
|---------|-------------------------------|------------|-------------------|
| Brazil | ~49% | ~203M (IBGE Census 2022) | Medium (PIX + cards) |
| Mexico | ~24% | ~126M (INEGI Census 2020) | High (OXXO + SPEI + CFDI) |
| Chile | ~6% | ~20M | Medium (WebPay) |
| Colombia | ~5% | ~52M | Medium (PSE + Nequi + Bre-B) |
| Argentina | ~4% | ~46M | High (FX + regulations) |

VC shares: Cuantico, LatAm VC Report 2026 (USD 4.13B in 2025). Canonical LATAM data:
shared/latam-benchmarks.md.

**Recommendation:** Brazil-first or Mexico-first depending on business model. Both together
increases complexity significantly at MVP stage — choose one beachhead.

Sources: Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/ ; EBANX Beyond Borders 2025 (Pix share): https://insights.ebanx.com/en/
