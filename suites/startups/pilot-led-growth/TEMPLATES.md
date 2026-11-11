# Pilot-Led Growth: filled example

Hypothetical: FlotaSegura, telematics SaaS that cuts fuel use and driving incidents in truck
fleets. Seed, USD 18K MRR, 22 clients (mid-size transport companies in Chile and Peru). The
logistics unit of a Chilean food distribution group (hypothetical "Grupo Andino Alimentos",
240 trucks in Chile, operations in Peru and Colombia) asked for "un piloto gratis de 6 meses".

---

## Calificación

| Criterio | Semáforo | Por qué |
|---|---|---|
| Urgencia | VERDE | El combustible subió 18% en el año y el gerente de logística tiene meta de -8% de costo por km para el cierre del ejercicio |
| Dueño del dolor vs puerta | AMARILLO | Entramos por innovación; el dueño es el gerente de logística, que todavía no estuvo en una reunión |
| Decisor y presupuesto | AMARILLO | Firma el gerente de logística con presupuesto de operación; falta confirmar el monto |
| ¿Es nuestro problema? | VERDE | Piden reducir combustible e incidentes: es exactamente lo que hacemos. Ya probaron un GPS genérico en 2024 sin alertas y nadie lo miraba: sirve para la hipótesis |
| Convocatoria abierta | No aplica | Llegó directo por innovación; el decisor no queda al final de un proceso |
| Lo que mira el comité | AMARILLO | Fit con su meta de costo por km y 22 clientes de transporte como evidencia; falta mostrar cómo bajamos el rechazo de los choferes |

**Veredicto: AMARILLO.** No arrancar hasta tener 30 minutos con el gerente de logística. Seis
meses gratis es riesgo de purgatorio: contrapropuesta de 6 semanas.

## Mapa de quién decide

| Rol | Persona | Su mini problema | Qué necesita ver |
|---|---|---|---|
| Decide y paga | Gerente de logística | Meta de costo por km | -X% de litros por 100 km en su flota, en pesos |
| Influye | Jefa de innovación | Mostrar pilotos que escalan | Un piloto con fecha de decisión |
| Implementa | Jefe de flota Santiago | No perder camiones en la instalación | Instalación de noche, sin parar rutas |
| Usa | 20 choferes | Que no los vigilen para castigar | Alertas de coaching, no de sanción |
| TI y seguridad | Jefe de TI | Datos en la nube de un tercero | Checklist técnico y contrato de datos |
| Compras | [PENDIENTE] | Proveedor registrado | Carpeta de proveedor lista |

## Canvas del piloto

| Bloque | Contenido |
|---|---|
| Empresa | Grupo Andino Alimentos, unidad de logística, Chile |
| Startup | FlotaSegura |
| Desafío | Bajar el costo de combustible por km de la flota de reparto |
| Hipótesis | Creemos que las alertas de conducción de FlotaSegura permitirán reducir al menos 6% los litros por 100 km en 20 camiones de reparto en 6 semanas |
| Métricas | Litros por 100 km; frenadas y aceleraciones bruscas cada 100 km; minutos de motor en ralentí por día |
| Metas | Menos de 4%: se cierra. Entre 4 y 6%: se repite una vez, con fecha de cierre. Entre 6 y 9%: 60 camiones. Más de 9%: 240 camiones en 90 días [SUPUESTO: rangos a acordar con el gerente sobre la línea base] |
| ¿Qué? | Telemetría y alertas de conducción con coaching semanal |
| ¿Cómo? | Instalación nocturna en 20 camiones; 1 semana de línea base sin alertas; 5 semanas con alertas y coaching |
| ¿Con quién? | Jefe de flota Santiago, 20 choferes, jefa de innovación, FlotaSegura |
| ¿Cuántos? | 20 de 240 camiones, 2 centros de distribución |
| ¿Cuándo? | 6 semanas; revisión en la semana 3; decisión el 15 de [mes] |
| **¿Y si funciona?** | Entre 6 y 9%, 60 camiones; más de 9%, despliegue en 240 camiones en Chile en 90 días; decide el gerente de logística con presupuesto de operación del próximo trimestre; suscripción anual por camión; requiere integración con su sistema de rutas y aprobación de TI. Después, Perú y Colombia |

## Supuestos que pueden matar el piloto

- Que los choferes rechacen las alertas (deseabilidad).
- Que la línea base de combustible no exista a nivel de camión (factibilidad).
- Que el ahorro no cubra el costo por camión (viabilidad).

## Economía del piloto

| Concepto | Monto |
|---|---|
| Equipos (20 dispositivos, recuperables) | USD 2.400 |
| Instalación nocturna | USD 1.200 |
| Customer success dedicado, 6 semanas, no cubierto | USD 3.000 |
| **Costo incremental del piloto** | **USD 6.600** |

- **Propuesta:** dos opciones. (a) Piloto pagado USD 6.600 y suscripción de USD 38 por camión
  al mes. (b) Piloto gratis y suscripción de USD 44 por camión al mes durante el primer año.
- **Punto de equilibrio:** con 20 camiones que gastan [SUPUESTO: USD 1.900] de combustible al
  mes cada uno, para que el ahorro de las 5 semanas activas cubra los USD 6.600 haría falta
  ~15%. Al 6% (USD 2.280 al mes), el piloto pagado se recupera en 3 meses.
- **Payback del contrato completo:** a USD 38 por camión contra USD 114 de ahorro por camión
  al mes, el cliente recupera la suscripción desde el primer mes.

## Checklist de negociación

| Punto | Estado |
|---|---|
| Hipótesis, métrica y rangos | Pendiente: validar rangos con el gerente |
| Quién decide y cuándo | Pendiente: gerente de logística, fecha a fijar |
| Forma y precio del contrato si funciona | Propuesto: suscripción anual por camión |
| ¿Licitación después? | Pendiente: preguntar si el monto anual la exige |
| Compras sabe del piloto | No |
| Datos: dueño, acceso, retención, borrado | Pendiente: datos de ruta del cliente, telemetría nuestra; borrado a 90 días si no hay contrato |
| Propiedad intelectual | Acordado: no hay desarrollo a medida |
| Confidencialidad | NDA firmado |
| Uso de logo y caso | Pendiente: pedir caso anónimo si no hay permiso de marca |
| Checklist técnico a TI | Enviar esta semana |

## Lámina de piloto

**"Así bajaríamos su costo por km, y así lo probaríamos con ustedes en 6 semanas."**
Su problema: combustible +18% en el año. Hipótesis: -6% de litros por 100 km. Experimento:
20 camiones, 2 centros de distribución, 1 semana de línea base. Si funciona: hasta 240
camiones en 90 días, después Perú y Colombia.

## Métricas del founder

| Métrica | Hoy |
|---|---|
| Pilotos que terminan en contrato | 3 de 5 |
| Tiempo desde el inicio del piloto hasta la firma | 4,5 meses en promedio |
| Pilotos con decisor y presupuesto el día 1 | 2 de 5 |

## Próximos Pasos

- Pedile hoy a la jefa de innovación 30 minutos con el gerente de logística esta semana.
- Mandá el canvas con la fila "¿Y si funciona?" y la contrapropuesta de 6 semanas antes de
  esa reunión.
- Pedí los litros por camión de las últimas 8 semanas: sin línea base no hay meta.
- Mandá el checklist técnico a TI el viernes.
