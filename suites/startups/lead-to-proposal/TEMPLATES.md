# lead-to-proposal: Output Template

ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

*Hypothetical example: Ruteo, B2B SaaS for route planning for SMB
distributors, Seed stage, Asunción. Prospect: Distribuidora Norte
(hypothetical), 3 branches, 41 vehicles, mid-pilot. Brain contains: price
list (USD 45 per vehicle per month, integration setup USD 1.500, annual
prepay discount 10%), 2 case studies, a proposal template. All company names,
people, URLs and figures are fictional.*

---

## 1. Calificación del deal

### SPIN
| Capa | Lo que dijeron | Fuente |
|---|---|---|
| Situación | 41 vehículos en 3 sucursales; rutas armadas a mano cada mañana por cada jefe de sucursal | Carlos, min 03:10 |
| Problema | "Cada sucursal arma las rutas como puede, y los choferes se pisan zonas" | Laura, min 07:45 |
| Implicación | 2 horas diarias por sucursal armando rutas; combustible 18% del costo logístico | Carlos, min 09:30 |
| Necesidad-beneficio | "Si me conectás el ERP, lo llevo a las tres sucursales" | Carlos, min 34:50 |

### MEDDICC
| Elemento | Estado | Evidencia |
|---|---|---|
| Métricas | VERIFICADO | -11% km por entrega en el piloto (Laura, min 12:15) |
| Comprador económico | FALTA | "Lo tengo que consultar" (Carlos, min 38:00). Probable: Gerente General "Roberto" [verificar] |
| Criterios de decisión | INFERIDO | Integración con ERP es condición; precio no se discutió |
| Proceso de decisión | FALTA | Sin pasos ni fechas a la firma |
| Dolor identificado | VERIFICADO | Horas de armado manual y combustible |
| Champion | VERIFICADO | Laura Gimenez, dueña de los datos del piloto |
| Competencia | INFERIDO | Statu quo (planillas); no mencionaron otro proveedor |

**Salud del deal:** 2 de 3 elementos críticos en FALTA (comprador económico, proceso de decisión). La propuesta sale hoy, pero el primer seguimiento es una reunión con el Gerente General, no un recordatorio.

---

## 2. Investigación del cliente

| Dato | Fuente | Fecha |
|---|---|---|
| Abrió la sucursal Este en marzo de 2026, con 12 vehículos | Sitio web del cliente, sección noticias (ejemplo) | 03/2026 |
| Distribuye bebidas y snacks a 1.900 comercios | LinkedIn de la empresa, página pública (ejemplo) | 10/2026 |
| Carlos Mendez: 6 años en Norte, antes en una distribuidora de consumo masivo | LinkedIn público (ejemplo) | 10/2026 |

---

## 3. Propuesta (formato de la plantilla del brain)

```
PROPUESTA COMERCIAL
Ruteo para Distribuidora Norte: 3 sucursales
Fecha: 08/10/2026 | Válida hasta: 07/11/2026 | Preparada para: Carlos Mendez, Laura Gimenez

1. Lo que nos contaron
"Cada sucursal arma las rutas como puede, y los choferes se pisan zonas." Hoy cada jefe de
sucursal dedica unas 2 horas por día a armar rutas, y el combustible representa el 18% de su
costo logístico. Con la apertura de la sucursal Este en marzo, el problema creció de 2 a 3 frentes.

2. Objetivos
- Llevar la reducción de km por entrega lograda en el piloto (-11%) a las 3 sucursales.
- Eliminar el armado manual de rutas: de 6 horas diarias entre las 3 sucursales a menos de 1.
- Integrar los pedidos del ERP sin carga manual.

3. Solución y alcance
- Planificación automática de rutas para 41 vehículos, 3 sucursales.
- Importador del archivo nocturno del ERP (v1). Integración en tiempo real: fuera de alcance, v2.
- App de choferes con prueba de entrega.
- Reporte semanal de ahorro por sucursal.
Fuera de alcance: gestión de inventario, facturación.

4. Resultados en clientes similares
- Su propio piloto, sucursal Centro, 4 semanas: de 9,2 a 8,2 km por entrega (-11%).
- [[caso-distribuidora-litoral]]: distribuidora de consumo masivo, 35 vehículos, 2 sucursales.
  En 3 meses: -14% km por entrega y armado de rutas de 90 a 10 minutos por día.

5. Plan y cronograma
| Semana | Hito | Responsable |
|---|---|---|
| 1 | Importador CSV en producción con datos de Centro | Ruteo |
| 2 | Alta de flota y choferes de Este y Oeste | Norte (Laura) y Ruteo |
| 3 | Capacitación de choferes de Este y Oeste | Ruteo |
| 4 | Primer reporte de ahorro de las 3 sucursales | Ruteo |

6. Inversión
| Ítem | Cálculo | Monto |
|---|---|---|
| Licencia mensual | 41 vehículos x USD 45 | USD 1.845 por mes |
| Integración ERP (pago único) | Lista de precios | USD 1.500 |
| Opción pago anual adelantado | USD 1.845 x 12 x 0,90 | USD 19.926 por año (ahorro USD 2.214) |
Precios sin IVA. Facturación mensual a 30 días.

7. Retorno estimado (supuestos explícitos)
Con -11% de km sobre su gasto de combustible actual de [GASTO MENSUAL DE COMBUSTIBLE: completar,
dato pendiente de Carlos], el ahorro mensual estimado es [completar]. Sin ese dato no publicamos
una cifra de retorno.

8. Próximos pasos (plan de acción conjunto)
| Fecha | Paso | Quién |
|---|---|---|
| 13/10 | Especificación del CSV del ERP | Laura (Norte) |
| 16/10 | Reunión de 30 min con Gerencia General para revisar la propuesta | Carlos (Norte), Ana (Ruteo) |
| 24/10 | Importador funcionando con datos reales | Diego (Ruteo) |
| 31/10 | Firma | Gerencia General (Norte) |
| 03/11 | Inicio de despliegue en 3 sucursales | Ruteo |
```

