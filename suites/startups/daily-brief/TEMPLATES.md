# daily-brief: Output Template

ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

*Hypothetical example: Ruteo, B2B SaaS for route planning for SMB
distributors, Seed stage, Asunción. Founder: Ana Benitez (CEO). Connected:
company brain, Gmail, Google Calendar, Granola, Claude Code, 2 repos.
WhatsApp not connected. All names are fictional.*

---

## 1. Close mode (filed as `daily/2026-10-08`, section `## Cierre`)

```
# Bitácora 08/10/2026

## Resumen del día
- El piloto con [[distribuidora-norte]] se extiende 4 semanas; la firma de las 3 sucursales depende de la integración con su ERP. [reunión: meetings/2026-10-08-distribuidora-norte-piloto]
- Un fondo semilla pidió el modelo financiero actualizado para el viernes. [correo]
- Se terminó el importador de pedidos v0 (lee CSV, falta validación). [git: ruteo-api, 4 commits] [IA]
- 4 reuniones, 2 con decisión, 2 sin decisión. [cal]

## Reuniones
| Hora | Reunión | Resultado | Fuente |
|---|---|---|---|
| 09:00 | Daily de producto | Sin decisiones. Se repasó el backlog. | [cal] [sin notas] |
| 11:00 | [[distribuidora-norte]]: revisión piloto | Piloto +4 semanas sin costo; integración v1 por CSV nocturno | [reunión: meetings/2026-10-08-distribuidora-norte-piloto] |
| 15:00 | Candidato backend (2da entrevista) | Siguiente paso: prueba técnica | [cal] |
| 17:30 | [[agro-sur]]: discovery | Piden propuesta para 22 vehículos | [reunión: meetings/2026-10-08-agro-sur-discovery] |

## Correo
**Enviado (clave)**
- A [[carlos-mendez]]: seguimiento del piloto con fechas 13/10 y 24/10. [correo]
- Al contador: aprobación de la factura de septiembre, USD 1.240. [correo]

**Recibido (clave)**
- Fondo semilla: pide modelo financiero actualizado para el 10/10. Sin respuesta todavía. [correo]
- [[agro-sur]]: envía su planilla de flota (22 vehículos, 3 depósitos). [correo]

## Lo que se trabajó con la IA
- Importador CSV de pedidos: parser y tests en ruteo-api. Queda abierta la validación de direcciones vacías. [IA] [git: ruteo-api, 4 commits]
- Borrador de propuesta para 3 sucursales de Norte (precio por vehículo). Quedó como borrador, no enviado. [IA]
- Landing: corrección del formulario de demo. [git: ruteo-web@a1c9e2f]

## Aprendizajes
- El cliente decide por el ERP, no por el ahorro: el 11% de reducción no movió la firma, la integración sí. [reunión: meetings/2026-10-08-distribuidora-norte-piloto]
- La daily de producto lleva 3 días sin decisiones; el formato no está sirviendo. [cal] [inferido]

## Pendientes para mañana
**Tuyos abiertos**
| # | Acción | Fecha | Días abierto | Fuente |
|---|---|---|---|---|
| 1 | Enviar modelo financiero actualizado al fondo semilla | 10/10/2026 | 1 | [correo] |
| 2 | Enviar propuesta 3 sucursales a [[distribuidora-norte]] | 17/10/2026 | 1 | [reunión] |
| 3 | Revisar contrato de oficina | - | 4 | [daily/2026-10-07] |

**Esperando a otros**
- [[laura-gimenez]]: especificación del CSV del ERP, para el 13/10. [reunión]

**Agenda de mañana (09/10)**
| Hora | Evento | Preparación |
|---|---|---|
| 10:00 | Llamada con el fondo semilla | Tener el modelo actualizado (pendiente 1) |
| 14:00 | Daily de producto | Proponer cambiar el formato |

## Pendientes de verificar
- Nada.

Fuentes no disponibles: WhatsApp no conectado (los compromisos por WhatsApp no están en esta bitácora).
```

---

## 2. Open mode (same page, section `## Apertura`, 09/10/2026 07:30)

```
# Agenda 09/10/2026

## Agenda de hoy
| Hora | Evento | Preparación necesaria |
|---|---|---|
| 10:00 | Llamada con el fondo semilla | Modelo financiero actualizado (todavía no enviado) |
| 14:00 | Daily de producto | Propuesta de nuevo formato |

## Pendientes que vienen de ayer
1. Enviar modelo financiero al fondo semilla (vence mañana 10/10). [daily/2026-10-08]
2. Propuesta 3 sucursales a Norte (17/10). [daily/2026-10-08]
3. Revisar contrato de oficina: 5 días arrastrándose. ¿Lo hacés, lo delegás o lo borrás? [daily/2026-10-08]

## Primer bloque sugerido
08:00-09:45: modelo financiero. Es lo único que vence antes de la llamada de las 10:00.
```

---

## 3. Team mode (filed as `daily/team/2026-10-08`)

```
# Equipo 08/10/2026

## Resumen del equipo
- Producto cerró el importador CSV v0; Ventas sumó 1 discovery y 1 propuesta en preparación; Customer Success capacitó a 6 choferes nuevos.

## Por área
| Área | Persona | Lo que se hizo | Fuente |
|---|---|---|---|
| Producto | [[diego-ruiz]] | Importador CSV v0 (4 commits), fix de login en la app de choferes (2 commits) | [git: ruteo-api, ruteo-mobile] |
| Ventas | [[ana-benitez]] | Discovery [[agro-sur]]; propuesta Norte en borrador | [CRM] [reunión] |
| Customer Success | [[sofia-acosta]] | Capacitación de 6 choferes en [[distribuidora-norte]] | [cal compartido] [brain: customers/distribuidora-norte] |

## Bloqueos visibles
- Importador depende de la especificación del CSV que debe enviar Norte el 13/10. [reunión]

## Lo que necesita a un cofounder
- Aprobar el precio por vehículo para la propuesta de Norte antes del 15/10. [CRM]

Fuera de este resumen por política: evaluaciones de candidatos y temas personales.
```

---

## 4. Brain, entrega y fuentes

- Actualizada: `daily/2026-10-08` (sección `## Cierre`; la sección `## Apertura` de la mañana se mantuvo)
- Borrador creado: "Bitácora 08/10/2026" en Gmail, para ana@ (vos), no enviado
- Fuentes: Gmail (14 hilos revisados, 4 clave), Google Calendar (4 eventos), brain (2 reuniones), Claude Code (3 sesiones), git (ruteo-api, ruteo-web)
- No conectado: WhatsApp

---

## 5. Próximos Pasos

1. Bloquear 08:00-09:45 mañana para el modelo financiero; vence antes de la llamada con el fondo.
2. Decidir hoy qué pasa con "revisar contrato de oficina": 4 días abierto, se delega o se borra.
3. Cambiar el formato de la daily de producto: 3 días seguidos sin decisiones.
4. Conectar WhatsApp o anotar a mano los compromisos de ese canal; hoy la bitácora no los ve.
