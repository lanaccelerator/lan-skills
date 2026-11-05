# customer-retention-expansion: Output Template

ALWAYS use this exact template structure. Do not change section headings, table columns,
or field order. Fill every [bracketed placeholder] with real analysis from the user's
startup.

**Hypothetical example:** Góndola AI (hipotético), agente de AI de reposición de inventario
para cadenas medianas de supermercados y farmacias. Seed, Asunción, vende en Paraguay y
Chile. 6 clientes recurrentes y 2 pilotos. Lista de precios en el brain: **Mínimo** USD 1.200
fijo por 60 días, hasta 4 sucursales, acreditable contra el setup de Estándar;
**Estándar** setup USD 3.000 + USD 90 por sucursal por mes + 8% del ahorro medido en merma;
**Premium** setup USD 6.000 + USD 150 por sucursal por mes + 10% del ahorro, con analista
dedicado y revisión semanal. Las cuentas se nombran con letras; todas las empresas, personas
y cifras son ficticias.

---

# Retención y Expansión: Góndola AI

**Fecha:** 05/11/2026
**Alcance:** revisión de toda la cartera
**Fuentes:** brain `customers/` (8 páginas de cuenta), `sales/pricing/lista-precios-2026`, `sales/proposals/` (criterios de éxito firmados), `meetings/` (últimos 90 días); planilla de cuentas; export contable de octubre. CRM no conectado: estados tomados de la planilla.

---

## 1. Resumen

**Veredicto:** la cartera está sana en el total y tiene un incendio. La Cuenta E (USD 900,
8% del MRR) renueva en 26 días con el champion afuera y el uso en caída: es una baja probable
si no hay reunión con el Gerente General esta semana. Del otro lado, hay USD 5.650 de MRR de
expansión identificado en 5 cuentas: con el plan de la sección 5, el MRR pasa de USD 11.180 a
USD 16.830 (+51%) sin un solo cliente nuevo de outbound.

| Indicador | Valor |
|---|---|
| MRR recurrente | USD 11.180 (6 cuentas) |
| Pilotos en curso | 2 (USD 2.400 de ingreso de piloto, fuera del MRR) |
| Verde / Amarillo / Rojo | 4 / 1 / 1 (USD 9.380 / USD 900 / USD 900) |
| MRR en riesgo | USD 900 (Cuenta E) |
| Renovaciones en los próximos 90 días | 3 (A, C, E) |
| Hitos atrasados | 3 (A, C, E) |

**Las tres acciones de la semana:**
1. Reunión de rescate con el Gerente General de la Cuenta E antes del 12/11.
2. One-pager de resultados de la Cuenta A al champion el 10/11 (48 h antes de la revisión del 12/11).
3. Orden de compra nueva y cobro de la factura vencida de la Cuenta C antes de mandar la propuesta de renovación.

---

## 2. Cartera y salud

Pesos: Uso 30%, Valor 30%, Relación 15%, Soporte 10%, Pagos 15%. Verde 70 o más, amarillo
50-69, rojo menos de 50. Una dimensión en 20 o menos es bandera roja aunque el total sea verde.

| Cuenta | Plan | MRR | Uso | Valor | Relación | Soporte | Pagos | Score | Estado | Señal principal |
|---|---|---|---|---|---|---|---|---|---|---|
| A (supermercados, 24 suc.) | Premium | USD 4.980 | 95 | 85 | 60 | 80 | 100 | 86 | Verde | El Gerente General no ve resultados desde el kickoff (feb) |
| B (supermercados, 12 suc.) | Estándar | USD 1.500 | 80 | 80 | 80 | 90 | 100 | 84 | Verde | Anunció 4 aperturas para el Q1 2027 |
| C (farmacias, 18 suc.) | Estándar | USD 2.200 | 85 | 90 | 90 | 70 | 20 | 76 | Verde con bandera roja | Factura de octubre a 38 días: orden de compra vencida |
| D (farmacias, 8 suc.) | Estándar | USD 900 | 60 | 60 | 60 | 80 | 100 | 68 | Amarillo | 3 de 8 sucursales no usan las sugerencias de pedido |
| E (supermercados, 10 suc.) | Estándar | USD 900 | 20 | 20 | 20 | 60 | 60 | 30 | Rojo | Champion renunció en octubre; uso -35% en 4 semanas |
| F (farmacias, 6 suc.) | Estándar | USD 700 | 75 | 70 | 70 | 90 | 100 | 78 | Verde | El dueño elogió el resultado por WhatsApp el 28/10 |
| G (farmacias, piloto 3 de 15 suc.) | Mínimo | Piloto | 70 | 80 | 80 | 90 | 100 | 81 | Verde | Día 40 de 60; merma -18% vs criterio -15% |
| H (supermercados, piloto 4 de 9 suc.) | Mínimo | Piloto | 50 | 50 | 60 | 80 | 100 | 62 | Amarillo | Día 20: solo 2 de 4 sucursales activas; primer valor atrasado |

