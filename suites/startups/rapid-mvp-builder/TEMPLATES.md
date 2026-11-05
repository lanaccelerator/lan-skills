# Rapid MVP Builder: Output Template

ALWAYS use this exact template structure. Do not change section headings, table columns, or field order. Fill every [bracketed placeholder] with real analysis from the user's startup.

---

**Hypothetical example: WasteConnect**, marketplace B2B que conecta restaurantes con
recolectores certificados de residuos orgánicos y reciclables en São Paulo, Brasil. Etapa
pre-producto, founder no técnico con CTO cofundador, construcción con Claude Code, 6 semanas.
Todos los nombres, personas y números son ficticios.

---

# Plan de MVP: WasteConnect

**Fecha:** noviembre 2026
**Etapa:** pre-producto
**Modelo de negocio:** marketplace B2B
**Geografía:** Brasil (São Paulo); Paraguay como segundo mercado en 2027
**Capacidad técnica:** founder no técnico + CTO cofundador
**Herramienta de construcción:** Claude Code (el CTO dirige, el founder valida con usuarios)
**Plazo:** 6 semanas al MVP

---

## Hipótesis

Este MVP va a probar que los dueños de restaurantes de São Paulo (primeros 100: restaurantes
independientes de 10 a 50 empleados) van a pagar R$200/mes para bajar 40% su costo de
disposición de residuos si les damos una plataforma que los conecta con recolectores
certificados que confirman el retiro en menos de 2 horas.

---

## Priorización MoSCoW

| Feature | Categoría | Por qué | Dependencia | Tiempo estimado |
|---------|-----------|---------|-------------|-----------------|
| Alta y perfil de restaurante | Must-have | Sin oferta no hay marketplace | Ninguna | 1 día |
| Alta y perfil de recolector | Must-have | Sin demanda no hay marketplace | Ninguna | 1 día |
| Publicar pedido de retiro | Must-have | Unidad de transacción: sin esto la hipótesis no se puede probar | Perfil de restaurante | 2 días |
| Aceptación del retiro | Must-have | Cierra el ciclo: el recolector confirma y el restaurante recibe aviso | Pedido de retiro | 1 día |
| Pago con PIX | Must-have | Requisito LATAM: transferencia instantánea por QR, ~40% de las compras online en Brasil (EBANX 2025) | Aceptación | 3 días |
| Aviso de datos LGPD | Must-have | Requisito LATAM: la ley de datos de Brasil exige aviso en el registro, incluso en MVP | Alta | 0,5 días |
| Seguimiento de estado del retiro | Should-have | Baja los mensajes de soporte por WhatsApp; la hipótesis se puede probar sin esto | Aceptación | 2 días |
| Mensajería dentro de la app | Should-have | Mejora retención, pero WhatsApp alcanza para v1 | Pedido de retiro | 2 días |
| Calificaciones y reseñas | Could-have | Señal de confianza; no hace falta con los primeros 10 clientes | Ambos perfiles | 2 días |
| Dashboard de analítica | Won't-have | Antes de 50 usuarios activos son métricas de vanidad | N/A | Fuera de v1 |
| App nativa iOS/Android | Won't-have | La web funciona en el celular; la app suma semanas sin aprendizaje nuevo | N/A | Fuera de v1 |

**Total Must-have: ~8,5 días de construcción con agente (entra en 6 semanas con margen)**

---

## PRD de una página

Guardado en `docs/prd.md`. Cada sesión de Claude Code arranca con "leé docs/prd.md y
AGENTS.md antes de tocar código".

1. **Hipótesis:** la de arriba, textual.
2. **Primer usuario y recorrido:** dueño de restaurante independiente en Pinheiros.
   (1) se registra con Google, (2) acepta el aviso LGPD, (3) publica un retiro con tipo de
   residuo y franja horaria, (4) recibe la aceptación de un recolector, (5) paga con PIX,
   (6) confirma el retiro.
3. **Must-haves con prueba de aceptación:**
   - Publicar un retiro toma menos de 5 minutos desde el registro.
   - El recolector ve solo los pedidos de su zona y acepta con un clic.
   - El pago PIX de R$1 de prueba se acredita y el webhook se verifica en el servidor.
   - El aviso LGPD aparece antes de guardar cualquier dato.
