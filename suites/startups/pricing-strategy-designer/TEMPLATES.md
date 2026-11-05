# pricing-strategy-designer: Output Template

ALWAYS use this exact template structure. Do not change section headings, table columns,
or field order. Fill every [bracketed placeholder] with real analysis from the user's
startup.

**Hypothetical example:** Cobranzia (hipotético), agente de AI que gestiona la cobranza de
cuentas por cobrar de distribuidoras medianas por WhatsApp y email: recordatorios, promesas
de pago, conciliación con el banco. Seed, Asunción, vende en Paraguay y Chile. 6 clientes,
hoy cobra USD 300 por usuario por mes. Todas las empresas, personas y cifras son ficticias.

---

# Estrategia de Precios: Cobranzia

**Fecha:** 05/11/2026
**Etapa:** Early revenue (6 clientes, USD 4.200 MRR)
**Modelo actual:** USD 300 por usuario (cobrador) por mes, sin setup
**Geografía:** Paraguay y Chile, precio de lista en USD
**Fuentes del brain:** `sales/pricing/lista-precios-2026`, `customers/casos/distribuidora-a`, `sales/proposals/` (9 propuestas), `ops/costos-por-factura`

**Veredicto:** el modelo por usuario está roto. Dos de tus seis clientes ya bajaron de 3
usuarios a 1 porque el agente hace el trabajo: cada vez que tu producto mejora, tu ingreso
cae. Pasá a tres planes con cobro mixto (setup + base + uso + % de lo recuperado). Con el
mismo embudo, el MRR al mes 6 pasa de USD 3.150 a USD 9.900.

---

## 1. Métrica de valor

**Métrica elegida: facturas gestionadas por mes, más el monto recuperado de la cartera
vencida a más de 90 días.**

| Criterio | Cumple | Por qué |
|---|---|---|
| Se entiende sin explicar | Sí | "Pagás por las facturas que el agente gestiona y por lo que recupera" |
| Crece con el valor | Sí | Más facturas y más recupero = más valor para el cliente |
| Medible y facturable | Sí | Facturas en el ERP; recupero en el extracto bancario |

**Descartadas:** usuarios (el agente reemplaza usuarios, la métrica cae cuando el valor
sube), mensajes enviados (el cliente no valora mensajes, valora cobrar), tarifa plana (sin
expansión).

---

## 2. Modelo de cobro mixto

| Componente | Qué cobra | Unidad | Por qué |
|---|---|---|---|
| Setup | Integración con ERP, número de WhatsApp, plantillas, 2 capacitaciones | Pago único | Cubre 30 h de onboarding (USD 1.200 de costo) y filtra compradores poco serios |
| Base mensual | Plataforma y capacidad incluida de facturas | USD por mes | Piso predecible para vos y presupuesto fijo para el cliente |
| Variable | Facturas gestionadas arriba de lo incluido | USD por factura, con tope mensual | Crece con el tamaño del cliente sin renegociar |
| Resultado | % de lo recuperado de la lista base de vencidos a más de 90 días | % del monto cobrado, con tope | Capturás parte del valor que generás; el cliente paga solo si cobra |

**Regla de captura:** el total mensual captura entre 10% y 30% del valor entregado
(directional). Abajo de 10% estás regalando; arriba de 30% necesitás prueba de que el
comprador lo acepta.

---

## 3. Los tres planes

| Plan | Para quién | Alcance | Setup | Base mensual | Variable | Resultado | Total mes típico | Rol |
|---|---|---|---|---|---|---|---|---|
| **Mínimo** | Gerente de finanzas que quiere probar sin pedir aprobación al directorio | 1 sucursal o 1 segmento de cartera, hasta 400 facturas/mes, 60 días | USD 900 (se acredita al 100% contra el setup de Estándar) | USD 350 | No | No | USD 350 (piloto total USD 1.600) | Entrar por la puerta: la mayoría de las propuestas dice que sí |
| **Estándar** (recomendado) | Distribuidora mediana, 1.000-2.500 facturas/mes, 2-4 cobradores | Toda la cartera, 1 razón social, ERP + WhatsApp + email | USD 2.500 | USD 600 (incluye 1.500 facturas) | USD 0,30 por factura arriba de 1.500, tope USD 300/mes | 10% de lo recuperado de la lista base, tope USD 1.500/mes | USD 900 (conservador) a USD 1.100 (base) | El trabajo estándar que querés vender |
| **Premium** | Grupo con varias razones sociales o más de 4.000 facturas/mes | Multiempresa, gestor dedicado, revisión semanal, cartas de precobranza legal, scoring de riesgo, SLA de respuesta 4 h | USD 6.000 | USD 1.800 (incluye 5.000 facturas) | USD 0,20 por factura arriba de 5.000 | 12% de lo recuperado, tope USD 4.000/mes, con garantía | USD 3.300 | Ancla: pocos lo compran; el que lo compra paga como tres Estándar |