**Cálculo de ejemplo (Cuenta E):** 20 x 30% + 20 x 30% + 20 x 15% + 60 x 10% + 60 x 15% =
6 + 6 + 3 + 6 + 9 = **30**.

---

## 3. Señales de churn y planes de rescate

### Cuenta E: Rojo, renueva el 01/12/2026 (26 días)

| Señal | Dato | Fuente |
|---|---|---|
| Champion se fue | El Jefe de Compras renunció el 14/10 | Nota de reunión `meetings/2026-10-16-cuenta-e` |
| Caída de uso | Sugerencias aceptadas por semana: 120 a 78 en 4 semanas (-35%) | Registro de Góndola AI |
| Resultado bajo criterio | Merma -3% vs objetivo -15%, dos meses seguidos | Reporte de merma del cliente |
| Factura vencida | Octubre, 12 días | Contabilidad |
| Decisor | Gerente General visto solo en el kickoff | Brain |

**Hipótesis:** el nuevo Jefe de Compras no fue capacitado, desconfía de las sugerencias y
volvió a pedir a mano.

**Plan de rescate:**

| Acción | Responsable | Fecha |
|---|---|---|
| Pedir 30 minutos al Gerente General (borrador de WhatsApp abajo) | Founder | 06/11/2026 |
| Reunión con Gerente General y nuevo Jefe de Compras | Founder | antes del 12/11/2026 |
| Re-onboarding del nuevo Jefe de Compras (2 semanas) | Equipo de onboarding | 18/11 al 29/11/2026 |
| Objetivo medible: aceptación de sugerencias 70% o más y merma -8% al 31/12 | Founder + cliente | 31/12/2026 |
| Propuesta: renovar 3 meses al mismo precio con revisión el 28/02/2027. Sin descuento | Founder | 26/11/2026 |

Borrador de WhatsApp al Gerente General:

Hola [nombre], soy [founder] de Góndola AI. Con la salida de [ex Jefe de Compras] la
reposición sugerida dejó de usarse y la merma volvió a subir. Quiero mostrarte en 30 minutos
qué pasó y un plan de dos semanas para recuperar el resultado antes de la renovación del 1/12.
¿Te queda bien el martes o el miércoles?

### Cuenta D: Amarillo

3 de 8 sucursales no aceptan sugerencias (los encargados siguen con su planilla). Visita a
las 3 sucursales el 18/11 con el champion; objetivo: uso 80% o más al 15/12/2026.

### Cuenta H (piloto): Amarillo

Primer valor objetivo a 21 días; hoy es el día 20 con 2 de 4 sucursales activas. Visita a
las 2 inactivas el 10/11. Sin primer valor al día 30 (15/11), la conversión del 10/12 está
en riesgo y se avisa al champion.

---

## 4. Calendario de renovaciones

Hitos: revisión interna T-120, revisión de resultados T-90, propuesta T-60, contrato T-30.
Pilotos: reunión de conversión 5 días antes del fin.

| Cuenta | Plan | MRR | Renovación | Próximo hito | Fecha | Estado |
|---|---|---|---|---|---|---|
| E | Estándar | USD 900 | 01/12/2026 | Contrato (T-30) | 01/11/2026 | Atrasado 4 días; plan de rescate (sección 3) |
| C | Estándar | USD 2.200 | 01/01/2027 | Propuesta (T-60) | 02/11/2026 | Atrasado 3 días; la revisión T-90 nunca se hizo; bloqueado por factura |
| A | Premium | USD 4.980 | 01/02/2027 | Revisión de resultados (T-90) | 03/11/2026 | Atrasado 2 días; agendada 12/11/2026 |
| B | Estándar | USD 1.500 | 15/03/2027 | Revisión interna (T-120) | 15/11/2026 | En fecha |
| D | Estándar | USD 900 | 01/05/2027 | Revisión interna (T-120) | 01/01/2027 | En fecha |
| F | Estándar | USD 700 | 01/07/2027 | Revisión interna (T-120) | 03/03/2027 | En fecha |
| G | Mínimo | Piloto | Fin 25/11/2026 | Reunión de conversión | 20/11/2026 | En fecha |
| H | Mínimo | Piloto | Fin 15/12/2026 | Reunión de conversión | 10/12/2026 | En riesgo (primer valor atrasado) |