4. **Won't-haves (no los construyas):** app nativa, dashboard de analítica, multi-idioma,
   chat propio, integraciones fuera del pago.
5. **Modelo de datos:** `restaurants`, `collectors`, `pickups`, `payments`. Cada restaurante
   lee solo sus pickups; cada recolector lee solo los de su zona (Row Level Security).
6. **Integraciones:** PagSeguro (PIX), Supabase Auth (Google), Resend (correo de aviso).
7. **Definición de listo:** el test end-to-end del recorrido completo pasa antes de cada deploy.

---

## Stack recomendado

| Capa | Tecnología | Por qué |
|------|-----------|---------|
| Frontend | Next.js (React) | Web que funciona en el celular, gran pool de talento en LATAM, el agente lo conoce bien |
| Backend | Next.js API Routes (Node.js) | Mismo repo que el frontend; alcanza para la carga inicial |
| Base de datos | Supabase (PostgreSQL) | Postgres administrado con auth, storage y Row Level Security |
| Pagos | PagSeguro (PIX por API) | PIX obligatorio en Brasil; PIX + boleto + tarjeta en una sola API |
| Auth | Supabase Auth | Google OAuth + email; nada de auth propio en MVP |
| Storage | Supabase Storage | Fotos de perfil y de residuos |
| Hosting | Vercel | Deploy automático en cada merge, plan gratis suficiente para MVP |

**¿Por qué no React Native o Flutter?** La web funciona en el celular y se publica en días.
La app nativa se come el plazo entero antes de validar una sola hipótesis. Construila
cuando tengas usuarios que pagan.

---

## Plan de construcción (6 semanas)

| Semana | Objetivo | Qué se publica | Cómo se valida |
|--------|----------|----------------|----------------|
| 1 | Modelo de datos + auth | Alta de restaurante y recolector, esquema, Supabase Auth, RLS en las 4 tablas | 3 usuarios de prueba se registran; test que prueba que el restaurante A no ve datos del B |
| 2 | Recorrido principal | Publicar retiro, aceptar retiro, avisos de estado | Una transacción completa entre el founder (como restaurante) y un recolector real |
| 3 | Pago + cumplimiento | PIX con PagSeguro, aviso LGPD, correo de aviso | Transacción real con PIX de R$1 |
| 4 | Should-haves + pulido | Seguimiento de estado, aviso por WhatsApp, UI móvil | 5 restaurantes reales se registran y publican al menos 1 retiro |
| 5 | Pruebas con usuarios | Recorrido completo con usuarios reales, casos borde, estados de error | 2 transacciones pagas entre restaurante y recolector que no se conocen |
| 6 | Preparar y lanzar | Landing, correos de onboarding, 10 llamadas a restaurantes | 10 invitados; al menos 3 confirman su primer retiro en la semana de lanzamiento |

---

## Cadencia y memoria del agente

- **Ritmo:** PRs chicos, varios por día, cada uno con su test y deploy automático al
  mergear. Referencia: LAN Brain publicó 116 PRs en 30 días (16 en un día) con una sola
  persona programando con Claude Code. Meta para WasteConnect: al menos 3 PRs mergeados
  por día hábil del CTO.
- **Memoria:** el agente lee `AGENTS.md` (menos de 100 líneas: stack, comandos, reglas de
  seguridad, dónde está cada doc), `docs/prd.md` y `docs/decisions/`. Cada PR que cambia
  un comportamiento actualiza el doc que lo describe en el mismo PR.
- **Por qué importa:** en el workflow-bench de LAN Brain (ago 2026, 165 corridas), docs
  curados vs archivos crudos dieron -67% tokens y -52% tiempo con al menos la misma
  calidad; un modelo más barato (Opus) con docs curados sacó 82,9/100 contra 79,6 del
  modelo tope (Fable) solo; arreglar 3 páginas de precios desactualizadas sumó +56 puntos
  en los 4 modelos probados.

---

## Checklist de seguridad día 1

- [ ] gitleaks como hook de pre-commit; ninguna clave en el repo, todas en variables de entorno
- [ ] Row Level Security en las 4 tablas + test de que un usuario no lee datos de otro
- [ ] Claves separadas para desarrollo y producción; el agente no tiene la clave de producción
- [ ] Trivy o `npm audit` en cada PR para dependencias con vulnerabilidades conocidas
- [ ] Webhook de PagSeguro verificado en el servidor, nunca confiar en el cliente
- [ ] Siguiente paso cuando el primer corporativo pida cuestionario de seguridad: `/security-compliance-starter`