**Garantía Premium:** si lo recuperado en un trimestre es menor a USD 15.000, la base del
trimestre siguiente baja 50%. (Esperado para el cliente típico Premium: USD 37.500 por
trimestre.)

**Cálculo del total mes típico:**
- Estándar conservador: USD 600 + 10% x USD 3.000 recuperados = **USD 900**
- Estándar base: USD 600 + 10% x USD 5.000 recuperados = **USD 1.100**
- Premium (4.000 facturas, sin excedente): USD 1.800 + 12% x USD 12.500 recuperados = **USD 3.300**

**Mezcla por cliente (mismo Estándar, distinto comprador):**

| Comprador | Base | Resultado | Total con USD 5.000 recuperados |
|---|---|---|---|
| Presupuesto anual fijo (corporativo) | USD 850 | 5%, tope USD 600 | USD 1.100 |
| Quiere riesgo compartido (dueño de empresa familiar) | USD 400 | 15%, tope USD 2.000 | USD 1.150 |

Cambia la mezcla, no el valor capturado.

---

## 4. Ruta de upsell Mínimo a Estándar

| Día | Qué pasa | Responsable |
|---|---|---|
| 0 | Firma del Mínimo. El mismo documento trae los criterios de éxito, la fecha de la reunión de resultados y el precio de Estándar | Founder |
| 1-10 | Setup: ERP, WhatsApp, lista base de vencidos firmada por el cliente | Equipo de onboarding |
| 30 | Revisión intermedia: recupero y horas ahorradas a la fecha | Founder + champion |
| 55 | Reunión de resultados con el decisor: números medidos contra criterios | Founder |
| 60 | Conversión a Estándar desde el mes 3. Paga USD 1.600 de diferencia de setup (USD 2.500 menos USD 900 acreditados) | Founder |

**Criterios de éxito del Mínimo (por escrito):**
1. Recuperar al menos USD 6.000 de la lista base de vencidos del segmento en 60 días.
2. Bajar al menos 50% las horas del equipo dedicadas a recordatorios (medido con el registro
   del cliente).

**De Estándar a Premium:** disparadores medibles: más de 4.000 facturas por mes durante 2
meses seguidos, una segunda razón social, o un pedido de SLA o de cartas legales. La
ejecución después de la venta (salud de la cuenta, reuniones de resultados, renovación) se
corre con `/customer-retention-expansion`.

---

## 5. Cómo ancla Premium

- En cada propuesta se muestran los tres planes lado a lado, Premium primero, Estándar
  marcado como "recomendado". El primer número que el comprador ve (USD 3.300) hace que
  USD 1.100 parezca razonable (anclaje, Tversky y Kahneman, 1974).
- Premium tiene alcance real y caro de entregar (gestor dedicado, cartas legales,
  garantía). No es un precio inflado: si alguien lo compra, lo entregás con margen (ver
  sección 7).
- Esperado: 1 de cada 10 propuestas elige Premium. Ese cliente paga como 3 Estándar
  (USD 3.300 vs USD 1.100) y aporta el 33% del MRR con 1 de 7 clientes (sección 9).

---

## 6. Valor entregado y disposición a pagar

**Valor mensual para el cliente típico Estándar** (1.500 facturas/mes, 3 cobradores,
USD 120.000 vencidos a más de 90 días; datos del caso `customers/casos/distribuidora-a`):

