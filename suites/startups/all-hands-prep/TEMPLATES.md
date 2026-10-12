# all-hands-prep: Output Template

ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

*Hypothetical example: Ruteo, B2B SaaS for route planning for SMB
distributors, Seed stage, 11 people in 3 teams (Producto, Ventas, Customer
Success), Asunción. Agenda for Monday 13/10/2026, week 2 of 13 in Q4.
Sources: brain (previous agenda, 6 meeting notes, Q4 OKRs), Linear, HubSpot,
billing sheet.*

---

```
# All-hands Ruteo: lunes 13/10/2026

Duración: 45 min | Semana 2 de 13 del Q4 | Pre-lectura: bloques 1 y 2
Agenda anterior: [[2026-10-06-agenda]]

## 1. Números (5 min, sin discusión)

| KPI | Esta semana | Semana pasada | Delta | Meta Q4 | Esperado hoy | Estado |
|---|---|---|---|---|---|---|
| MRR | USD 50.100 | USD 49.200 | +900 (+1,8%) | USD 65.000 | USD 50.600 | En camino (99%) |
| Clientes pagos | 39 | 38 | +1 | 60 | 41,4 | En riesgo (94%) |
| Churn mensual de logos | 3,1% | 2,8% | +0,3 pp | 2,0% | 2,0% | Fuera de camino |
| Pipeline calificado | USD 182.000 | USD 160.000 | +22.000 (+14%) | USD 250.000 | - | En camino |
| Km por entrega (clientes activos) | -9,8% | -9,5% | -0,3 pp | -12% | - | En riesgo |

| Key Result | Dueño | Confianza | Cambio |
|---|---|---|---|
| KR1: MRR de USD 48K a USD 65K | Ana Benitez | 6/10 | = |
| KR2: 22 clientes nuevos en el trimestre | Martín Paredes | 4/10 | -2 |
| KR3: churn mensual menor a 2% | Diego Ruiz | 3/10 [propuesto] | sin dato previo |

## 2. Compromisos de la semana pasada (5 min)

| Equipo | Comprometidos | Hechos | Tasa | No hecho (motivo en una línea) |
|---|---|---|---|---|
| Producto | 3 | 2 | 67% | Importador CSV para ERP: esperando especificación del cliente |
| Ventas | 3 | 1,5 | 50% | 10 demos agendadas de 15: lista de prospectos agotada |
| Customer Success | 2 | 2 | 100% | - |

Ventas está bajo 60% por segunda semana seguida. Se discute en el bloque 4.

## 3. Por equipo (20 min)

### Producto ([[sofia-acosta]], 7 min)
- Logros: app de choferes v2.3 publicada el 09/10; tiempo de carga de ruta de 8 s a 3 s.
- Bloqueos: importador CSV depende de la especificación de Distribuidora Norte (vence 13/10).
- Compromisos de esta semana [propuesto]:
  1. Importador CSV probado con datos reales de Norte (Diego Ruiz apoya), 17/10
  2. Reporte de ahorro por cliente dentro de la app, 17/10
  3. Corregir el bug de rutas duplicadas reportado por 3 clientes, 15/10

### Ventas ([[martin-paredes]], 7 min)
- Logros: pipeline calificado +USD 22.000; 2 propuestas enviadas (Agro Sur, Frigorífico Este).
- Bloqueos: lista de prospectos agotada; 4 deals sin movimiento hace más de 14 días en HubSpot.
- Compromisos de esta semana [propuesto]:
  1. Lista de 60 distribuidoras nuevas con decisor identificado, 15/10
  2. Cerrar o descartar los 4 deals estancados, 17/10
  3. Propuesta de 3 sucursales para Distribuidora Norte (Ana), 17/10

### Customer Success ([[diego-ruiz]], 6 min)
- Logros: 6 choferes capacitados en Norte; NPS de onboarding 48 (12 respuestas).
- Bloqueos: 2 bajas en septiembre por precio; no hay plan para clientes de menos de 5 vehículos.
- Compromisos de esta semana [propuesto]:
  1. Llamar a los 5 clientes con menor uso de la semana, 16/10
  2. Proponer plan para flotas chicas con números, 17/10

## 4. Decisiones (10 min)

| # | Decisión a tomar | Quién decide | Insumo |
|---|---|---|---|
| 1 | ¿Se mantiene la meta de 22 clientes nuevos? Al ritmo actual (1 neto en 2 semanas) se llega a unos 7 | Ana Benitez | KR2 en 4/10, tasa de Ventas 50% dos semanas |
| 2 | ¿Se lanza un plan para flotas de menos de 5 vehículos o se acepta ese churn? | Ana Benitez con Diego Ruiz | 2 bajas por precio en septiembre |
| 3 | ¿Producto prioriza el importador CSV sobre el reporte de ahorro si la especificación llega tarde? | Sofía Acosta | Dependencia de Norte |

## 5. Cierre (5 min)
Leer en voz alta los compromisos confirmados por equipo y sus dueños. Quedan como base de la próxima agenda.

Fuentes: brain `meetings/all-hands/2026-10-06-agenda`, 6 notas de reunión del 06/10 al 10/10, `okrs/2026-q4`; Linear (23 tareas); HubSpot (pipeline al 10/10); planilla de facturación (MRR al 10/10).
```

---

## Brain y conectores

- Creada: `meetings/all-hands/2026-10-13-agenda`
- Vinculada a: `okrs/2026-q4`, notas de reunión de la semana, páginas de cada dueño
- Conectores usados: Linear, HubSpot, Google Sheets. Sin datos: confianza previa de KR3.

---

## Próximos Pasos

1. Enviar la agenda hoy antes de las 18:00 para que los bloques 1 y 2 se lean antes de la reunión.
2. Pedir a Diego la confianza real de KR3 antes del lunes; la marcada `[propuesto]` es una estimación.
3. Ana: llegar a la reunión con una posición sobre la decisión 1. La meta de clientes nuevos está fuera de alcance al ritmo actual y la tasa de entrega de Ventas lo confirma.
4. Después de la reunión, correr meeting-notes-to-brain sobre la grabación para registrar los compromisos confirmados.