Calendario de fin de año: enero es lento en el Cono Sur. Para la Cuenta A, la propuesta
formal se adelanta al 19/11 para firmar antes del 15/12.

---

## 5. Plan de expansión

| Cuenta | Hoy | Movimiento | Disparador | Fecha | MRR nuevo | Cambio MRR |
|---|---|---|---|---|---|---|
| G | Mínimo, 3 suc. | Estándar, 15 suc. | Criterio cumplido: merma -18% vs -15% | 20/11/2026 | USD 1.670 (15 x 90 + 8% x USD 4.000 de ahorro estimado) | +USD 1.670 |
| H | Mínimo, 4 suc. | Estándar, 9 suc. | Criterios al día 60 | 10/12/2026 | USD 1.010 (9 x 90 + 8% x USD 2.500) | +USD 1.010 |
| C | Estándar, 18 suc. | Premium, 18 suc. | Pidió revisión semanal y análisis de capital | Renovación 01/01/2027, después de cobrar la factura | USD 3.425 (18 x 150 + 10% x USD 7.250) | +USD 1.225 |
| A | Premium, 24 suc. | +6 sucursales región Sur | Aperturas anunciadas para enero | 12/11/2026 (en la revisión) | USD 6.225 (4.980 + 6 x 150 + 10% x USD 3.450) | +USD 1.245 |
| B | Estándar, 12 suc. | +4 sucursales | Aperturas del Q1 2027 | 15/12/2026 | USD 2.000 (1.500 + 4 x 90 + 8% x USD 1.750) | +USD 500 |
| E | Estándar, 10 suc. | Rescate, sin expansión | Plan de la sección 3 | 12/11/2026 | USD 900 | 0 (riesgo: -USD 900) |
| **Total** | | | | | **USD 16.830** | **+USD 5.650 (+51%)** |

**Setup (ingreso único, fuera del MRR):** G USD 1.800 (USD 3.000 menos USD 1.200 acreditados
del piloto); H USD 1.800; C USD 3.000 de diferencia a Premium. Total USD 6.600.

**Si la Cuenta E se pierde:** MRR USD 15.930 (+42%).

Precios tomados de `sales/pricing/lista-precios-2026`. Para cambiar planes o componentes,
`/pricing-strategy-designer`; para el impacto en NRR y LTV, `/unit-economics-calculator`.

---

## 6. La cuenta compuesta (1,2 x 1,2 x 1,2)

Ingreso anual = clientes x ticket promedio mensual x meses facturados por cliente por año
(frecuencia, neta de pausas y bajas).

| Palanca | Hoy | Con +20% | Cómo, en esta cartera |
|---|---|---|---|
| Clientes | 6 | 7,2 | Conversión de los pilotos G y H; referidos de A, B y F |
| Ticket promedio mensual | USD 1.863 | USD 2.236 | C a Premium; sucursales nuevas en A y B |
| Meses facturados por cliente por año | 10 | 12 | Rescatar E; renovaciones anuales firmadas a tiempo |
| **Ingreso anual** | **6 x 1.863 x 10 = USD 111.800** (MRR 11.180 x 10) | **7,2 x 2.236 x 12 = USD 193.190** | |

**Multiplicador:** 193.190 / 111.800 = 1,728 = **+73%**. Andrés Nájera presenta esta fórmula
como +66%; la cuenta compuesta correcta es 1,2 x 1,2 x 1,2 = 1,728. Sumar las tres palancas
(+60%) también subestima.

---

## 7. Pedidos de referidos

Solo cuentas verdes, en el momento del "gracias", varias veces por año.

