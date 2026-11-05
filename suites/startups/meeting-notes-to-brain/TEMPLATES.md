# meeting-notes-to-brain: Output Template

ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

*Hypothetical example: Ruteo, B2B SaaS for route planning for SMB
distributors, Seed stage, Asunción. Customer meeting with Distribuidora Norte
(hypothetical), recorded with Granola free tier and pasted into the session.*

---

## 1. Meeting note (filed as `meetings/2026-10-08-distribuidora-norte-piloto`)

```
# Distribuidora Norte: revisión del piloto, semana 4

Fecha: 08/10/2026 | Duración: 42 min | Tipo: cliente | Fuente: transcripción Granola
Asistentes: [[ana-benitez]] (CEO, Ruteo), [[diego-ruiz]] (Customer Success, Ruteo),
[[carlos-mendez]] (Gerente de Logística, [[distribuidora-norte]]),
[[laura-gimenez]] (Jefa de Flota, [[distribuidora-norte]])
Reunión anterior: [[2026-09-24-distribuidora-norte-kickoff]]

## Resumen en 3 líneas
- El piloto bajó 11% los kilómetros por entrega en 4 semanas (dato de Laura, de su planilla de flota).
- Carlos quiere extender a las 3 sucursales, pero necesita la integración con su ERP antes de firmar.
- Bloqueo principal: el ERP exporta pedidos solo en CSV nocturno; la integración en tiempo real no existe todavía.

## Decisiones
| # | Decisión | Quién decidió |
|---|---|---|
| 1 | El piloto se extiende 4 semanas más sin costo, solo en la sucursal Centro | Carlos Mendez |
| 2 | La integración v1 usa el CSV nocturno del ERP; tiempo real queda para v2 | Ana Benitez, con acuerdo de Carlos |

## Acciones
| # | Acción | Dueño | Fecha | Fuente |
|---|---|---|---|---|
| 1 | Enviar especificación del formato CSV del ERP | Laura Gimenez | 13/10/2026 | min 18:40 |
| 2 | Construir importador del CSV nocturno y probarlo con datos reales | Diego Ruiz | 24/10/2026 [fecha propuesta] | min 21:05 |
| 3 | Enviar propuesta para 3 sucursales con precio por vehículo | Ana Benitez | 17/10/2026 | min 35:10 |
| 4 | Definir quién aprueba la compra del lado de Norte | [sin dueño] | - | min 38:00 |

## Preguntas abiertas
- ¿Quién firma la compra: Carlos o el Gerente General? Carlos dijo "lo tengo que consultar". Responde: Carlos.
- ¿El 11% de ahorro se sostiene en la sucursal Este, con rutas rurales? Responde: Laura, con datos de noviembre.

## Compromisos anteriores ([[2026-09-24-distribuidora-norte-kickoff]])
| Acción | Dueño | Estado |
|---|---|---|
| Cargar flota de 14 vehículos | Laura Gimenez | HECHO |
| Capacitar a 6 choferes en la app | Diego Ruiz | HECHO |
| Compartir costo actual por km | Carlos Mendez | NO MENCIONADO |

## Personas y empresas mencionadas
- [[carlos-mendez]]: Gerente de Logística, decide el uso, no confirma si decide la compra.
- [[laura-gimenez]]: Jefa de Flota, champion del piloto, dueña de los datos de ahorro.
- Roberto (apellido no mencionado) [verificar]: Gerente General de Norte, posible aprobador.
- [[distribuidora-norte]]: 3 sucursales, 41 vehículos en total (dato de Carlos, min 33:20).

## Cifras y citas textuales
- "Bajamos de 9,2 a 8,2 kilómetros por entrega" (Laura, min 12:15). Equivale a -11%.
- "Si me conectás el ERP, lo llevo a las tres sucursales" (Carlos, min 34:50).

## Llamada de venta (ampliación a 3 sucursales)
Habló el equipo Ruteo: 47% (estimado de la transcripción: 2.890 de 6.150 palabras; Granola free no da métrica). Regla: máx. 33%. HABLÓ DE MÁS: monólogo de Ana del min 24:10 al 29:30, demo de reportes que nadie pidió.

| # | Pregunta obligatoria | Estado | Respuesta (min) |
|---|---|---|---|
| 1 | Herramientas actuales | SÍ | "Planilla de flota y el ERP para pedidos" (09:30) |
| 2 | Presupuesto | NO | - |
| 3 | ¿Buscan activamente esto? | SÍ | "Queremos bajar el costo por entrega este año" (07:45) |
| 4 | Otras opciones, incluso no hacer nada | NO | - |
| 5 | Plazo | PARCIAL | "Antes de la temporada alta" sin fecha (36:20) |
| 6 | Requisitos | SÍ | Integración con el ERP (18:40) |
| 7 | Función que lo hace obvio | SÍ | "Si me conectás el ERP, lo llevo a las tres" (34:50) |
| 8 | Quién decide y aprueba | PARCIAL | "Lo tengo que consultar" (38:00) |
Cobertura: 5/8. Menos de 6: llamada de calificación antes de la propuesta.

Mapa de decisión: decisor Roberto, Gerente General [verificar, inferido] | champion [[laura-gimenez]] | usuario/evaluador [[carlos-mendez]] | finanzas o compras SIN IDENTIFICAR (preguntar a Carlos) | TI, dueño del ERP SIN IDENTIFICAR (preguntar a Laura). Riesgo: 2 contactos, ninguno decide la compra.
Cierre: próximo paso con fecha (propuesta 17/10). OK.

## Pendientes de verificar
- Nombre completo y rol de "Roberto".
```

