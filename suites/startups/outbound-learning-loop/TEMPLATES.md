# outbound-learning-loop: Output Template

ALWAYS use this exact template structure. Do not change section headings, table columns,
or field order. Fill every [bracketed placeholder] with real analysis from the user's
startup.

Hypothetical example: CobroSimple, B2B SaaS that automates collections reminders and
payment follow-up from the client's ERP, Seed stage, Asunción, Paraguay. Founder: Valeria
(CEO). ICP: distributors and construction-materials companies in Paraguay with 500+ B2B
customers on credit. Brain contains: playbook, one measured case study (hypothetical
"Mayorista Guaraní": days to collect from 58 to 41 in 4 months), suppression list, no
previous outbound learning pages. All companies, people and numbers are fictional.

---

## 1. Resumen del lote

| Campo | Valor |
|---|---|
| Lote | 1 (19/10 al 23/10/2026) |
| Cuentas | 35 (20 distribuidoras, 15 constructoras), de directorios de UIP y CAPACO y LinkedIn a mano |
| Destinatarios | 128: decisor 35, champion 35, usuario 30, IT 28 (en este producto el decisor es el Gerente de Administración y Finanzas, así que decisor y finanzas son el mismo rol) |
| Canales | Email 98 (decisor, champion, IT); LinkedIn 30 (usuarios). WhatsApp: ninguno, nadie dio opt-in todavía |
| Variable a probar | Asunto. A: "pregunta sobre cobranzas en [empresa]". B: "[empresa]: días de cobro". Mitad y mitad por cuenta |
| Fijo | Apertura con el "por qué ahora", caso Mayorista Guaraní, una pregunta, línea de baja |
| Dominio de envío | cobrosimple-mail.com (separado del principal), SPF, DKIM y DMARC OK, 3 semanas de calentamiento |
| Excluidos | 4 clientes actuales, 2 deals abiertos, 1 contacto en la lista de supresión |
| En paralelo (warm) | 3 super whos (gerente de un gremio, contador con 200 pymes, consultor de crédito): guion de `/sales-playbook-generator` |

---

## 2. Mapa de roles de la cuenta (ejemplo completo: 1 de 35 cuentas)

Cuenta: Importadora del Este S.A. (hypothetical), distribuidora de repuestos, 3 sucursales, Ciudad del Este y Asunción.

| Cuenta | Rol | Nombre y cargo | Por qué ahora | Canal | Día |
|---|---|---|---|---|---|
| Importadora del Este | Champion | Sofía Acosta, Jefa de Créditos y Cobranzas | Publicó una búsqueda de "analista de cobranzas" para las sucursales nuevas (LinkedIn, 10/2026) | Email | 1 |
| Importadora del Este | Usuario | Rodrigo Ortiz, Analista de Cobranzas | Arma la lista de llamadas de cada mañana (su perfil público lo describe) | LinkedIn | 2 |
| Importadora del Este | Decisor (y finanzas) | Mónica Benítez, Gerente de Administración y Finanzas | Dos sucursales nuevas en 2026 (sitio web, noticias): más capital de trabajo en la calle | Email | 3 |
| Importadora del Este | IT | Hugo Villalba, Jefe de Sistemas | La conexión lee el reporte de saldos del ERP | Email | 6 |

Calendario coordinado de la cuenta (dueña: Valeria):

| Día | Para | Toque |
|---|---|---|
| 1 | Sofía | Email inicial |
| 2 | Rodrigo | Nota de conexión en LinkedIn |
| 3 | Mónica | Email inicial, menciona a Sofía |
| 6 | Hugo | Email inicial, solo si nadie respondió negativo |
| 8 | Sofía | Seguimiento con el caso en una página |
| 10 | Mónica | Seguimiento con el cálculo de capital de trabajo |
| 14 | Sofía | Último toque, puerta abierta |

Regla: cualquier respuesta positiva frena toda la cuenta 48 horas; nunca dos personas de la cuenta el mismo día.

---

## 3. Borradores por rol (no enviados)

**Champion: Sofía Acosta (email, día 1, asunto B)**
```
Asunto: importadora del este: días de cobro

Hola Sofía,

Vi que Importadora del Este está buscando un analista de cobranzas para las sucursales
nuevas. En un mayorista de Asunción con 1.400 clientes bajamos los días de cobro de 58 a 41
en 4 meses, sin sumar gente: los recordatorios salen solos desde el ERP y vos ves quién
prometió pagar y cuándo.

¿Te sirve que te muestre en 20 minutos cómo se vería con tu cartera?

Valeria
CEO, CobroSimple | Asunción

Si no es tema para vos, respondé "no" y no te vuelvo a escribir.
```

