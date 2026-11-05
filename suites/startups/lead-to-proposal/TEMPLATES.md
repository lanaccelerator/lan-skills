# lead-to-proposal: Output Template

ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

Hypothetical example: Ruteo, B2B SaaS for route planning for SMB distributors, Seed stage,
Asunción. Prospect: Distribuidora Norte (hypothetical), 3 branches, 41 vehicles, mid-pilot.
Discovery call on Thursday 08/10/2026. Brain contains: price list (USD 45 per vehicle per
month, integration setup USD 1.500, annual prepay discount 10%), 2 case studies with
measured results, proposal and deck templates, vendor document folder. All company names,
people, URLs and figures are fictional.

---

## 1. Calificación del deal

### Cobertura de preguntas obligatorias: 6/8
| # | Pregunta | Respuesta | Fuente |
|---|---|---|---|
| 1 | Herramientas actuales | Planillas por sucursal y el ERP para pedidos | Carlos, min 03:10 |
| 2 | Presupuesto | NO PREGUNTADO | (ninguna) |
| 3 | ¿Buscan activamente una solución? | Sí, por eso hicieron el piloto | Laura, min 05:20 |
| 4 | Otras opciones, incluido no hacer nada | Seguir con planillas; no evaluaron otro proveedor | Carlos, min 21:40 |
| 5 | Plazo | NO PREGUNTADO | (ninguna) |
| 6 | Requisitos | Leer los pedidos del ERP sin carga manual | Laura, min 26:05 |
| 7 | Funcionalidad que lo hace obvio | "Si me conectás el ERP, lo llevo a las tres sucursales" | Carlos, min 34:50 |
| 8 | Quién decide y aprueba | "Lo tengo que consultar" (sin nombre ni proceso) | Carlos, min 38:00 |

6/8 alcanza el umbral, pero presupuesto y plazo quedan para el pre-wire del viernes 09/10.
**Tiempo de habla:** Ana habló 38% de la llamada (tiempos por hablante del grabador). Por
encima del máximo de 33%: en la reunión de decisión, arrancá con preguntas, no con la demo.

### SPIN
| Capa | Lo que dijeron | Fuente |
|---|---|---|
| Situación | 41 vehículos en 3 sucursales; rutas armadas a mano cada mañana por cada jefe de sucursal | Carlos, min 03:10 |
| Problema | "Cada sucursal arma las rutas como puede, y los choferes se pisan zonas" | Laura, min 07:45 |
| Implicación | 2 horas diarias por sucursal armando rutas; "gastamos unos USD 28.000 por mes en combustible entre las tres" | Carlos, min 09:30; Laura, min 10:40 |
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

**Salud del deal:** 2 de 3 elementos críticos en FALTA (comprador económico, proceso de
decisión). El business case va primero a Laura con un pre-wire de 20 minutos el viernes
09/10 para confirmar al Gerente General y el proceso. La reunión de decisión solo se hace con
él en la sala.

---

## 2. Mapa del grupo comprador

| Rol | Persona | Qué le importa | Qué recibe de este deal |
|---|---|---|---|
| Decisor | Gerente General "Roberto" [verificar] | Margen, riesgo, crecimiento con la sucursal Este | One-pager ejecutivo 48 h antes |
| Champion | Laura Gimenez, Jefa de Logística | Llevar el piloto a las 3 sucursales y quedar bien | Business case para revisar y reenviar |
| Evaluador | Carlos Mendez, Gerente de Operaciones | Horas de sus jefes de sucursal | Propuesta y plan de despliegue |
| Usuario | Jefes de sucursal Este y Oeste [PENDIENTE: nombres] | Que el armado de las 7:00 sea más rápido | Demo de 10 minutos con sus rutas |
| Finanzas | Gerente Administrativo [PENDIENTE] | Precio, forma de pago, IVA | Lógica de cobro por vehículo, sin permanencia |
| IT | Responsable del ERP [PENDIENTE] | Esfuerzo de integración | Nota de integración de una página |

**Riesgo:** 3 roles sin nombre. El pre-wire con Laura pide los nombres de finanzas e IT.
Dueña de la cuenta en Ruteo: Ana. Ningún rol recibe dos mensajes el mismo día.

---

## 3. Investigación del cliente

