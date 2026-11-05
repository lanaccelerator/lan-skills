# unit-economics-calculator: Output Template

ALWAYS use this exact template structure. Do not change section headings, table columns,
or field order. Fill every [bracketed placeholder] with real analysis from the user's
startup.

**Hypothetical example:** Cobranzia (hipotético), agente de AI de cobranza para
distribuidoras medianas, Seed, Asunción. Nueve meses después de pasar de cobro por usuario
a tres planes con cobro mixto (setup + base + uso + 10-12% de lo recuperado). Todas las
empresas, personas y cifras son ficticias.

---

# Unit Economics: Cobranzia

**Fecha:** 05/11/2026
**Etapa:** Seed
**Modelo:** AI-native B2B, cobro mixto
**Fuentes:** brain `finance/facturacion-2026-q3`, `ops/costos-por-factura`, `sales/pricing/lista-precios-2026`; export del sistema contable (ago-oct 2026)

**Veredicto:** los números cierran en el caso conservador (LTV/CAC 5,1:1, payback 8,2 meses
sin setup y 4,9 con setup), pero el margen de base + uso es 50%: hoy el componente de
resultado subsidia la entrega. Si el recupero cae, el margen cae con él. Arreglá eso antes
de levantar.

---

## 1. Inputs

| Input | Valor | Fuente |
|---|---|---|
| Clientes recurrentes activos | 12 (10 Estándar, 2 Premium) | Brain, `customers/` |
| Pilotos Mínimo en curso | 2 (no cuentan como clientes) | Brain |
| Base mensual | USD 9.600 (10 x 600 + 2 x 1.800) | Facturación |
| Uso, promedio 3 meses | USD 900 (3 clientes Estándar pesados x 300) | Facturación |
| Resultado, promedio 3 meses (caso base) | USD 8.000 (10 x 500 + 2 x 1.500) | Facturación |
| Resultado, caso conservador | USD 4.800 (10 x 300 + 2 x 900): la cartera vieja se agota y la línea base nueva es 40% menor | `[ASSUMPTION: caída de 40% tras el mes 6 de cada cliente]` |
| COGS de entrega mensual | USD 5.220 (mensajes, inferencia, hosting, revisión humana, gestor dedicado Premium) | `ops/costos-por-factura` |
| Costo del componente de resultado | 15% de lo facturado (conciliación, cartas legales) | Contabilidad |
| Disputas del resultado | 5% de lo facturado no se cobra | Contabilidad, 3 meses |
| Churn mensual | 3% | 1 baja en los últimos 3 meses sobre 11-12 clientes |
| Expansión mensual | 1% del MRR (upgrades a Premium y excedentes de uso) | Facturación |
| S&M del trimestre | USD 15.000 (founder 50%, 1 vendedor, eventos de gremios, herramientas) | Contabilidad |
| Clientes recurrentes nuevos del trimestre | 3 (2 conversiones de Mínimo, 1 directo) | CRM |
| Setup cobrado por cliente nuevo | USD 2.500 (incluye USD 900 del piloto acreditado) | Facturación |
| Costo de onboarding por cliente | USD 1.200 (30 h x USD 40) | Registro de horas |
| Costos fijos mensuales | USD 22.000 | Contabilidad |

---

## 2. Ingresos por componente

| Componente | Mensual | Recurrente | Margen bruto | Cómo se reporta |
|---|---|---|---|---|
| Setup | USD 2.500 promedio (USD 7.500 en el trimestre) | No | 52% (USD 1.300 por cliente) | Ingreso único, línea aparte |
| Base | USD 9.600 | Sí, comprometido | 50,3% junto con uso | MRR comprometido |
| Uso | USD 900 | Sí, variable | (incluido arriba) | MRR run-rate, promedio 3 meses |
| Resultado | USD 4.800 conservador / USD 8.000 base | Variable, en diferido | 80% | MRR run-rate, caso conservador |
| Pilotos | USD 700 (2 x 350) | No | 66,9% | Ingreso de piloto |

**Margen de base + uso:** (USD 10.500 - USD 5.220) / USD 10.500 = **50,3%**.

**Margen bruto mezclado:**
- Conservador: USD 15.300 facturado - 240 disputas - 5.220 COGS - 720 costo de resultado = USD 9.120 / USD 15.300 = **59,6%**
- Base: USD 18.500 - 400 - 5.220 - 1.200 = USD 11.680 / USD 18.500 = **63,1%**

**MRR y ARR:**
- MRR comprometido: USD 9.600. ARR comprometido: **USD 115.200**
- MRR run-rate conservador: 9.600 + 900 + 4.800 = USD 15.300. ARR run-rate: **USD 183.600**
- **Lo que no se hace:** sumar el setup y anualizar el mejor mes de resultado (USD 10.500):
  (9.600 + 900 + 10.500 + 2.500) x 12 = USD 282.000. Ese número no sobrevive un due diligence.