| Cuenta | Momento del gracias | Fecha | Quién pide | A quién | Estado |
|---|---|---|---|---|---|
| F | El dueño escribió "nunca tuvimos tan poco vencido" por WhatsApp | 28/10/2026, pedir el 06/11 | Founder | Dueño | Ventana abierta: pedir esta semana |
| A | Cierre de la revisión con -22% de merma | 12/11/2026 | Founder | Gerente de Operaciones y Gerente General | Pendiente |
| G | Firma de la conversión a Estándar | 20/11/2026 | Founder | Jefe de Compras | Condicional a la firma |
| B | Firma de las 4 sucursales nuevas | 15/12/2026 | Founder | Gerente Comercial | Pendiente |
| C | No pedir | n/a | n/a | n/a | Bloqueado: factura vencida |
| D, E, H | No pedir | n/a | n/a | n/a | Bloqueado: amarillo o rojo |

Borrador de WhatsApp al dueño de la Cuenta F:

Gracias por el mensaje del otro día, [nombre]. Con la baja de vencidos que viste en tus 6
farmacias, ¿conocés a alguien en otra cadena que se pueda beneficiar? Si te sirve, te paso un
texto corto para que lo reenvíes en el grupo de tu gremio.

Texto reenviable (2 líneas): "Estamos usando Góndola AI para la reposición y bajamos los
vencidos en nuestras farmacias. Si te interesa, te paso el contacto de [founder]."

---

## 8. Revisión de resultados: Cuenta A (12/11/2026)

Enviar al champion el 10/11 para revisarlo juntos; Gerente General confirmado. El founder
habla como máximo 33% de la reunión.

**Recomendación:** renovar Premium por 12 meses desde el 01/02/2027 y sumar las 6 sucursales
de la región Sur desde el 15/01/2027.

**Su objetivo y dueño:** "Bajar la merma por vencimiento de 2,1% a 1,5% de las ventas antes de
fin de 2027." Dueño: Gerente de Operaciones (kickoff, 01/02/2026).

**Resultados medidos:**

| Métrica | Línea base | Hoy | Cambio | Método y fuente |
|---|---|---|---|---|
| Merma por vencimiento (% de ventas) | 2,1% (ene 2026) | 1,64% (oct 2026) | -22% | Reporte mensual de merma del ERP del cliente |
| Quiebres de stock (% de ítems sin stock en góndola) | 7,8% | 5,1% | -2,7 puntos | Auditoría semanal de góndola del cliente |
| Días de inventario | 41 | 34 | -7 días | ERP: inventario promedio / costo diario |
| Pedidos sugeridos aceptados por compradores | n/a | 87% | n/a | Registro de Góndola AI |

**Lo que paga vs lo que obtiene (por mes):**
- Paga: USD 4.980 (USD 3.600 de base + USD 1.380 de 10% del ahorro).
- Ahorro en merma: USD 3.000.000 de ventas x (2,1% - 1,64%) = **USD 13.800**.
- Capital liberado: 7 días x USD 70.000 de costo diario = USD 490.000; a 1,5% mensual de
  costo de capital, **USD 7.350** `[ASSUMPTION: tasa de su línea de crédito; confirmar con finanzas]`.
- Total: USD 21.150 por mes. Paga el 23,5% y se queda con el 76,5%. Solo con la merma, sin
  contar capital: retorno de 2,8 veces lo que paga.

**Por qué (tres razones):**
1. La merma va -22% y la meta es -29%: las 6 sucursales nuevas arrancan con el modelo ya
   entrenado si entran desde el día 1.
2. 7 días menos de inventario liberan USD 490.000 de capital de trabajo.
3. Quiebres -2,7 puntos: ventas que antes se perdían en góndola.

**Riesgos:** la meta de 1,5% no está asegurada. Frescos (pan, lácteos) va -9%, el resto -27%.
Plan: modelo específico para frescos en el Q1 2027, dentro de la revisión semanal de Premium.

**Decisión que pedimos:** aprobar la renovación Premium por 12 meses y las 6 sucursales de la
región Sur. **Próximo paso:** propuesta formal el 19/11/2026, firma antes del 15/12/2026.

Al cierre, si los números se confirman en la reunión: pedido de referido (sección 7).

---

## 9. Beneficios medidos al brain

| Página | Contenido | Permiso | Estado |
|---|---|---|---|
| `customers/cuenta-a/resultados-2026-q4` | Merma 2,1% a 1,64% en 9 meses; quiebres 7,8% a 5,1%; días de inventario 41 a 34; método y fuentes de la sección 8 | Anonimizado: pedir por escrito el 12/11 | Crear después de la revisión |
| `sales/beneficios-medidos` (fila nueva) | Supermercados, 24 sucursales, merma -22% en 9 meses | Anonimizado (pendiente) | Agregar el 12/11 |
| `sales/beneficios-medidos` (fila nueva) | Farmacias, piloto de 3 sucursales, merma -18% en 60 días | Solo interno hasta la conversión | Agregar el 20/11 |
| `customers/cuenta-f/resultados-2026-q4` | Cita del dueño ("nunca tuvimos tan poco vencido") | Pedir permiso para citar con cargo, sin nombre | Pendiente |

