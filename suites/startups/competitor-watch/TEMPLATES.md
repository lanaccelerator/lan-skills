# Competitor Watch: Output Template

ALWAYS use this exact structure. Every section is required. Do not change headings, table
columns, or field order. Fill every section with real findings from this week's run; a quiet
week keeps the structure and says "sin cambios materiales".

---

## Example: CobraYa (hypothetical), weekly summary

Filled example. CobraYa is a hypothetical startup: AI agents that chase overdue invoices for
SMEs in Mexico and Colombia over WhatsApp and email. All five competitors (DunningBot,
PayChase, LedgerNudge, CollectFlow, InvoicePilot) are hypothetical US companies, their URLs use
the reserved `.example` domain, and the baseline release note is a hypothetical example. In a
real run every change carries the real URL and the date it was seen.

---

# Competitor Watch: CobraYa, semana 2026-W45

**Período:** 26 oct al 1 nov 2026 · **Corrida:** lunes 2 nov 2026, 08:00 (programada)
**Competidores:** DunningBot, PayChase, LedgerNudge, CollectFlow, InvoicePilot + baseline Claude/ChatGPT solo
**Comparado contra:** `strategy/competition/watch/2026-W44`
**Modo:** Firecrawl self-hosted + búsqueda web; 1 página por pegado manual

---

## 1. Lo que importa esta semana

1. **LedgerNudge está entrando a México.** Dos señales en la misma semana: dos puestos en
   Ciudad de México y una función beta de importación de CFDI. Es el primer competidor de EE.UU.
   con factura electrónica mexicana.
2. **PayChase bajó su plan de entrada de US$59 a US$29 por mes** y agregó interfaz en español.
   Queda por debajo de tu plan Mínimo (US$49).
3. **DunningBot lanzó recordatorios por WhatsApp con la API oficial.** Era tu diferencial más
   visible en las demos.

---

## 2. Cambios por competidor

| Competidor | Tipo | Qué cambió (antes -> ahora) | Fuente y fecha | Materialidad |
|---|---|---|---|---|
| LedgerNudge | Producto | Sin soporte de CFDI -> "CFDI 4.0 invoice import (beta)" en el changelog | ledgernudge.example/changelog, 29 oct 2026 | Material |
| PayChase | Pricing | Plan Starter US$59/mes (200 facturas) -> US$29/mes (150 facturas); planes Pro y Business sin cambios | paychase.example/pricing, 30 oct 2026 | Material |
| PayChase | Producto | Interfaz solo en inglés -> español disponible (selector de idioma) | paychase.example, 30 oct 2026 | Material |
| DunningBot | Producto | Recordatorios por email y SMS -> email, SMS y WhatsApp (API oficial de WhatsApp Business) | dunningbot.example/changelog, 28 oct 2026 | Material |
| InvoicePilot | Posicionamiento | Post nuevo: "Why we now charge a % of what we recover" | invoicepilot.example/blog, 27 oct 2026 | Menor (no cambió la página de precios) |
| CollectFlow | Sin cambios | Precios, changelog y empleos iguales a la semana 44 | collectflow.example, 1 nov 2026 | Ninguna |

---

## 3. Señales de contratación

| Competidor | Rol | Ubicación | Qué sugiere |
|---|---|---|---|
| LedgerNudge | Account Executive, LATAM | Ciudad de México | Venta directa en México en los próximos 6 meses (VERIFIED, careers page) |
| LedgerNudge | Payments Partnerships Manager | Ciudad de México | Alianzas con bancos o procesadores locales (VERIFIED) |
| PayChase | Customer Success, Spanish speaking | Remoto (LATAM) | Soporte para los clientes que trae el plan de US$29 (INFERRED: coincide con la interfaz en español) |
| DunningBot | 3 ML Engineers | San Francisco | Más automatización con agentes; no es una señal LATAM |

---

## 4. Baseline: Claude/ChatGPT solo

| Novedad de la semana | Impacto en nuestro trabajo | ¿Re-test? |
|---|---|---|
| [Ejemplo hipotético] Un asistente general agregó tareas programadas que pueden mandar un resumen diario por email | Un dueño de pyme podría pedirle "recordame qué facturas vencen hoy". No manda recordatorios a sus clientes ni concilia pagos. | Sí, en el test mensual del 2 nov |