---

## 3. Dashboard

| Métrica | Tu número | Benchmark | Fuente | Estado |
|---|---|---|---|---|
| CAC | USD 5.000 (15.000 / 3) | n/a | Calculado | n/a |
| Ganancia bruta recurrente por cliente por mes | USD 760 conservador / USD 973 base | n/a | Calculado (9.120 / 12; 11.680 / 12) | n/a |
| LTV recurrente (conservador) | USD 25.333 (760 / 3%) | n/a | David Skok, SaaS Metrics 2.0 | n/a |
| LTV/CAC (conservador) | 5,1:1 | 3:1 o más | David Skok, SaaS Metrics 2.0 | ARRIBA |
| LTV/CAC incluyendo setup | 5,3:1 ((25.333 + 1.300) / 5.000) | n/a | Calculado | Segunda línea |
| Payback sin setup | 8,2 meses | Menos de 12 meses sobre margen bruto en Seed | (LATAM, directional) | OK |
| Payback con setup | 4,9 meses | n/a | Calculado | FUERTE |
| Margen bruto mezclado (conservador) | 59,6% | 60% piso; AI ~52% promedio proyectado 2026 | ICONIQ State of AI, ene 2026 (US-sourced benchmark) | WATCH |
| Margen bruto base + uso | 50,3% | 60% o más | Piso de pricing-strategy-designer | [BELOW BENCHMARK] |
| Churn mensual | 3% | 2% o menos antes de Serie A | (LATAM, directional) | WATCH |
| Break-even | USD 36.900 de ingreso run-rate conservador (22.000 / 59,6%) | n/a | Calculado | 2,4x el actual |

---

## 4. Setup fee: payback con y sin setup

| Cálculo | Conservador | Base |
|---|---|---|
| Payback Skok (CAC / ganancia bruta mensual) | 5.000 / 760 = 6,6 meses | 5.000 / 973 = 5,1 meses |
| Payback sin setup ((CAC + onboarding) / ganancia bruta mensual) | 6.200 / 760 = **8,2 meses** | 6.200 / 973 = 6,4 meses |
| Payback con setup ((CAC + onboarding - setup cobrado) / ganancia bruta mensual) | 3.700 / 760 = **4,9 meses** | 3.700 / 973 = 3,8 meses |

**Lectura:** el setup de USD 2.500 cubre el onboarding (USD 1.200) y el 26% del CAC
(USD 1.300 de 5.000). Es plata única: baja el payback, no sube el MRR. Usá el setup
cobrado, no el facturado: un cliente corporativo que paga a 60 días mueve el payback real
dos meses.

---

## 5. Componente de resultado: conservador vs base

| Línea | Conservador | Base |
|---|---|---|
| Resultado facturado | USD 4.800 | USD 8.000 |
| Disputas (5%) | - USD 240 | - USD 400 |
| Costo de medición, conciliación y cartas legales (15%) | - USD 720 | - USD 1.200 |
| **Ganancia bruta del resultado** | **USD 3.840 (80%)** | **USD 6.400 (80%)** |

- **Topes y pisos:** ningún cliente llega al tope (Estándar USD 1.500, Premium USD 4.000).
  Los contratos no tienen piso: si el recupero cae a cero, ese ingreso desaparece.
- **Reconocimiento:** el resultado se factura cuando el cliente aprueba el reporte mensual
  (día 10 del mes siguiente) y se cobra a 30-45 días. Llega a caja 1,5-2,5 meses después
  del recupero. Capital de trabajo atado: USD 8.000 x 2 = **USD 16.000** en el caso base.
- **Línea base que se agota:** la cartera vencida inicial se trabaja en 6 meses; la línea
  base trimestral siguiente es menor. Por eso LTV y payback usan el caso conservador.

---

## 6. Expansión: la cuenta compuesta

Ingreso anual = clientes x ticket promedio mensual x meses facturados por cliente por año
(frecuencia, neta de pausas y bajas).

| Palanca | Hoy | Con +20% | Cómo se logra |
|---|---|---|---|
| Clientes | 12 | 14,4 | Referidos pedidos en el momento del "gracias" y conversión de Mínimo |
| Ticket promedio mensual (conservador) | USD 1.275 | USD 1.530 | Mínimo a Estándar a Premium; base de USD 700 en clientes nuevos |
| Meses facturados por cliente por año | 10 | 12 | Menos bajas y pausas: reuniones de resultados trimestrales |
| **Ingreso anual** | **12 x 1.275 x 10 = USD 153.000** | **14,4 x 1.530 x 12 = USD 264.384** | |

**Multiplicador:** 264.384 / 153.000 = 1,728 = **+73%**. Andrés Nájera lo presenta como
+66%; la cuenta compuesta correcta es 1,2 x 1,2 x 1,2 = 1,728. Sumar las tres (+60%) también
subestima.