---

## 2. Borradores de seguimiento creados

| Destinatario | Asunto | Estado |
|---|---|---|
| carlos.mendez@ (Norte), CC laura.gimenez@ | Piloto Ruteo: próximos pasos al 24/10 | Borrador en Gmail, no enviado |

```
Asunto: Piloto Ruteo: próximos pasos al 24/10

Carlos, Laura, gracias por el tiempo de hoy.

Lo que acordamos:
- Extendemos el piloto 4 semanas más en la sucursal Centro, sin costo.
- La integración con el ERP arranca con el archivo CSV nocturno.

De su lado:
- Laura: especificación del CSV del ERP, para el lunes 13/10.

Del nuestro:
- Importador del CSV funcionando con sus datos reales, para el 24/10.
- Propuesta para las 3 sucursales, para el viernes 17/10.

Una consulta para armar bien la propuesta: ¿a quién más deberíamos incluir en la aprobación?

Saludos,
Ana
```

---

## 3. Brain y conectores

- Creada: `meetings/2026-10-08-distribuidora-norte-piloto`
- Ingerida: transcripción completa como fuente
- Actualizadas (historial): `people/carlos-mendez`, `people/laura-gimenez`, `companies/distribuidora-norte`
- No conectado: CRM. Actualización del día, lista para pegar (hoy, 08/10):
  - Etapa: Piloto (pasa a "Propuesta" el 17/10)
  - Próximo paso: llamada de calificación de 20 min con Carlos (presupuesto, otras opciones, quién aprueba)
  - Fecha del próximo paso: 13/10/2026
  - Nota de actividad: "08/10 revisión piloto sem. 4 con Carlos y Laura: -11% km/entrega, quieren 3 sucursales si integramos ERP; falta aprobador y presupuesto."

Fuentes: transcripción Granola 08/10/2026; brain `meetings/2026-09-24-distribuidora-norte-kickoff`, `companies/distribuidora-norte`.

---

## 4. Próximos Pasos

1. Ana: resolver el ítem `[sin dueño]` (quién aprueba la compra) en la propuesta del 17/10. Sin aprobador identificado, el deal no tiene camino a firma.
2. Ana: revisar y enviar el borrador de seguimiento hoy.
3. Diego: confirmar que la fecha propuesta del 24/10 para el importador es realista; si no, corregirla antes de que salga el correo.
4. Ana: en la llamada del 13/10 cubrí las 3 preguntas faltantes (presupuesto, otras opciones, quién aprueba) y pedí que se sume Roberto; recién ahí corré lead-to-proposal con esta nota como discovery.
5. Pedir de nuevo a Carlos el costo actual por km (no mencionado dos reuniones seguidas); sin ese dato la propuesta no puede mostrar ROI.

---

## Example: batch run summary (`meetings/_runs/2026-10-10`)

```
# Corrida semanal de reuniones: 10/10/2026

Procesadas: 6 | Omitidas (ya estaban en el brain): 2 | Fallidas: 0
Borradores creados: 3 (Distribuidora Norte, un fondo semilla, Agro Sur)

Requieren atención:
- 2 acciones [sin dueño] en "2026-10-07-equipo-producto"
- 1 cifra [verificar] en "2026-10-09-agro-sur-discovery"

Fuentes con error: ninguna
```
