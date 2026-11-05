# Deliverability and Compliance Basics

**Purpose:** keep outbound in the inbox and inside the law. Read before the first batch and
whenever reply rates drop suddenly. This is practical guidance, not legal advice: check with
local counsel before running outbound at volume in a new country.

**Sources:**
- Google, Email sender guidelines: https://support.google.com/a/answer/81126
- WhatsApp Business Messaging Policy: https://business.whatsapp.com/policy
- Brazil LGPD, Lei 13.709/2018: https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm
- Paraguay Ley 7593 de protección de datos personales (promulgated 27 Nov 2025), summary by Ferrere: https://www.ferrere.com/
- Chile Ley 21.719 (reform of Ley 19.628), in force 1 Dec 2026: https://www.bcn.cl/leychile/navegar?i=1209272

---

## 1. Deliverability

| Rule | Why | How (free path) |
|---|---|---|
| **Separate sending domain** | A spam complaint on outbound must not hurt the main domain that sends invoices and proposals | Register a secondary domain or subdomain for outbound; keep the main domain for customers |
| **Authenticate** | Gmail and others reject or junk unauthenticated mail | SPF and DKIM on the sending domain, plus a DMARC record; your email provider's admin panel shows the DNS records to add |
| **Warm up the domain** | A new domain sending 200 emails on day one looks like spam | Start with a few manual emails per day to real contacts who reply, then ramp gradually over 2-4 weeks (directional). Never jump volume overnight |
| **Low volume per inbox** | Volume spikes trigger filters | Keep each inbox to a few dozen new outbound emails per day (directional); add inboxes, not volume per inbox |
| **Plain text, few links** | Images, tracking pixels and many links look promotional | One link at most, no attachments on the first touch |
| **Clean the list** | Bounces hurt sender reputation | Verify addresses before sending; remove every bounce the same day |
| **Watch the spam rate** | Gmail asks senders to keep reported spam well below 0.3% | Unsubscribe rate above 2% in a batch means stop and fix targeting or copy |

## 2. Opt-out and identification

- Every cold email carries a clear opt-out line in the prospect's language, for example:
  "Si no es tema para vos, respondé 'no' y no te vuelvo a escribir."
- Identify the sender: real name, company and a way to reach you. No fake "Re:" subjects,
  no invented prior conversations.
- An opt-out is honored in every channel and for every campaign, permanently, through a
  suppression list the whole team uses.

## 3. Channels

- **Email:** the default channel for cold first touches to business addresses.
- **LinkedIn:** connection notes and messages, written and sent by a person. Do not use
  tools that automate LinkedIn actions against its terms.
- **WhatsApp:** only where the person opted in (gave the number for this purpose, wrote
  first, or a referral handed it over with permission). WhatsApp's Business Messaging Policy
  requires opt-in for business-initiated messages, and numbers reported as spam get banned.
  Never mass-send.

## 4. Data protection (brief caution)

| Rule | Detail |
|---|---|
| **No purchased lists without consent** | A bought list carries no consent trail and often stale or personal data. Build lists from public business sources (company sites, gremio directories, LinkedIn by hand) and record the source of every contact |
| **Business data, minimum data** | Store name, role, business email and company. Do not collect personal phone numbers, ID numbers or anything sensitive for outbound |
| **Legitimate interest, documented** | Write down why this role at this company plausibly benefits (the ICP fit), and keep it with the list |
| **Honor rights requests** | Anyone can ask what data you hold and ask you to delete it. Answer and delete, and keep the do-not-contact flag |
| **Brazil, LGPD** | In force; fines up to 2% of Brazil revenue per infraction (capped). Applies when prospecting people in Brazil |
| **Paraguay, Ley 7593** | General personal data protection law promulgated 27 Nov 2025, with a 2-year adjustment period: enforceable around Nov 2027. Build the habits now |
| **Chile, Ley 21.719** | Reform of the personal data law, in force 1 Dec 2026, with a new data protection agency |

## 5. Tools

Any email connector (Gmail, Outlook) creating DRAFTS, or plain copy-paste, is enough.
Prospecting and sequencing tools (Apollo, Clay, Lemlist and similar) are optional
accelerators, never required. If one is used, its sending limits and opt-out handling must
follow the rules above, and the founder still reviews the first 20 drafts.