---

## 4. Secuencia de seguimiento (borradores, no enviados)

| Día | Fecha | Canal | Asunto o primera línea | Valor que agrega |
|---|---|---|---|---|
| 0 | 08/10 | Email | Propuesta Ruteo: 3 sucursales, en sus palabras | Resumen de 3 líneas + PDF |
| 2 | 10/10 | WhatsApp a Laura | "Laura, te paso cómo midió Litoral el ahorro por sucursal" | Caso similar con método de medición |
| 5 | 13/10 | Email a Carlos | Resumen de una página para Gerencia General | Responde al "lo tengo que consultar" |
| 9 | 17/10 | Email | Lo que vimos en sus rutas de Este | Insight: las rutas rurales concentran el 40% del km con 20% de las entregas (datos del piloto) |
| 14 | 22/10 | Email | ¿Seguimos con el 31/10? | Pregunta directa por fecha y firmante |
| 21 | 29/10 | Email | Cierro el tema por ahora | Cierre del ciclo, puerta abierta |

Ejemplo, día 5:
```
Asunto: Resumen de una página para Gerencia General

Carlos, como mencionaste que la decisión la consultás con Gerencia, te armé una página para
que la revisen juntos:

- Qué resuelve: armado manual de rutas en 3 sucursales (hoy unas 6 horas por día en total).
- Qué ya probaron: -11% de km por entrega en Centro, en 4 semanas, medido por Laura.
- Cuánto cuesta: USD 1.845 por mes más USD 1.500 de integración, sin IVA.
- Riesgo: contrato mensual, sin permanencia mínima.

¿Te sirve que lo veamos 30 minutos con Gerencia el jueves 16?

Ana
```

---

## 5. Brain y CRM

- Creada: `sales/proposals/2026-10-08-distribuidora-norte`, con MEDDICC y fuentes de investigación
- Actualizada (historial): `companies/distribuidora-norte`
- CRM (HubSpot): deal "Distribuidora Norte: 3 sucursales" movido de "Piloto" a "Propuesta enviada" al confirmar el envío; próximo paso "Reunión con Gerencia General", 16/10
- Borradores: 5 en Gmail, 1 texto de WhatsApp listo para copiar

Fuentes: brain `pricing/lista-de-precios`, `cases/caso-distribuidora-litoral`, `templates/propuesta-comercial`, `meetings/2026-10-08-distribuidora-norte-piloto`; sitio web y LinkedIn público del cliente (ejemplo).

---

## 6. Próximos Pasos

1. Revisar la propuesta y enviarla hoy antes de las 18:00. El cambio de etapa en el CRM queda pendiente hasta que se envíe.
2. Conseguir la reunión con Gerencia General del 16/10: es el elemento faltante que define si este deal cierra en octubre.
3. Pedir a Carlos el gasto mensual de combustible para completar el retorno estimado; es la cifra que el Gerente General va a mirar primero.
4. Confirmar que el descuento del 10% por pago anual está dentro de las reglas cargadas en el brain (lo está: hasta 10% sin aprobación).