---

## Checklist de lanzamiento

Criterios mínimos antes de decir que WasteConnect está "en vivo":

- [ ] Un restaurante se registra, arma su perfil y publica un retiro en menos de 5 minutos
- [ ] Un recolector se registra, ve los pedidos de su zona y acepta uno
- [ ] El pago PIX funciona (R$1 de prueba + una transacción real)
- [ ] Aviso de datos LGPD visible en el registro (requisito legal)
- [ ] Correo al restaurante cuando el recolector acepta
- [ ] Manejo básico de errores (validación de formularios, pago fallido)
- [ ] La web funciona en el celular, no solo en desktop
- [ ] Existen política de privacidad y términos de servicio (aunque sean simples)
- [ ] Checklist de seguridad día 1 completo
- [ ] El founder habló en persona con 5 restaurantes objetivo y confirmaron que lo usarían

---

## Contexto LATAM

**Brasil, obligatorio:**

- **PIX (Banco Central do Brasil):** obligatorio para cualquier producto en Brasil.
  Instantáneo 24/7 y ~40% de las compras online (EBANX Beyond Borders 2025). Integralo por
  PagSeguro o Mercado Pago, no directo con el Banco Central (exige licencia de institución
  financiera).
- **LGPD (Lei Geral de Proteção de Dados):** exige aviso de recolección de datos en el
  registro (qué datos y para qué). En MVP alcanza un checkbox con link a la política de
  privacidad. Multas de hasta 2% de la facturación en Brasil. Es requisito de lanzamiento.

**Paraguay, segundo mercado en 2027:**

- **Ley 7593 de Protección de Datos Personales:** promulgada el 27 de noviembre de 2025,
  con 2 años de gracia: exigible desde noviembre de 2027 aproximadamente (Ferrere). Si
  WasteConnect entra a Asunción en 2027, el aviso de consentimiento y la política de
  privacidad ya tienen que estar; construir el consentimiento en v1 cuesta menos que
  pedírselo después a toda la base. No es asesoramiento legal: confirmalo con un abogado
  local.

**Talento:** Node.js, React y PostgreSQL dominan en LATAM. Supabase baja el trabajo de
infraestructura en MVP. Evitá frameworks de nicho (Elixir, Rust) que traban contrataciones.

---

## Próximos Pasos

1. **Antes de escribir una línea de código:** hablá con 5 dueños de restaurantes de São
   Paulo esta semana. Preguntales cómo disponen hoy los residuos orgánicos, cuánto pagan,
   cuánto tiempo les toma y cuánto pagarían por un retiro en menos de 2 horas. Necesitás
   al menos 3 "sí, pagaría R$200/mes" antes de arrancar.
2. **Escribí el PRD hoy** y guardalo en `docs/prd.md`; el CTO arma `AGENTS.md` y el repo
   en 2 horas mientras vos hacés discovery.
3. **Pedí la cuenta de desarrollador de PagSeguro ya:** la aprobación tarda 2 a 3 días
   hábiles y puede trabar la semana 3.
4. **Instalá gitleaks como pre-commit antes del primer commit** y activá RLS en la primera
   migración, no en la semana 4.
5. **Redactá el aviso LGPD con un abogado** (honorario fijo, R$500 a 1.500) y pedile que lo
   deje compatible con la Ley 7593 de Paraguay para no reescribirlo en 2027.

---

## Sources

- Lean Startup: http://theleanstartup.com/
- MoSCoW Prioritization: https://www.productplan.com/glossary/moscow-prioritization/
- PIX: https://www.bcb.gov.br/en/financialstability/pix_en
- LGPD: https://www.gov.br/cidadania/pt-br/acesso-a-informacao/lgpd
- Paraguay Ley 7593 (Ferrere): https://www.ferrere.com/es/novedades/paraguay-adopta-su-ley-de-proteccion-de-datos-personales/
- LAN Brain workflow-bench (ago 2026)
- gitleaks: https://github.com/gitleaks/gitleaks
- YC Launch Now: https://www.ycombinator.com/library/4D-yc-s-essential-guide-to-go-to-market