`/lead-to-proposal` lee `sales/beneficios-medidos` para poner en cada propuesta nueva el
resultado medido del cliente más parecido. Ningún nombre, logo o número sale sin permiso
escrito.

---

## 10. Facturación y cobranza

| Cuenta | Factura | Monto | Días vencida | Causa | Acción (borrador) | Fecha |
|---|---|---|---|---|---|---|
| C | Octubre 2026 | USD 2.200 | 38 | Orden de compra vencida en el portal de proveedores | Pedir OC nueva a compras y nota a cuentas a pagar; llamada del día +30 corresponde ya | 06/11/2026 |
| E | Octubre 2026 | USD 900 | 12 | Sin contacto desde la salida del champion | Nota a cuentas a pagar; tema en la reunión con el Gerente General | 06/11/2026 |
| A | Resultado de octubre | USD 1.380 | 0 | Reporte de medición enviado el 03/11, pendiente de aprobación | Recordar la aprobación del reporte | 10/11/2026 |

**Carpeta de proveedor:** el certificado de cumplimiento tributario vence el 30/11/2026.
Renovarlo antes de facturar la renovación de C y E.

**Regla aplicada:** la propuesta de renovación de C no sale hasta cobrar la factura de
octubre.

---

## 11. Actualizaciones de CRM (mismo día)

CRM no conectado: cambios aplicados a la planilla de cuentas el 05/11/2026.

| Cuenta | Qué se registra | Campo | Fecha |
|---|---|---|---|
| E | Champion se fue; estado "En riesgo"; próximo paso reunión con Gerente General | Estado, Próximo hito, Notas | 05/11/2026 |
| C | Hito T-60 atrasado; factura a 38 días; próximo paso OC nueva | Próximo hito, Factura abierta, Días vencida | 05/11/2026 |
| A | Revisión agendada 12/11; expansión +6 sucursales propuesta | Próximo hito, Notas | 05/11/2026 |
| G | Reunión de conversión 20/11 | Próximo hito | 05/11/2026 |
| H | Primer valor atrasado; visita 10/11 | Primer valor, Próximo hito | 05/11/2026 |
| F | Pedido de referido programado 06/11 | Último pedido de referido | 05/11/2026 |

Aprendizaje para el brain (no para esta skill): "En dos cuentas, la salida del champion bajó
el uso más de 30% en un mes. Re-onboarding del reemplazo dentro de 14 días." Guardado en
`learnings/retencion-salida-champion`.

---

## Próximos pasos

1. **Hoy:** mandá el borrador de WhatsApp al Gerente General de la Cuenta E y conseguí la
   reunión antes del 12/11. Es la única renovación de la cartera en riesgo real.
2. **06/11:** pedí la orden de compra nueva a compras de la Cuenta C y la nota a cuentas a
   pagar. Sin cobro, no hay propuesta de renovación ni upgrade a Premium.
3. **06/11:** pedí el referido al dueño de la Cuenta F mientras dura el "gracias" de su
   mensaje del 28/10.
4. **10/11:** mandá el one-pager de la Cuenta A al champion; revisión con el Gerente General el
   12/11 con la decisión de renovación y las 6 sucursales nuevas.
5. **20/11:** reunión de conversión de G con el criterio cumplido (-18% vs -15%) y la
   propuesta de Estándar en 15 sucursales ya armada con `/lead-to-proposal`.

---

## Fuentes

- Brain: `customers/` (8 cuentas), `sales/pricing/lista-precios-2026`, `sales/proposals/`, `meetings/2026-10-16-cuenta-e`, `sales/beneficios-medidos`
- Planilla de cuentas (05/11/2026); export contable de octubre 2026
- Andrés Nájera, LAN mentor masterclass (Nov 2026): referidos en el momento del gracias; fórmula clientes x ticket x frecuencia
- David Skok, SaaS Metrics 2.0: https://www.forentrepreneurs.com/saas-metrics-2/
- references/shared/b2b-buying-2026.md: reunión ejecutiva, regla de 33%