**Usuario: Rodrigo Ortiz (nota de conexión en LinkedIn, día 2)**
```
Hola Rodrigo, vi que llevás la cobranza de Importadora del Este. Trabajo con analistas que
dejaron de armar a mano la lista de llamadas de cada mañana. ¿Conectamos?
```

**Decisor: Mónica Benítez (email, día 3, asunto B)**
```
Asunto: importadora del este: días de cobro

Hola Mónica,

Una pregunta concreta: ¿cuántos días tarda hoy Importadora del Este en cobrar una factura?
En un mayorista de tamaño parecido los bajamos de 58 a 41 en 4 meses, lo que liberó capital
de trabajo equivalente a unas dos semanas de ventas.

Le escribí también a Sofía, de Créditos y Cobranzas, por la parte operativa.

Si te interesa, te mando una página con el cálculo para tu cartera.

Valeria
CEO, CobroSimple | Asunción

Si no es tema para vos, respondé "no" y no te vuelvo a escribir.
```

**IT: Hugo Villalba (email, día 6, asunto B)**
```
Asunto: importadora del este: días de cobro, sin proyecto de sistemas

Hola Hugo,

Te escribo porque Cobranzas podría querer probar CobroSimple, y prefiero que lo sepas antes
que después. Leemos el reporte de antigüedad de saldos que el ERP ya exporta (archivo o
vista de solo lectura) y no escribimos nada en el ERP. La conexión suele llevar medio día de
sistemas.

¿Qué te pediría ver en seguridad antes de una prueba? Tengo una nota de una página sobre cómo
manejamos los datos.

Valeria
CEO, CobroSimple | Asunción

Si no es tema para vos, respondé "no" y no te vuelvo a escribir.
```

---

## 4. Checklist de revisión del founder (primeros 20 borradores)

| Chequeo | Resultado |
|---|---|
| Nombre y cargo correctos, tal cual el perfil público | 1 cargo desactualizado, corregido |
| El "por qué ahora" es verdadero y tiene fuente | OK en 20 de 20 |
| Una sola pregunta por mensaje | OK |
| Línea de baja en cada email | OK |
| Ningún número inventado; el caso citado existe en el brain | OK (Mayorista Guaraní, `cases/mayorista-guarani`) |
| Nunca dos roles de la misma cuenta el mismo día | OK |
| Registro local (voseo en Paraguay), sin adjuntos, máximo un link | OK |
| Apertura específica, no de plantilla | 2 aperturas genéricas, reescritas |

Valeria corrigió 3 de 20. Las correcciones se aplicaron a los 108 restantes antes de enviar.

---

## 5. Registro de respuestas (lote 1, 19/10 al 29/10)

| Fecha | Cuenta | Rol | Canal | Clase | Respuesta (sus palabras) | Borrador de respuesta | CRM actualizado |
|---|---|---|---|---|---|---|---|
| 19/10 | Importadora del Este | Champion | Email | Positiva | "Justo estamos con eso. ¿El jueves podés?" | Jueves 22/10 10:00 o 15:00; cuenta frenada 48 h | Sí, 19/10: reunión agendada |
| 20/10 | Ferretería Central (hyp.) | Champion | Email | Derivación | "Eso lo ve Marta, de Finanzas" | Gracias + pedido de permiso para mencionarla; borrador a Marta citando la derivación | Sí, 20/10: Marta agregada como decisor |
| 20/10 | Constructora Ñu (hyp.) | Decisor | Email | Objeción | "Ya tenemos el módulo de cobranzas del ERP" | Una respuesta Challenger: "¿qué parte de la cobranza sigue siendo manual con el módulo?" + caso | Sí, 20/10 |
| 21/10 | Distribuidora Lago (hyp.) | Usuario | LinkedIn | Positiva | "Me interesa, pero tendría que verlo mi jefa" | Pedido de intro a la jefa de cobranzas con un resumen para reenviar | Sí, 21/10 |
| 21/10 | Mayorista Sur (hyp.) | Champion | Email | Ahora no | "Escribime en febrero, estamos con el cierre" | Acuse corto; retoque agendado 02/02/2027 | Sí, 21/10: retoque 02/02 |
| 22/10 | Corralón Norte (hyp.) | IT | Email | Baja | "Por favor no me escriban" | Confirmación de una línea; lista de supresión en todos los canales | Sí, 22/10: no contactar |
| 22/10 | Distribuidora Andina (hyp.) | Champion | Email | Positiva | "Mandame la página con el cálculo" | Página + dos horarios | Sí, 22/10; reunión agendada para el 26/10 |
| 23/10 | Repuestos Itá (hyp.) | Decisor | Email | Objeción | "No hay presupuesto hasta 2027" | Una respuesta: costo de hoy en días de cobro; propuesta de piloto chico | Sí, 23/10 |
| 23/10 | Distribuidora Lago (hyp.) | Champion | Email | Positiva | "Rodrigo me contó, veámoslo" | Martes 27/10 11:00 o miércoles 28/10 9:00 | Sí, 23/10: reunión agendada |
| 26/10 | Constructora Yby (hyp.) | Champion | Email | Ahora no | "Después de la licitación de noviembre" | Retoque agendado 01/12 | Sí, 26/10 |
| 27/10 | Distribuidora Ka'a (hyp.) | Usuario | LinkedIn | Derivación | "Hablá con Jorge, el gerente" | Borrador a Jorge citando a quien derivó | Sí, 27/10 |
| 28/10 | Bebidas del Chaco (hyp.) | Champion | Email | Positiva | "Sí, el lunes" | Lunes 02/11 10:00 | Sí, 28/10: reunión agendada |
| 29/10 | Constructora Arasá (hyp.) | Usuario | LinkedIn | Objeción | "Lo hacemos con planillas y anda bien" | Pregunta: ¿cuántas horas por semana lleva? Sin insistir después | Sí, 29/10 |