| Fuente de valor | Conservador | Base | Supuesto |
|---|---|---|---|
| Horas liberadas | USD 1.500 | USD 1.500 | 1,5 cobradores x USD 1.000 de costo cargado (dato del cliente) |
| Recupero de vencidos a más de 90 días | USD 3.000 | USD 5.000 | 15% (conservador) o 25% (base) de USD 120.000 en 6 meses |
| **Total** | **USD 4.500** | **USD 6.500** | |
| Precio Estándar | USD 900 | USD 1.100 | |
| **Captura** | **20,0%** | **16,9%** | Dentro del rango 10-30% |

**Precio actual vs valor:** con 1 usuario (lo que piden tus clientes cuando el agente
funciona) cobrás USD 300, el 4,6% del valor base. Subprecio crónico.

**Van Westendorp** (14 gerentes de finanzas de distribuidoras del ICP, formulario de 4
preguntas, oct 2026, directional por muestra chica):

| Punto | Base mensual |
|---|---|
| Tan barato que dudarían de la calidad | USD 300 |
| Ganga | USD 450 |
| Caro pero lo considerarían | USD 950 |
| Demasiado caro | USD 1.400 |
| **Rango aceptable** | **USD 450 a USD 950** |

La base de Estándar (USD 600) queda dentro del rango; el componente de resultado no entra
en la encuesta porque se paga solo si cobran.

---

## 7. Piso de margen

Costo por factura gestionada: 3 mensajes x USD 0,03 + inferencia USD 0,05 = **USD 0,14**
`[ASSUMPTION: tarifa de mensajes utility de WhatsApp; verificá la vigente para PY y CL]`

| Plan | Ingreso mensual | COGS mensual | Margen bruto | Estado |
|---|---|---|---|---|
| Mínimo (400 facturas) | USD 350 | USD 116 (56 uso + 30 hosting + 30 revisión humana) | 66,9% | OK |
| Estándar conservador (1.500) | USD 900 | USD 270 (210 + 30 + 30) | 70,0% | OK |
| Estándar base (1.500) | USD 1.100 | USD 270 | 75,5% | OK |
| Estándar pesado (2.500) | USD 1.400 (600 + 300 uso + 500 resultado) | USD 410 (350 + 60) | 70,7% | OK |
| Premium (4.000) | USD 3.300 | USD 1.050 (560 + 30 + 60 + 400 gestor dedicado 0,25 FTE) | 68,2% | OK |
| Premium con garantía activada | USD 1.500 (900 base + 600 resultado) | USD 1.050 | 30,0% | ALERTA: aceptable solo como excepción |

**Setup vs costo de onboarding:** Mínimo USD 900 vs USD 480 (12 h); Estándar USD 2.500 vs
USD 1.200 (30 h); Premium USD 6.000 vs USD 3.200 (80 h). Todos cubren el costo.

---

## 8. Alternativas del comprador

| Alternativa | Modelo | Costo mensual típico | Nota |
|---|---|---|---|
| Status quo: 1,5 cobradores más | Sueldo | USD 1.500 | Dato de discovery; no recupera la cartera vieja |
| Estudio o agencia de cobranza externa | % de lo recuperado | 15-25% de lo cobrado: USD 750-1.250 sobre USD 5.000 (directional, cotización de 2 estudios locales) | Solo cartera vieja; no libera horas |
| Herramienta genérica de recordatorios por email | Suscripción | USD 50-150 (directional, páginas de precios públicas) | Sin WhatsApp, sin promesas de pago, sin conciliación |
| **Cobranzia Estándar** | **Mixto** | **USD 900-1.100** | Libera horas y recupera; cobra resultado solo si cobran |

**Lectura:** Estándar cuesta menos que contratar 1,5 cobradores y cobra un % de lo
recuperado menor al de una agencia, haciendo además el trabajo diario. Ese es el argumento
de la propuesta, con los números del prospecto.

---

## 9. Embudo esperado de 10 propuestas