| Dato | Fuente | Fecha |
|---|---|---|
| Abrió la sucursal Este en marzo de 2026, con 12 vehículos | Sitio web del cliente, sección noticias (ejemplo) | 03/2026 |
| Distribuye bebidas y snacks a 1.900 comercios | LinkedIn de la empresa, página pública (ejemplo) | 10/2026 |
| Carlos Mendez: 6 años en Norte, antes en una distribuidora de consumo masivo | LinkedIn público (ejemplo) | 10/2026 |

**Inteligencia del ICP (brain):** en las 2 distribuidoras clientes, la objeción que más
apareció fue "¿y si los choferes no usan la app?"; el business case la responde en riesgos.

---

## 4. Business case (borrador, se envía antes de la reunión de decisión)

```
Business case: rutas automáticas para las 3 sucursales de Distribuidora Norte
Para: Laura Gimenez (pre-wire, 09/10) y luego Gerencia General (one-pager, 12/10)

El objetivo, en palabras de Carlos, es "llevar a las tres sucursales lo que ya probamos en
Centro". El dueño del objetivo es Carlos Mendez, Gerente de Operaciones, y la decisión final
la toma la Gerencia General.

Hoy cada jefe de sucursal dedica unas 2 horas por día a armar rutas a mano, unas 132 horas
por mes entre las tres sucursales, y "los choferes se pisan zonas". El combustible cuesta
unos USD 28.000 por mes y es el 18% del costo logístico. Con la apertura de la sucursal Este
en marzo, el problema pasó de 2 a 3 frentes.

Hay tres caminos. El primero es no hacer nada: el costo actual sigue y crece con cada
vehículo nuevo. El segundo es extender las planillas con un coordinador central, lo que suma
un sueldo y no reduce kilómetros. El tercero, el que recomendamos, es llevar Ruteo a las 3
sucursales con el importador del ERP.

Usamos sus números y somos conservadores. En el piloto de Centro la reducción fue de 11% de
km por entrega; para las 3 sucursales suponemos 8%, porque las rutas rurales de Este son más
largas. Sobre USD 28.000 de combustible, eso es unos USD 2.240 por mes. La licencia cuesta
USD 1.845 por mes, así que el ahorro de combustible solo ya la cubre, y la integración de
USD 1.500 se recupera en unos 4 meses. Además, si el armado de rutas baja de 6 horas diarias
a 1, como pasó en un cliente similar, los jefes de sucursal recuperan unas 110 horas por mes.

Los riesgos principales son dos. Que los choferes de Este y Oeste no adopten la app: lo
mitigamos con capacitación en la semana 3 y con el reporte semanal por sucursal. Que el
archivo del ERP cambie de formato: el importador v1 lee el archivo nocturno y lo validamos con
datos reales antes de cobrar el despliegue completo. El contrato es mensual, sin permanencia.

Recomendamos aprobar el despliegue en las 3 sucursales en la reunión del miércoles 14/10,
para firmar el 30/10 y arrancar el martes 03/11.
```

---

## 5. Propuesta (formato de la plantilla del brain, se envía el 14/10 después de la reunión)

```
PROPUESTA COMERCIAL
Ruteo para Distribuidora Norte: 3 sucursales
Fecha: 14/10/2026 | Válida hasta: 13/11/2026 | Preparada para: Gerencia General, Carlos Mendez, Laura Gimenez

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

4. Resultados en clientes similares (medidos)
- Su propio piloto, sucursal Centro, 4 semanas: de 9,2 a 8,2 km por entrega (-11%), medido por Laura.
- [[caso-distribuidora-litoral]]: distribuidora de consumo masivo, 35 vehículos, 2 sucursales.
  En 3 meses: -14% km por entrega y armado de rutas de 90 a 10 minutos por día, medido con
  los registros de la app.

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
Precios sin IVA. Facturación mensual a 30 días. Sin permanencia mínima.

7. Retorno estimado (supuestos explícitos)
Combustible actual USD 28.000 por mes (dato de Laura). Supuesto conservador: -8% (piloto: -11%).
Ahorro estimado: USD 2.240 por mes contra USD 1.845 de licencia; integración recuperada en
unos 4 meses. Con el resultado del piloto (-11%), el ahorro sería USD 3.080 por mes.

8. Próximos pasos (plan de acción conjunto)
| Fecha | Paso | Quién |
|---|---|---|
| 19/10 | Especificación del CSV del ERP | Laura y responsable del ERP (Norte) |
| 23/10 | Importador funcionando con datos reales | Diego (Ruteo) |
| 26/10 | Contrato y documentos de alta de proveedor | Ana (Ruteo), Gerente Administrativo (Norte) |
| 30/10 | Firma | Gerencia General (Norte) |
| 03/11 | Inicio de despliegue en 3 sucursales | Ruteo |
```

