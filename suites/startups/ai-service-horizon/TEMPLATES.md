# AI Service Horizon: Output Template

ALWAYS use this exact structure. Every section is required. Do not change headings, table
columns, or field order. Fill every section with real analysis of the user's product lines;
every number is sourced or marked `[ASSUMPTION]`.

---

## Example: LibroListo (hypothetical)

Filled example. LibroListo is a hypothetical startup: AI bookkeeping software for small
businesses in Paraguay, sold at US$40 per month. All customers, prices and costs are
illustrative.

---

# Horizonte de servicio: LibroListo

**Fecha:** 5 nov 2026
**Etapa:** Revenue temprano, 420 pymes clientes, MRR US$16.800
**Mercado:** Pymes formalizadas de Paraguay (comercios y servicios, 2-20 empleados)
**Fuentes del brain:** `offering/planes`, `pricing/lista-2026`, `ops/soporte-horas`, `strategy/competition/watch/2026-W44`

---

## 1. Resumen

**Recomendación:** pasá la línea de cierre mensual de herramienta a **servicio**: "tu mes
cerrado y tu IVA presentado, firmado por contador matriculado", a US$190 por mes en el plan
Estándar. La clasificación de comprobantes deja de venderse sola: Claude o ChatGPT hacen el
80% por unos US$20 por mes. La carpeta para el banco queda como **herramienta + servicio**.
El servicio solo funciona si las horas humanas por cierre bajan de 6 a 2 en 12 meses; ese es
el número a vigilar.

---

## 2. Unidad terminada por línea

| Línea | Hoy vendés | Unidad terminada | ¿Se cuenta, se verifica, tiene presupuesto hoy? |
|---|---|---|---|
| A. Clasificación de comprobantes | Software, US$40/mes | Comprobantes clasificados | Sí / Sí / No (nadie paga aparte por esto) |
| B. Cierre mensual + IVA | Software que el contador externo usa | Mes cerrado, conciliado y liquidación de IVA presentada ante la DNIT | Sí / Sí / Sí (el cliente le paga a su contador externo) |
| C. Carpeta para el banco | Exportación de reportes | Carpeta de crédito lista para el oficial del banco | Sí / Parcial / Ocasional |

---

## 3. Test: Claude/ChatGPT solo

| Línea | Tarea probada (3 casos reales, anonimizados) | Parte del trabajo que hace solo | Por qué igual pagarían |
|---|---|---|---|
| A | Clasificar 60 comprobantes pegados en el chat | 80% | No pagarían por esto solo. Commodity. |
| B | Preparar y presentar la liquidación de IVA del mes | 25% | Explica las reglas, pero no concilia con el banco, no presenta ante la DNIT y nadie firma ni responde por una multa |
| C | Armar la carpeta de crédito para el banco | 50% | Redacta bien, pero no tiene los estados conciliados ni el historial de 12 meses |

---

## 4. Scorecard del horizonte

| Criterio (1-5) | A. Clasificación | B. Cierre + IVA | C. Carpeta banco |
|---|---|---|---|
| Riesgo de sustitución por el asistente (5 = no lo hace) | 2 | 5 | 3 |
| Preparación de los agentes | 5 | 4 | 3 |
| Medición del resultado | 4 | 5 | 3 |
| Presupuesto de servicio existente | 1 | 5 | 2 |
| Responsabilidad manejable | 5 | 3 | 4 |
| Escalamiento humano (horas por unidad bajan) | 5 | 4 | 3 |
| **Posición actual** | Herramienta | Herramienta | Herramienta |
| **Posición recomendada** | Incluida en B, no se vende sola | **Servicio** | Herramienta + servicio |

**Por qué:** A no es defendible sola (criterio 1 en 2) y no hay presupuesto para capturar.
B cumple la regla de servicio: criterios 2, 3, 4 y 6 en 4 o más, y responsabilidad en 3
(manejable con firma del contador, tope contractual y seguro). C no tiene presupuesto
recurrente: es un servicio puntual que alimenta el producto.

---

## 5. Quién hace qué: agentes y personas (línea B)

| # | Tarea | Responsable | Control |
|---|---|---|---|
| 1 | Recibir comprobantes por WhatsApp y email | AGENT | Conteo diario vs lo esperado |
| 2 | Extraer y clasificar | AGENT | Muestra del 10% después de 4 semanas al 100% |
| 3 | Conciliar con el extracto bancario | AGENT | Diferencias van a excepciones |
| 4 | Detectar faltantes y pedirlos al cliente | AGENT | Recordatorio a las 48 h |
| 5 | Preparar el borrador de la liquidación de IVA | AGENT + REVIEW | El contador revisa el 100% |
| 6 | Resolver excepciones (gastos no deducibles, facturas dudosas) | HUMAN (el agente arma el caso) | Registro de cada decisión |
| 7 | Revisión final y firma | HUMAN (contador matriculado) | Checklist de cierre |
| 8 | Presentación ante la DNIT | AGENT + REVIEW | Comprobante de presentación archivado |
| 9 | Reporte mensual al dueño por WhatsApp | AGENT | Plantilla aprobada |
| 10 | Llamada trimestral y malas noticias | HUMAN | Nota en el CRM el mismo día |

**Resultado:** 5 de 10 tareas AGENT, 2 AGENT + REVIEW, 3 HUMAN. Horas humanas por cierre:
6,0 en los meses 1-3, objetivo 2,0 en el mes 12 `[ASSUMPTION: medido en el piloto]`. Para
construir y evaluar los agentes: ai-engineering-playbook.

---

## 6. Modelo de margen por etapa (línea B, por cliente por mes)

