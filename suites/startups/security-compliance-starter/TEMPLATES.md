# security-compliance-starter: Output Template

ALWAYS use this exact template structure. Do not change section headings, table columns, or field order. Fill every [bracketed placeholder] with real analysis from the user's startup.

---

**Hypothetical example: Tesoria**, SaaS B2B de tesorería y flujo de caja para empresas
medianas, Seed, Asunción, con clientes en Paraguay y Brasil. 4 personas (CTO dueño de
seguridad), hosting en AWS us-east-1, procesa datos personales de empleados y proveedores
de sus clientes. Disparador: un banco mediano de Asunción (hipotético, "el Banco") mandó un
cuestionario de 180 preguntas y la checklist de su portal de proveedores para un piloto de
US$36K/año. Pipeline 12 meses: 5 corporativos. Todos los nombres y números son ficticios.

---

# Plan de seguridad y cumplimiento: Tesoria

**Fecha:** noviembre 2026
**Disparador:** cuestionario de seguridad del Banco (180 preguntas) + portal de proveedores
**Plazo pedido por el Banco:** 15 días hábiles
**Presupuesto de seguridad 2026-27:** US$8K

---

## 1. Resumen

Tesoria puede responder el cuestionario del Banco en 10 días sin certificarse: 131 de las
180 preguntas salen del banco de respuestas una vez cerrada la Etapa 0. Hay 2 problemas
que arreglar antes de responder: una clave de AWS en el historial de git y sin MFA en la
consola de AWS para 2 de 4 personas. Certificar ISO 27001 todavía no conviene: el pipeline
que la exige por escrito suma US$54K ponderado, por debajo de 3 veces el costo estimado
(US$90K). Revisar en mayo 2027.

---

## 2. Etapa 0: básicos de ingeniería

| Control | Estado hoy | Acción | Dueño | Fecha |
|---|---|---|---|---|
| Escaneo de secretos pre-commit | No existe; gitleaks encontró 1 clave AWS en el historial | Instalar gitleaks en pre-commit y CI; rotar la clave | CTO | 12/11 |
| Defensa contra prompt injection | El asistente de conciliación lee PDFs de facturas y puede crear pagos | Contenido de PDFs tratado como dato; crear pagos exige confirmación humana | CTO | 20/11 |
| Mínimo privilegio por agente y herramienta | Claude Code con clave de producción en `.env` local | Claves por entorno; sesiones de agente sin acceso a producción | CTO | 15/11 |
| Consentimiento explícito en MCP | 6 servidores MCP instalados, nadie sabe quién los aprobó | Lista blanca de 3 servidores; cada nuevo lo aprueba el CTO | CTO | 15/11 |
| Escaneo de dependencias | `npm audit` manual, a veces | Trivy + Semgrep en cada PR (planes gratis) | Dev | 19/11 |
| MFA en consolas | 2 de 4 sin MFA en AWS | MFA obligatorio en AWS, GitHub y Google Workspace | CTO | 11/11 |
| Backups con restore probado | Snapshots diarios, nunca restaurados | Simulacro de restore y resultado escrito | Dev | 22/11 |
| Panel adversarial antes de producción | No se hace | Obligatorio para cambios de permisos y pagos (ver ai-engineering-playbook) | CTO | Desde ya |

**Costo de la Etapa 0:** US$0 en herramientas, ~6 días-persona.

---

## 3. Banco de respuestas

Guardado en el brain en `security/answer-bank/` (8 páginas, una por dominio).

| Dominio | Preguntas en el banco | Sí | Parcial | No, planificado | Dueño |
|---|---|---|---|---|---|
| Gobierno | 5 | 2 | 1 | 2 | CEO |
| Control de acceso | 5 | 4 | 1 | 0 | CTO |
| Protección de datos | 6 | 4 | 1 | 1 | CTO |
| Infraestructura y aplicación | 6 | 4 | 1 | 1 | CTO |
| IA | 4 | 3 | 1 | 0 | CTO |
| Continuidad | 3 | 1 | 1 | 1 | Dev |
| Incidentes | 4 | 2 | 1 | 1 | CTO |
| Proveedores, privacidad y legal | 7 | 4 | 1 | 2 | CEO |

**Ejemplo de fila:**

| ID | Pregunta | Respuesta | Estado | Evidencia | Dueño | Revisado |
|---|---|---|---|---|---|---|
| DP-16 | ¿Usan datos del cliente para entrenar modelos de IA? | No. Tesoria usa modelos por API cuyos términos excluyen usar los datos para entrenamiento; los datos del cliente no se usan para entrenar ningún modelo propio ni de terceros. | Sí | Términos del proveedor (link), política de uso de IA v1.0 | CTO | 10/11/2026 |
| GO-05 | ¿Tienen SOC 2 o ISO 27001? | No todavía. Trabajamos sobre controles mapeados a ISO 27001 y evaluamos certificar en 2027 según demanda de clientes. Compartimos la carta de hoja de ruta y este cuestionario como evidencia actual. | No, planificado | Carta de hoja de ruta (link) | CEO | 10/11/2026 |

**Cuestionario del Banco:** 131 respuestas desde el banco, 37 `[REVISAR]` con el CTO, 12
`[SIN EVIDENCIA]` (8 se cierran con la Etapa 0, 4 quedan como "No, planificado"). Las 49
preguntas nuevas entran al banco el mismo día. CRM: cuestionario recibido 04/11, envío
objetivo 18/11.