**Test mensual (3 tareas reales de clientes, anonimizadas):**

| Tarea | Octubre | Noviembre | Por qué igual nos pagan |
|---|---|---|---|
| Redactar el recordatorio de cobro | 100% | 100% | No nos pagan por esto. Es commodity: no lo vendas como valor. |
| Priorizar a quién cobrar desde un reporte de antigüedad pegado | 80% | 80% | CobraYa lo hace solo, todos los días, con datos del ERP sin que nadie pegue nada |
| Mandar los recordatorios por WhatsApp y conciliar los pagos con el banco | 0% | 0% | Integración bancaria y de WhatsApp, y alguien responde si un recordatorio sale mal |

Sin cruces de la línea del 80% en tareas pagas este mes.

---

## 5. So what y acción para nosotros

| Cambio | So what | Acción | Dueño | Fecha | Skill |
|---|---|---|---|---|---|
| LedgerNudge entra a México con CFDI | Tu argumento "el único con CFDI" tiene unos 6 meses de vida | Pasá el pitch de "tenemos CFDI" a "cobramos por WhatsApp y conciliamos con tu banco local"; refrescá el mapa competitivo | CEO | 13 nov | competitive-landscape-mapper |
| PayChase a US$29 en español | Los prospectos chicos van a comparar contra US$29. PayChase sigue sin WhatsApp ni conciliación. | Revisá si el Mínimo de US$49 se sostiene o si conviene un Mínimo de entrada por cantidad de facturas | CEO | 16 nov | pricing-strategy-designer |
| DunningBot con WhatsApp | El diferencial de la demo se achica; lo que queda es la conciliación y el idioma | Actualizá el battlecard: mostrá conciliación en los primeros 3 minutos de la demo | Ventas | 9 nov | sales-playbook-generator |
| InvoicePilot cobra % de lo recuperado | Valida tu facturación mixta (fijo + % recuperado) en el plan Estándar | Ninguna, seguir mirando; si cambian su página de precios, pasa a material | - | - | - |

---

## 6. Sin cambios o ruido descartado

CollectFlow sin cambios. Ruido descartado: rediseño del header de DunningBot, orden nuevo de
testimonios en PayChase, fecha de "última actualización" en los términos de LedgerNudge.

---

## 7. Estado de la corrida

| Ítem | Valor |
|---|---|
| Páginas vigiladas | 22 (5 competidores x 4 + 2 notas de versión del baseline) |
| Leídas OK | 20 |
| No leídas | 1: página de LinkedIn de LedgerNudge `[NO LEÍDO: requiere login]`; se usaron resultados de búsqueda web |
| Pegado manual | 1: precios de CollectFlow (detrás de un formulario de contacto, sin precios públicos) |
| Modelo | Clase Haiku (extracción y diff) |
| Tokens | ~38K entrada / ~6K salida (semana 44: ~35K / ~5K), dentro del tope |
| Página creada | `strategy/competition/watch/2026-W45` (incluye snapshot) |

---

## Fuentes

- ledgernudge.example/changelog y /careers (29 oct 2026)
- paychase.example/pricing (30 oct 2026)
- dunningbot.example/changelog (28 oct 2026)
- invoicepilot.example/blog (27 oct 2026)
- collectflow.example (1 nov 2026), precios por pegado manual
- Notas de versión de Claude y ChatGPT (1 nov 2026)
- Brain: `strategy/competition/watch/2026-W44`, `strategy/competition/2026-09-15-landscape`, `pricing/planes`

---

## Próximos Pasos

1. Reescribí la frase de posicionamiento antes del 13 nov: el CFDI deja de ser exclusivo,
   la conciliación bancaria y WhatsApp no.
2. Corré pricing-strategy-designer con el dato de PayChase a US$29 antes del 16 nov y decidí si
   el Mínimo cambia.
3. Actualizá el battlecard de demo esta semana: conciliación en los primeros 3 minutos.
4. Agregá a LedgerNudge al seguimiento de LinkedIn por búsqueda web, ya que la página bloquea
   la lectura automática.