**LTV con expansión (sensibilidad):** 760 / (3% - 1%) = USD 38.000, LTV/CAC 7,6:1. No es el
número principal: la expansión de 1% mensual tiene solo un trimestre de historia. La
ejecución de las tres palancas se corre con `/customer-retention-expansion`.

---

## 7. Red flags

- **[BELOW BENCHMARK] Margen de base + uso en 50,3%.** El gestor dedicado de Premium
  (USD 400 por cliente) y los mensajes pesan más de lo que cubre la base. Objetivo: 60% o
  más. Brecha: 10 puntos.
- **[WATCH] Margen mezclado conservador en 59,6%,** apenas debajo del piso de 60%. Depende de
  que el resultado no caiga más de lo modelado.
- **[WATCH] Churn de 3% mensual.** Con 12 clientes, una baja es 8% de la base. Necesitás 2% o
  menos antes de una Serie A con fondo internacional.
- **[RED FLAG evitado] Setup en el ARR.** El deck anterior mostraba "ARR USD 282.000".
  Corregido: ARR comprometido USD 115.200, ARR run-rate conservador USD 183.600, setup del
  trimestre USD 7.500 aparte.

---

## 8. Contexto LATAM

- **Payback:** 8,2 meses sin setup sobre margen bruto queda dentro del rango que se lee fuerte
  en Seed, menos de 12 meses (LATAM, directional). Con setup, 4,9 meses.
- **Margen AI-native:** 59,6% conservador está arriba del promedio de productos de AI
  (ICONIQ, ene 2026: ~41% en 2024, proyectado ~52% en 2026) (US-sourced benchmark), pero
  debajo de SaaS puro (70-80%).
- **Cobro en LATAM:** los corporativos pagan a 30-60 días y aplican IVA sobre setup y
  resultado. Todos los márgenes de este análisis son netos de IVA.
- **Churn:** 3% mensual se tolera en Seed con un camino creíble a 2% (LATAM, directional).

---

## 9. Interpretación

Cobranzia tiene unit economics defendibles en el caso conservador: 5,1:1 de LTV/CAC y un
payback de 8,2 meses sin contar el setup. El cambio a cobro mixto funcionó: el setup cubre
el onboarding y una cuarta parte del CAC, y el componente de resultado tiene 80% de margen.

El problema es de estructura, no de volumen. La base y el uso, que son el ingreso
predecible, dejan 50% de margen. El resultado, que es variable, sostiene el margen total.
Un fondo va a preguntar qué pasa cuando se agota la cartera vencida inicial; hoy la
respuesta es que el margen cae debajo de 60%. Subir la base en clientes nuevos y agregar un
piso al resultado lo resuelve sin tocar el valor que el cliente percibe.

No levantes mostrando el ARR de USD 282.000. Mostrá USD 115.200 comprometido y USD 183.600
run-rate conservador, con el setup aparte. Es un número menor y es el que te deja pasar el
due diligence.

---

## Próximos pasos

1. **Subí la base de Estándar de USD 600 a USD 700 para clientes nuevos.** Está dentro del
   rango de Van Westendorp (hasta USD 950). Lleva el margen de base + uso de 50,3% a cerca de
   55% a medida que entran clientes. Corré `/pricing-strategy-designer` para ajustar la lista.
2. **Agregá un piso al resultado en contratos nuevos:** USD 150 por mes en Estándar, cobrado
   aunque el recupero sea menor. Protege el margen cuando la cartera vieja se agota.
3. **Bajá el churn de 3% a 2% en 6 meses** con reuniones de resultados trimestrales y salud de
   cuenta por cliente: `/customer-retention-expansion`.
4. **Corregí el deck hoy:** ARR comprometido USD 115.200, run-rate conservador USD 183.600,
   setup como ingreso único. Guardá este análisis en el brain en
   `finance/unit-economics/2026-11`.
5. **Medí disputas y demora de cobro del resultado por cliente** durante 2 trimestres antes
   de usar el caso base en cualquier proyección para inversores.

---

## Fuentes

- Brain: `finance/facturacion-2026-q3`, `ops/costos-por-factura`, `sales/pricing/lista-precios-2026`, `customers/`
- David Skok SaaS Metrics 2.0: https://www.forentrepreneurs.com/saas-metrics-2/
- ICONIQ State of AI bi-annual snapshot (Jan 2026), via SaaStr: https://saastr.com/inference-costs-average-23-of-revenue-at-ai-b2b-companies-how-will-you-pay-for-it
- IFRS 15 Revenue from Contracts with Customers: https://www.ifrs.org/issued-standards/list-of-standards/ifrs-15-revenue-from-contracts-with-customers/
- Andrés Nájera, LAN mentor masterclass (Nov 2026): fórmula clientes x ticket x frecuencia