Totales: 13 respuestas humanas de 124 entregados (4 rebotes, eliminados el mismo día). 5 positivas, 3 objeciones, 2 derivaciones, 2 ahora no, 1 baja. 4 reuniones agendadas. 2 respuestas automáticas de vacaciones registradas como eventos técnicos.

---

## 6. Página de aprendizaje semanal (borrador para el brain)

Ruta: `sales/learnings/outbound/2026-W44` (viernes 30/10/2026). Va al brain de la empresa, no a la skill.

```
Aprendizaje outbound, semana 44: lote 1 (35 cuentas, 124 entregados)

Qué probamos: el asunto. A "pregunta sobre cobranzas en [empresa]" contra B "[empresa]: días de cobro".

Resultados (sobre entregados)
| Corte | Entregados | Respuestas | Tasa | Positivas |
|---|---|---|---|---|
| Asunto A (solo email) | 47 | 3 | 6,4% | 1 |
| Asunto B (solo email) | 47 | 7 | 14,9% | 3 |
| Decisor | 34 | 2 | 5,9% | 0 |
| Champion | 34 | 7 | 20,6% | 4 |
| Usuario (LinkedIn) | 30 | 3 | 10,0% | 1 |
| IT | 26 | 1 | 3,8% | 0 |
| Distribuidoras | 70 | 9 | 12,9% | 5 |
| Constructoras | 54 | 4 | 7,4% | 0 |
| Total | 124 | 13 | 10,5% | 5 |

Cuentas con al menos una respuesta: 12 de 35 (34,3%). Reuniones: 4 (11,4% de las cuentas).
Bajas: 1 (0,8%). Warm en paralelo: 6 intros de 3 super whos, 4 respuestas, 2 reuniones (warm, no comparable con frío).

Lectura honesta
- El asunto B va adelante, pero con 47 por variante y 10 respuestas es una dirección, no un ganador. Lo confirmamos en el lote 2.
- Los champions responden 3,5 veces más que los decisores. Los 2 decisores que respondieron lo hicieron con una objeción; las 5 positivas llegaron por champions y usuarios (en Distribuidora Lago, el usuario llevó a la jefa).
- Constructoras: 4 respuestas de 54, cero positivas. "Ya tenemos el módulo del ERP" apareció 2 veces.
- Lo que dijeron con sus palabras: "justo estamos con eso" (búsqueda de analista publicada), "mandame la página con el cálculo".

Decisión para el lote 2 (02/11)
- Asunto B en todo el lote.
- Constructoras pausadas: antes, 5 llamadas para confirmar si el dolor existe en ese segmento.
- Orden de roles: champion primero; decisor recién el día 5 o después de que el champion responda.
- IT solo después de una respuesta positiva del champion.

Próxima prueba: la apertura. "Búsqueda de analista publicada" contra "sucursal nueva".
```

---

## 7. Próximos Pasos

1. Respondé hoy los borradores de las 2 derivaciones (Marta y Jorge): son los toques con más probabilidad de reunión del lote.
2. Aprobá la página de aprendizaje de la semana 44 para que quede en el brain antes de armar el lote 2.
3. Armá el lote 2 con 30 distribuidoras, asunto B y champion primero; revisá los primeros 20 borradores el lunes 02/11 antes de enviar.
4. Hacé 5 llamadas a constructoras esta semana para decidir si el segmento vuelve al lote 3.
5. Pedile al gerente de gremio (super who) la intro a los 3 decisores que no respondieron en frío.