---

## 6. Deck visual de propuesta (para la reunión del 14/10)

Con el logo, los colores (azul y naranja) y los números de Norte. Mockups marcados como
"ilustrativo", solo con funciones que existen o están en el alcance.

| Slide | Título | Contenido visual |
|---|---|---|
| 1 | Recomendación: Ruteo en las 3 sucursales desde el 03/11 | Recomendación y las 3 razones, en el primer minuto |
| 2 | Lo que cuesta hoy | 132 horas por mes de armado manual y USD 28.000 de combustible, en sus palabras |
| 3 | Lo que vería cada jefe de sucursal a las 7:00 | Mockup del tablero de rutas con las zonas reales de Centro, Este y Oeste y sus 41 vehículos |
| 4 | Lo que ve Gerencia cada lunes | Mockup del reporte semanal de ahorro por sucursal, con los datos del piloto |
| 5 | Lo que ya probaron | Piloto de Centro: de 9,2 a 8,2 km por entrega, medido por Laura |
| 6 | Un cliente parecido | Distribuidora Litoral (caso del brain): -14% km y de 90 a 10 minutos por día |
| 7 | Plan de 4 semanas | Cronograma con responsables de los dos lados |
| 8 | Inversión y retorno | USD 1.845 por mes, ahorro conservador USD 2.240 por mes |
| 9 | La decisión que pedimos | Aprobar hoy para firmar el 30/10 |

---

## 7. One-pager ejecutivo y reunión de decisión

**One-pager (se envía el lunes 12/10 a las 9:00, 48 h antes):**
```
Para: Gerencia General, Carlos Mendez, Laura Gimenez
Recomendación: llevar Ruteo a las 3 sucursales desde el 03/11.

Por qué:
1. Combustible: -8% conservador sobre USD 28.000 por mes = USD 2.240 por mes (piloto: -11%).
2. Horas: el armado de rutas baja de 6 horas diarias a 1; unas 110 horas por mes para los jefes de sucursal.
3. Riesgo bajo: contrato mensual sin permanencia; el importador se valida con datos reales antes del despliegue.

Inversión: USD 1.845 por mes + USD 1.500 de integración, sin IVA.
Lo que pedimos el miércoles 14/10: la aprobación para firmar el 30/10.
```

**Plan de la reunión (miércoles 14/10, 10:00, 45 minutos):**
| Momento | Qué hace Ana | Regla |
|---|---|---|
| Minuto 1 | Abre con la recomendación | No en la slide 12 |
| Minutos 2-15 | Preguntas a Gerencia: presupuesto, plazo, criterios | Máximo 33% de habla de Ana en toda la reunión |
| Minutos 15-25 | Slides 3 a 6, solo sobre lo que dijeron | Máximo 3 razones |
| Minutos 25-40 | Objeciones y dudas | Responde con sus números |
| Minutos 40-45 | Pide la decisión y agenda el siguiente paso con fecha | Nadie sale sin fecha |

Condición: Gerencia General confirmada en el pre-wire del 09/10. Si no puede, la reunión se mueve.

---

## 8. Secuencia de seguimiento (borradores, no enviados)

