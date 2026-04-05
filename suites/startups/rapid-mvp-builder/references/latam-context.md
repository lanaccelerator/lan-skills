# LATAM Context — Rapid MVP Builder

**Sources:**
- Brazilian Central Bank PIX documentation: https://www.bcb.gov.br/en/financialstability/pix_en
- SAT Mexico CFDI requirements: https://www.sat.gob.mx/consultas/26572/comprobantes-fiscales-digitales
- LGPD (Brazilian data law): https://www.gov.br/cidadania/pt-br/acesso-a-informacao/lgpd
- Mercado Pago documentation: https://www.mercadopago.com.br/developers/en
- PagSeguro developer docs: https://dev.pagseguro.uol.com.br/

---

## Payment Integrations by Country

These integrations are MVP requirements for consumer and fintech products — not optional features.
Without local payment methods, conversion rates drop 60-80% vs equivalent US products.

### Brazil

| Method | Type | Market Share | Integration |
|--------|------|-------------|-------------|
| PIX | Instant bank transfer (QR code) | ~73% of digital payments | PagSeguro or Mercado Pago API |
| Boleto Bancário | Cash payment slip | ~15% of transactions | PagSeguro or Stripe |
| Credit/Debit Card | Card payment | ~12% | PagSeguro, Stripe, or Mercado Pago |

**PIX is mandatory for any Brazil consumer product.** It is free, instant (24/7/365),
and used by over 150 million Brazilians. Launched November 2020 by the Central Bank of Brazil.

**Best integration option for MVP:** PagSeguro or Mercado Pago — both provide PIX + boleto +
card in a single API with comprehensive Brazilian developer documentation in Portuguese.

**Do not** integrate directly via the Banco Central PIX API — it requires a financial institution
license. Always use an intermediary (PagSeguro, Mercado Pago, Stripe, Dock, etc.).

### Mexico

| Method | Type | Market Share | Integration |
|--------|------|-------------|-------------|
| OXXO | Cash payment at retail stores | ~25% of e-commerce transactions | Conekta or Clip |
| SPEI | Bank transfer (instant) | ~30% of digital B2B transactions | Any bank PSP via STP |
| Credit/Debit Card | Card payment | ~45% | Conekta, Clip, Stripe |

**OXXO is not optional for Mexican e-commerce.** One in four online purchases is paid
at an OXXO store (convenience chain, 20,000+ locations nationwide). Without OXXO, you
exclude a quarter of your potential market before launch.

**Best integration option for MVP:** Conekta — provides OXXO + SPEI + card in one API,
with strong Mexican market documentation and support. Clip is a strong alternative for
card-only merchants.

**SPEI for B2B:** Most Mexican companies pay suppliers via SPEI (bank transfer). B2B
SaaS invoicing in Mexico often requires SPEI as primary payment method.

### Colombia

| Method | Type | Market Share | Integration |
|--------|------|-------------|-------------|
| PSE | Bank transfer portal | ~40% of digital payments | PayU or Wompi |
| Nequi | Mobile wallet (Bancolombia) | ~25% of mobile payments | Nequi API |
| Credit/Debit Card | Card payment | ~35% | PayU, Wompi, or Stripe |

**PSE (Proveedor de Servicios Electrónicos):** Colombia's bank transfer system, operated
by ACH Colombia. Required for any serious B2C or B2B product in Colombia.

**Wompi** (by Bancolombia): Easiest Colombian payment integration for startups — handles
PSE + Nequi + cards with good developer documentation.

**Nequi:** 17+ million users in Colombia (2024). Mobile-first, popular with younger
demographics. High conversion for B2C consumer apps.

### Chile

| Method | Type | Market Share | Integration |
|--------|------|-------------|-------------|
| WebPay Plus | Bank payment gateway (Transbank) | ~60% of digital payments | Transbank API or Khipu |
| Khipu | Bank transfer | ~20% | Khipu API |
| Credit Card | Card payment | ~20% | Transbank or Stripe |

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

Effective: January 2022. Required for all commercial B2B transactions.

**Who needs this:** Any Mexican B2B product that generates invoices. CFDI is Mexico's
electronic invoicing standard — digital invoices (Facturas Electrónicas) are required
by the SAT for tax purposes.

**MVP minimum requirement:** If you are billing B2B customers in Mexico at any amount,
you need CFDI 4.0 compliant invoicing. Options:
- Integrate with an invoicing API (Facturama, Trazo, or similar)
- Issue invoices manually via SAT's free portal (works for <50 invoices/month)

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

| Country | VC Capital (2024) | Market Size | Payment Complexity |
|---------|------------------|-------------|-------------------|
| Brazil | 60% of LATAM deals | Largest (215M people) | Medium (PIX + PagSeguro) |
| Mexico | 18% of LATAM deals | Second largest (130M) | High (OXXO + SPEI + CFDI) |
| Colombia | 8% of LATAM deals | Third largest (52M) | Medium (PSE + Nequi) |
| Chile | 5% of LATAM deals | Smaller, high income | Medium (WebPay) |
| Argentina | 3% of LATAM deals | Currency risk high | High (FX + regulations) |

**Recommendation:** Brazil-first or Mexico-first depending on business model. Both together
increases complexity significantly at MVP stage — choose one beachhead.

Source: Cuantico VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