---

## 4. Mapa de leyes

| País | Ley | Estado | Qué tiene Tesoria | Qué falta |
|---|---|---|---|---|
| Paraguay | Ley 7593/2025 de Protección de Datos Personales | Promulgada 27/11/2025, 2 años de gracia, exigible ~nov 2027 (Ferrere) | Política de privacidad genérica | Consentimiento en el alta, procedimiento de acceso y borrado, lista de subprocesadores |
| Brasil | LGPD | Vigente; multas de hasta 2% de la facturación en Brasil, tope R$50M por infracción | Nada específico | Base legal por uso, contacto de encargado (DPO), aviso en portugués, DPA |
| Transferencia internacional | AWS us-east-1 y proveedor de modelos en EE.UU. | Aplica en ambos países | Nada documentado | Registro de transferencias y cláusulas en el DPA |

No es asesoramiento legal: revisar con un abogado local en Asunción y otro en São Paulo.

---

## 5. Certificar o esperar

| Opción | Costo total | Tiempo | ¿La exige el pipeline? |
|---|---|---|---|
| ISO 27001 | US$15-50K año 1 (estimado Tesoria: US$30K) | 3-10 meses | 2 de 5 corporativos la piden "a futuro", ninguno por escrito |
| SOC 2 Type I | US$30-80K | 2-4 meses | Ninguno (sin compradores de EE.UU.) |
| SOC 2 Type II | US$60-160K | 6-14 meses | Ninguno |

**Regla:** certificar cuando el pipeline ponderado que la exige sea al menos 3 veces el costo.
ISO 27001: US$30K x 3 = US$90K necesarios. Hoy: 2 deals de US$45K al 60% = US$54K.
**Decisión: esperar.** Revisar en mayo 2027 o antes si un comprador la pone como condición
firmada.

**Mientras tanto:** controles mapeados a ISO 27001 en una planilla (gratis); evaluar Comp AI
(open source, AGPL) cuando arranque la preparación. Vanta, Drata (~US$10K/año un marco,
según founders), Secureframe y Sprinto: cotizar recién al decidir certificar.

---

## 6. Carpeta para portal de proveedores

Carpeta `Proveedores/Seguridad y legal` en Drive, espejada en el brain.

| Documento | Estado | Vence o se revisa | Dueño |
|---|---|---|---|
| Constancia de RUC | Listo | Anual | CEO |
| Certificado de cumplimiento tributario | Listo | 30/01/2027 | CEO |
| Estatutos y poder del representante legal | Listo | N/A | CEO |
| Constancia de cuenta bancaria | Listo | N/A | CEO |
| Póliza de responsabilidad civil | Listo | 15/03/2027 | CEO |
| Póliza de ciberseguro | Falta (cotizando) | N/A | CEO |
| Política de seguridad de la información | Borrador v0.9 | 30/11/2026 | CTO |
| Respuesta a incidentes (1 página) | Falta | 20/11/2026 | CTO |
| Continuidad y backups | Falta | 22/11/2026 | Dev |
| Política de uso de IA | Listo v1.0 | 10/05/2027 | CTO |
| Diagrama de arquitectura y flujo de datos | Listo | Con cada cambio de infraestructura | CTO |
| Lista de subprocesadores | Falta | 15/11/2026 | CTO |
| Reporte de escaneo de vulnerabilidades (Trivy + Semgrep) | Falta | Mensual | Dev |
| Política de privacidad y modelo de DPA | Borrador | 25/11/2026 | CEO + abogado |
| Carta de hoja de ruta ISO 27001 | Listo | 31/05/2027 | CEO |

---

## Próximos Pasos

1. Rotá hoy la clave de AWS que encontró gitleaks y activá MFA para las 4 personas antes del 11/11.
2. Cerrá la Etapa 0 (8 controles) antes del 22/11; 8 de las 12 respuestas `[SIN EVIDENCIA]` dependen de eso.
3. Revisá con el CTO las 37 respuestas `[REVISAR]` el jueves y enviá el cuestionario al Banco el 18/11 como borrador aprobado por la CEO; registralo en el CRM ese mismo día.
4. Pedí cotización de ciberseguro a 2 aseguradoras esta semana: el portal del Banco lo exige.
5. Agendá con un abogado local la revisión de privacidad para Ley 7593 y LGPD antes de fin de mes.

---

## Fuentes

- OWASP Top 10 for LLM Applications 2025: https://genai.owasp.org/llm-top-10/
- Vanta (cuestionarios, hasta ~44% de un ciclo de 45 días): https://www.vanta.com/collection/trust/security-questionnaires-explained
- Costos de certificación: getagency.com, scrut.io, consilien.com
- Ferrere, Ley 7593: https://www.ferrere.com/es/novedades/paraguay-adopta-su-ley-de-proteccion-de-datos-personales/
- Brain: `security/answer-bank/` (creada), `sales/deals/banco-piloto` (leída)

---

## Aviso legal

Este plan no es asesoramiento legal ni una opinión de auditoría. Las leyes, plazos y
costos cambian: confirmá con un abogado local y con al menos dos auditores antes de
comprometer dinero o firmar declaraciones de cumplimiento.