| Rubro | Herramienta (hoy) | Herramienta + servicio | Servicio (meses 1-3) | Servicio (mes 12, objetivo) |
|---|---|---|---|---|
| Precio | US$40 | US$120 | US$190 | US$190 |
| Costo de inferencia | US$2,5 | US$4 | US$6 | US$5 |
| Horas humanas x costo cargado (US$12/h) `[ASSUMPTION]` | 0,3 h = US$3,6 | 2,5 h = US$30 | 6,0 h = US$72 | 2,0 h = US$24 |
| Otros costos directos (seguro, reserva por errores) | US$1 | US$2 | US$8 | US$8 |
| **Margen bruto** | **82%** | **70%** | **55%** | **81%** |

**Lectura:** el servicio arranca en 55%, por arriba de la línea frágil del 50% y apenas sobre
el ~52% que esperan los constructores de AI para 2026 (ICONIQ). Llega a nivel software solo si
las horas por cierre bajan a 2. Si a los 6 meses siguen en 5 o más, LibroListo es un estudio
contable con buen software, no una empresa de servicios AI-native.

**Tamaño de mercado** (30.000 pymes objetivo `[ASSUMPTION]`):
- Como herramienta: 30.000 x US$40 x 12 = US$14,4M por año.
- Como servicio: 30.000 x US$190 x 12 = US$68,4M por año, 4,75 veces más. Menos que el 1:6 de
  Sequoia porque los honorarios contables locales son bajos (directional); vender el mismo
  servicio a pymes de habla hispana en EE.UU. cambia esa cuenta.

---

## 7. Cobro

| Plan | Qué incluye | Precio |
|---|---|---|
| **Mínimo** | Cierre + IVA hasta 60 comprobantes; reporte mensual estándar | US$120/mes |
| **Estándar** | Cierre + IVA hasta 200 comprobantes; reporte por WhatsApp; excepciones resueltas en 48 h | US$190/mes + US$0,50 por comprobante adicional |
| **Premium** | Todo lo anterior + carpeta para el banco + otros impuestos + contador asignado con respuesta en 4 h | US$450/mes |

**Facturación mixta:** setup de US$150 (migración del historial y alta en la DNIT) + fijo
mensual + variable por comprobante. Garantía de resultado: si hay una multa por error de
LibroListo, la paga LibroListo, con tope de 3 meses de honorarios. Hoy el cliente paga unos
US$220 (US$40 de software + ~US$180 de contador externo `[ASSUMPTION: validar con 10
clientes]`); el Estándar a US$190 le ahorra y le saca una tarea. Niveles finales y test de
precio: pricing-strategy-designer.

---

## 8. Riesgos

| Riesgo | Qué puede pasar | Mitigación | Dueño |
|---|---|---|---|
| Calidad | Un comprobante mal clasificado cambia el IVA | Set de evaluación de 50 casos reales; revisión al 100% del borrador de IVA; meta: menos de 2% de errores de clasificación y cero errores de presentación | CTO |
| Responsabilidad | Multa de la DNIT por error | Firma de contador matriculado, tope contractual, seguro de responsabilidad profesional | CEO |
| Escalamiento humano | Las horas por cierre no bajan | Medición semanal de horas por cierre; cada excepción repetida se convierte en regla del agente | Operaciones |
| Conflicto de canal | Los contadores externos recomiendan hoy ~30% de las altas `[ASSUMPTION]` y el servicio los reemplaza | Programa de socios: estudios contables que firman y supervisan con agentes de LibroListo, con margen compartido | CEO |
| Datos personales | Datos de clientes y empleados pasan por agentes y personas | Mínimo privilegio por agente, consentimiento, acuerdo de tratamiento; controles listos antes de que la Ley 7593 sea exigible (~nov 2027) | CTO |

---

## 9. Movida de 90 días

| Campo | Definición |
|---|---|
| Quién | 10 clientes actuales con 80-200 comprobantes por mes, que hoy pagan contador externo |
| Qué | Plan Estándar a US$190 por mes, setup bonificado en el piloto |
| Qué medimos | Horas humanas por cierre (semanal), errores en la revisión por muestra, margen bruto por cliente, retención al día 90 |
| Criterio de corte | Si el 5 feb 2027 las horas por cierre siguen arriba de 4, o un error de presentación llega a la DNIT, se frena y la línea queda como herramienta + servicio |
| Registro | `strategy/horizon/2026-11-05-service-horizon` en el brain, con actualización semanal de horas |

---

## Fuentes

- YC Requests for Startups, Summer 2026, "AI-Native Service Companies": https://www.ycombinator.com/rfs
- Sequoia, "Services: The New Software" (Julien Bek, mar 2026): https://www.sequoiacap.com/article/services-the-new-software
- ICONIQ State of AI 2026, vía references/shared/ai-era-evaluation.md
- Paraguay Ley 7593 de protección de datos personales (ferrere.com)
- Brain: `offering/planes`, `pricing/lista-2026`, `ops/soporte-horas`, `strategy/competition/watch/2026-W44`

---

## Próximos Pasos

1. Medí esta semana las horas humanas reales de un cierre en 3 clientes: el modelo entero
   depende de ese número.
2. Armá el set de evaluación de 50 casos reales antes del 20 nov; sin set no se promete calidad.
3. Ofrecé el piloto a los 10 clientes antes del 30 nov, con el plan Estándar a US$190.
4. Hablá con 3 estudios contables que hoy te recomiendan antes de anunciar el servicio: ofreceles
   ser socios supervisores.
5. Pasale la estructura de cobro a pricing-strategy-designer para fijar Mínimo, Estándar y Premium.