| Día | Fecha | Canal y rol | Asunto o primera línea | Valor que agrega |
|---|---|---|---|---|
| -5 | 08/10 (email) y 09/10 (llamada) | Email + llamada de 20 min a Laura (champion) | Business case para que lo revisemos juntas antes de la reunión | Pre-wire: objeciones, nombre del decisor, presupuesto y plazo |
| -2 | 12/10 | Email a Gerencia General, copia Carlos y Laura | Recomendación para las 3 sucursales, en una página | One-pager 48 h antes |
| 0 | 14/10 | Reunión + email a todos los presentes | Propuesta Ruteo: 3 sucursales, lo que conversamos hoy | Propuesta enviada el mismo día, después de la reunión, con resumen de 3 líneas |
| 2 | 16/10 | WhatsApp a Laura | "Laura, te paso cómo midió Litoral el ahorro por sucursal" | Caso similar con método de medición |
| 5 | 19/10 | Email al Gerente Administrativo | Cómo se factura Ruteo: por vehículo, sin permanencia | Responde el criterio de decisión que no se habló (precio y forma de pago) |
| 9 | 23/10 | Email a Carlos | Lo que vimos en sus rutas de Este | Insight: las rutas rurales concentran el 40% del km con 20% de las entregas (datos del piloto) |
| 14 | 28/10 | Email a Gerencia General | ¿Seguimos con la firma del 30/10? | Pregunta directa por fecha y firmante |
| 21 | 04/11 | Email a Carlos | Cierro el tema por ahora | Cierre del ciclo, puerta abierta |

Ejemplo, día -5 (se envía el jueves 08/10 a la tarde):
```
Asunto: Business case para revisar antes de la reunión

Laura, te adjunto el business case para llevar el piloto a las tres sucursales. Antes de
mandárselo a Gerencia me gustaría que lo leas vos: ¿qué te va a preguntar Roberto que acá no
está respondido?

¿Tenés 20 minutos mañana viernes para verlo? También quiero confirmar dos cosas: que él pueda
estar el miércoles 14 a las 10:00, y quién de administración y de sistemas tendría que estar
al tanto.

Ana
```

---

## 9. Después de la aceptación: legal, contrato y portal de proveedores

| Paso | Estado | Responsable | Fecha |
|---|---|---|---|
| Contrato desde los términos del brain, con anexo de tratamiento de datos (datos de choferes) | Borrador listo | Ana | 26/10 |
| Firmante y poderes confirmados | [PENDIENTE: preguntar en la reunión del 14/10] | Carlos (Norte) | 26/10 |
| Documentos para el portal de proveedores de Norte: RUC, certificado de cumplimiento tributario, pólizas, estatutos, poderes del representante legal, certificado bancario | 5 de 6 en la carpeta; falta el certificado de cumplimiento tributario actualizado | Lucía (Ruteo) | 26/10 |
| Número de orden de compra y contacto de facturación | [PENDIENTE] | Gerente Administrativo (Norte) | 30/10 |
| Kickoff y traspaso a retención (`/customer-retention-expansion` después de la primera factura) | Agendado | Ana | 03/11 |

---

## 10. Brain y CRM

- Creada: `sales/proposals/2026-10-08-distribuidora-norte`, con business case, propuesta, cobertura 6/8, MEDDICC, mapa de roles y fuentes de investigación
- Actualizada (historial): `companies/distribuidora-norte`
- Aprendizaje propuesto para `sales/learnings`: "En distribuidoras, el combustible mensual se consigue en el discovery si se pregunta por sucursal" (pendiente de aprobación del founder)
- CRM (HubSpot), el mismo día: deal "Distribuidora Norte: 3 sucursales" movido de "Piloto" a "Business case"; 6 contactos con rol; próximo paso "Pre-wire con Laura", 09/10
- Borradores: 7 en Gmail, 1 texto de WhatsApp listo para copiar; deck y one-pager en Drive como borrador

Fuentes: brain `pricing/lista-de-precios`, `cases/caso-distribuidora-litoral`, `templates/propuesta-comercial`, `templates/deck-propuesta`, `legal/carpeta-proveedor`, `meetings/2026-10-08-distribuidora-norte-piloto`; sitio web y LinkedIn público del cliente (ejemplo).

---

## 11. Próximos Pasos

1. Mandale hoy el business case a Laura y agendá el pre-wire de 20 minutos para mañana viernes 09/10.
2. En el pre-wire, confirmá que Roberto (Gerencia General) está en la reunión del miércoles 14/10 y conseguí presupuesto y plazo: son las 2 preguntas obligatorias que faltaron.
3. Mandá el one-pager el lunes 12/10 a las 9:00, 48 horas antes de la reunión.
4. En la reunión, hablá como máximo 15 de los 45 minutos; en el discovery hablaste 38%.
5. Pedile a Lucía hoy el certificado de cumplimiento tributario actualizado: es el único documento que falta para el portal de proveedores.