| Resultado | Cantidad | Setup (único) | MRR al mes 6 |
|---|---|---|---|
| Aceptan Mínimo | 6 | 6 x USD 900 = USD 5.400 | |
| Mínimo que convierte a Estándar (67%) | 4 | 4 x USD 1.600 = USD 6.400 | 4 x USD 1.100 = USD 4.400 |
| Estándar directo | 2 | 2 x USD 2.500 = USD 5.000 | 2 x USD 1.100 = USD 2.200 |
| Premium | 1 | USD 6.000 | USD 3.300 |
| Perdidas | 1 | 0 | 0 |
| **Total** | **7 clientes al mes 6** | **USD 22.800** | **USD 9.900** |

- Base de los 6 pilotos: 6 x 2 x USD 350 = USD 4.200, ingreso de piloto, no recurrente.
- ARR recurrente: USD 9.900 x 12 = **USD 118.800**. El setup (USD 22.800) se reporta aparte,
  nunca dentro del MRR ni del ARR.
- **Modelo actual por usuario, mismos 7 clientes:** 7 x 1,5 usuarios x USD 300 = **USD 3.150
  MRR**. El modelo mixto multiplica el MRR por 3,1.
- Premium: 1 de 7 clientes, 33% del MRR.

---

## 10. Contexto LATAM

- **Umbral de aprobación:** en tus 9 propuestas, los gerentes de finanzas aprueban solos
  hasta unos USD 2.000. El piloto Mínimo (USD 1.600 en total) queda abajo: por eso firma
  rápido. Estándar y Premium van al Gerente General.
- **IVA:** cotizá con y sin IVA (Paraguay 10%, Chile 19%). El setup va en una línea propia
  de la factura; pedí 50% a la firma porque los corporativos pagan a 30-60 días.
- **Moneda:** precio de lista en USD; facturá en guaraníes o pesos chilenos al tipo de cambio
  del día cuando el cliente lo pida, con la fuente del tipo de cambio en el contrato.
- **Línea base del resultado:** la lista de vencidos a más de 90 días se firma el día 1 y se
  recalcula cada trimestre. La fuente del recupero es el extracto bancario del cliente, no tu
  sistema.
- **Mensual primero:** ofrecé el anual recién en el mes 3-4 de Estándar, con 17% de
  descuento sobre la base (USD 500 en vez de USD 600). El descuento no aplica a setup ni a
  resultado.

---

## Próximos pasos

1. **Dejá de vender por usuario a clientes nuevos desde hoy.** Las próximas propuestas salen
   con los tres planes. Actualizá `sales/pricing/lista-precios-2026` en el brain para que
   `/lead-to-proposal` cotice con la lista nueva.
2. **Test en vivo con las próximas 10 propuestas:** tres planes lado a lado, Premium primero,
   Estándar recomendado. Registrá en el CRM el mismo día qué plan eligió cada prospecto y por
   qué descartó los otros. Si menos de 6 de 10 aceptan Mínimo, achicá el alcance del piloto,
   no el precio.
3. **Migrá a los 6 clientes actuales en la renovación:** aviso por escrito con 60 días, precio
   congelado 90 días, setup sin cargo porque ya están integrados. Empezá por los 2 que bajaron
   a 1 usuario.
4. **Firmá la línea base de vencidos con cada cliente antes del día 1.** Sin línea base no hay
   cobro por resultado, hay discusión mensual.
5. **Corré `/unit-economics-calculator`** con estos planes: payback con y sin setup, y margen
   del componente de resultado en escenario conservador.

---

## Fuentes

- Brain: `sales/pricing/lista-precios-2026`, `customers/casos/distribuidora-a`, `sales/proposals/` (9 propuestas), `ops/costos-por-factura`
- ProfitWell value metric: Patrick Campbell / ProfitWell (now Paddle) value-based pricing method; the original profitwell.com articles are offline
- Kyle Poyar, Growth Unhinged: https://www.growthunhinged.com/
- Tversky and Kahneman, Science, 1974: https://www.science.org/doi/10.1126/science.185.4157.1124
- Huber, Payne and Puto, Journal of Consumer Research, 1982: https://doi.org/10.1086/208899
- Van Westendorp, P. (1976). NSS Price Sensitivity Meter, ESOMAR Congress.
- Sequoia, "Services: The New Software" (Julien Bek, Mar 2026): https://www.sequoiacap.com/article/services-the-new-software
