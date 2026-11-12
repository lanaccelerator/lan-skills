# Brand Guidebook: filled example

Hypothetical: RutaFría, IoT sensors and SaaS that monitor the cold chain for food distributors
in Paraguay and Bolivia. Seed, USD 14K MRR, 31 clients. LAN rebuilt its pitch deck as a
claude.ai Slides artifact after the feedback session. The founder shared the artifact link,
the PDF, the website and a Drive folder called "Marca".

All contrast ratios below were computed with the WCAG 2.2 formula in
references/brand-method.md.

---

## Qué leí

| Fuente | Qué saqué |
|---|---|
| Deck rehecho por LAN (artifact + PDF, 14 láminas) | Paleta de 5 colores con roles, Archivo + Inter, portada oscura, números héroe en naranja, fotos reales de cámaras de frío |
| PPTX del deck | Solo Arial (export con fuentes básicas): no se usó para tipografía |
| rutafria.com.py (home, precios, contacto + 2 hojas CSS) | 9 colores, Gotham (licencia web del theme), botones naranjas con texto blanco, copy en voseo |
| Drive "Marca" | logo-horizontal.svg (original), simbolo-512.png, logo-blanco.png, 23 fotos de clientes y equipo |
| 3 propuestas enviadas (PDF) | Cada una con otra tipografía y otro azul: no hay plantilla |

Preguntas hechas (una tanda, 4 preguntas): si el naranja de la web es más nuevo que el del
deck (no, se fue corriendo), si pagan Gotham (venía con el theme, no hay licencia propia),
si existe el logo blanco en SVG (no), quién puede aprobar fotos de clientes (el COO).

## Conflictos y cómo se resolvieron

| Token | Deck LAN | Web | Drive | Gana | Por qué |
|---|---|---|---|---|---|
| Primario | #0A7E8C | #0B8A99 | (en el SVG) #0A7E8C | #0A7E8C | Mismo tono corrido; el del deck y el del logo original coinciden y pasa 4.8:1 sobre blanco. El de la web da 4.11:1 y no pasa texto |
| Acento | #FF6B35 | #FF7A45 | | #FF6B35 | Mismo naranja corrido; gana el deck |
| Tinta | #0F1B2D | #1E2A3B | | #0F1B2D | Tinta del deck, 17.28:1 sobre blanco |
| Gris de texto | #5B6675 | #8A94A3 | | #5B6675 | El de la web da 3.07:1: no pasa texto. El del deck da 5.83:1 |
| Tipografía títulos | Archivo 800 | Gotham Bold | | Archivo | Google Fonts, gratis en Slides, Docs y web; Gotham no tiene licencia propia |
| Tipografía texto | Inter 400/500 | Gotham Book | | Inter | Mismo motivo |
| Botón principal | (no aplica) | naranja con texto blanco | | Primario con texto blanco | Blanco sobre #FF6B35 da 2.84:1. Blanco sobre #0A7E8C da 4.8:1 |
| Logo | PNG blanco | PNG 512 | SVG horizontal | SVG del Drive | El vector original manda en geometría |

## Sistema de marca

**Esencia.** RutaFría avisa antes de que se pierda la mercadería. La marca se ve como un
instrumento: precisa, tranquila, con un solo color de alerta.

### Paleta

| Rol | Token | Hex | Uso |
|---|---|---|---|
| Tinta | `--ink` | #0F1B2D | Texto, fondos oscuros, portadas |
| Papel | `--paper` | #FFFFFF | Fondo claro principal |
| Superficie | `--surface` | #F4F6F8 | Tarjetas, secciones alternas |
| Primario | `--primary` | #0A7E8C | Logo, botones, links, rellenos |
| Primario sobre oscuro | `--primary-on-dark` | #7FD1DB | Texto y links sobre tinta |
| Acento | `--accent` | #FF6B35 | La alerta o el número que importa. Solo relleno o texto grande sobre tinta |
| Acento para texto | `--accent-text` | #C2410C | Acento como texto sobre fondo claro |
| Texto secundario | `--muted` | #5B6675 | Bajadas, fuentes, pies de foto |
| Línea | `--line` | #D9DEE4 | Divisores (no bordes de inputs) |

Eliminado: el azul #1F4E9B de dos propuestas viejas (tercer color sin rol).

### Pares aprobados

| Texto | Fondo | Ratio | Aprobado para |
|---|---|---|---|
| #0F1B2D tinta | #FFFFFF papel | 17.28 | Todo |
| #0F1B2D tinta | #F4F6F8 superficie | 15.95 | Todo |
| #5B6675 secundario | #FFFFFF papel | 5.83 | Texto de cuerpo y fuentes |
| #5B6675 secundario | #F4F6F8 superficie | 5.38 | Texto de cuerpo y fuentes |
| #0A7E8C primario | #FFFFFF papel | 4.80 | Texto de cuerpo, links |
| #FFFFFF papel | #0A7E8C primario | 4.80 | Texto de botones |
| #FFFFFF papel | #0F1B2D tinta | 17.28 | Todo |
| #7FD1DB primario sobre oscuro | #0F1B2D tinta | 9.91 | Todo |
| #FF6B35 acento | #0F1B2D tinta | 6.10 | Números héroe, texto |
| #C2410C acento para texto | #FFFFFF papel | 5.18 | Texto de alerta |
| #0A7E8C primario | #0F1B2D tinta | 3.60 | Solo texto grande (24 px o más) e íconos |
| #FF6B35 acento | #FFFFFF papel | 2.84 | No aprobado como texto: solo relleno con texto tinta encima |

### Tipografía

| Familia | Origen | Pesos | Uso |
|---|---|---|---|
| Archivo | Google Fonts (OFL), latin-ext | 700, 800 | Títulos y números |
| Inter | Google Fonts (OFL), latin-ext | 400, 500, 600 | Texto, tablas, etiquetas |
| Arial, Helvetica, sans-serif | Sistema | 400, 700 | Firma de mail y PPTX que viajan |

| Superficie | Título | Subtítulo | Cuerpo | Etiquetas y fuentes |
|---|---|---|---|---|
| Deck 1920 x 1080 | Archivo 800, 88 px | Archivo 700, 44 px | Inter 400, 30 px | Inter 500, 18 px |
| Números héroe | Archivo 800, 140 px, `--accent` sobre tinta o `--primary` sobre papel | | | |
| Propuestas y documentos A4 | Archivo 800, 30 pt | Archivo 700, 16 pt | Inter 400, 11 pt, interlineado 1.4 | Inter 400, 9 pt, `--muted` |
| Web | Archivo 800, clamp(2.5rem, 5vw, 4rem) | Archivo 700, 2rem | Inter 400, 1.0625rem (17 px), 1.55 | Inter 500, 0.875rem |
| Firma de mail | Arial 700, 14 px | | Arial 400, 13 px | Arial 400, 12 px |

### Logo

| Versión | Archivo | Estado |
|---|---|---|
| Horizontal color | logo-horizontal.svg | OK, master |
| Símbolo | simbolo-512.png | Solo PNG: [PENDIENTE: SVG del símbolo] |
| Horizontal blanco | logo-blanco.png | Solo PNG: [PENDIENTE: SVG blanco] |
| Apilado | No existe | [PENDIENTE: pedir al diseñador; no se dibuja con IA] |

- **Espacio libre:** la altura de la R de "RutaFría" en los cuatro lados.
- **Tamaño mínimo:** horizontal 96 px de ancho en pantalla, 25 mm en impresión; símbolo 24
  px, 8 mm.
- **Fondos:** color sobre papel y superficie; blanco sobre tinta y sobre primario; sobre foto
  solo en zona calma o con placa tinta.
- **No:** estirar, rotar, cambiar colores fuera de la paleta, sombras o brillos, contornos,
  ponerlo en una pastilla, rearmar la palabra en otra tipografía.

### Layout, imágenes e íconos

- Deck: márgenes de 80 px, grilla de 12 columnas, logo y sección arriba, número de página
  solo abajo.
- Documentos: márgenes de 22 mm, logo arriba a la izquierda, número de página abajo.
- Web: contenedor de 1200 px, escala de espacios 8-16-24-32-48-64-96.
- Fotos: reales, de cámaras de frío, camiones y clientes, en color con un tono frío leve;
  recorte ajustado. Capturas reales del panel. Nada generado como decoración.
- Íconos: Lucide, trazo 1.75, en tinta o primario. Uno por concepto, no uno por viñeta.

### Tono

| Rasgo | Así sí | Así no |
|---|---|---|
| Concreto | "Te avisamos a los 2 °C de desvío, no cuando ya se perdió la carga." | "Soluciones innovadoras para tu cadena de frío." |
| Tranquilo | "Tu cámara 3 subió a 6 °C. Revisá la puerta." | "¡ALERTA CRÍTICA!" |
| Voseo | "Monitoreá", "mirá", "configurá" | "Monitorea", "monitoree" |
| Números antes que adjetivos | "31 distribuidoras, 0 lotes perdidos en 2026" | "Líderes del mercado" |

Palabras propias: desvío, cámara, lote, carga, aviso. Evitar: disruptivo, solución integral,
potenciado por IA. En español: "la IA".

## Aplicación por superficie

Resumen; las reglas completas están en la página del brain "Marca de RutaFría: aplicación por
superficie".

| Superficie | Regla clave |
|---|---|
| Portada de deck | Fondo tinta, logo blanco arriba a la izquierda, claim en Archivo 800 88 px blanco, una foto real a sangre en la mitad derecha |
| Lámina de sección | Fondo primario, título blanco, nada más |
| Lámina de contenido | Fondo papel, título-claim en tinta, máximo 25 palabras, acento solo en el dato clave |
| Lámina de números | Fondo tinta, 1 a 3 números héroe en naranja 140 px, etiqueta Inter 30 px en #7FD1DB |
| Lámina de cita | Fondo superficie, cita en Archivo 700 44 px, foto, nombre, cargo y logo real del cliente |
| Propuesta comercial | Portada tinta con logo del cliente y de RutaFría; resumen ejecutivo en 1 página; tabla de precios con encabezado tinta y filas alternas superficie; próximos pasos con fechas; PDF A4 |
| One-pager y documentos | Estilos de párrafo: Título Archivo 800 30 pt, H1 Archivo 700 16 pt, H2 Archivo 700 13 pt, Cuerpo Inter 11 pt, Pie Inter 9 pt `--muted` |
| Web | Botón principal primario con texto blanco; botón secundario borde tinta; el naranja nunca es botón con texto blanco |
| Firma de mail | Tabla HTML, Arial, logo PNG a 2x de 160 px de ancho mostrado a 80 px |

## Bloque CSS y tokens JSON

```css
:root {
  --ink: #0F1B2D;
  --paper: #FFFFFF;
  --surface: #F4F6F8;
  --primary: #0A7E8C;
  --primary-on-dark: #7FD1DB;
  --accent: #FF6B35;
  --accent-text: #C2410C;
  --muted: #5B6675;
  --line: #D9DEE4;
  --font-display: "Archivo", Arial, sans-serif;
  --font-text: "Inter", Arial, sans-serif;
  --text-body: 1.0625rem;
  --text-small: 0.875rem;
  --h2: 2rem;
  --h1: clamp(2.5rem, 5vw, 4rem);
  --space-1: 8px; --space-2: 16px; --space-3: 24px; --space-4: 32px;
  --space-5: 48px; --space-6: 64px; --space-7: 96px;
  --container: 1200px;
}
```

```json
{
  "color": {
    "ink": { "$type": "color", "$value": "#0F1B2D" },
    "paper": { "$type": "color", "$value": "#FFFFFF" },
    "surface": { "$type": "color", "$value": "#F4F6F8" },
    "primary": { "$type": "color", "$value": "#0A7E8C" },
    "primary-on-dark": { "$type": "color", "$value": "#7FD1DB" },
    "accent": { "$type": "color", "$value": "#FF6B35" },
    "accent-text": { "$type": "color", "$value": "#C2410C" },
    "muted": { "$type": "color", "$value": "#5B6675" },
    "line": { "$type": "color", "$value": "#D9DEE4" }
  },
  "font": {
    "display": { "$type": "fontFamily", "$value": ["Archivo", "Arial", "sans-serif"] },
    "text": { "$type": "fontFamily", "$value": ["Inter", "Arial", "sans-serif"] }
  }
}
```

## Firma de mail

```html
<table cellpadding="0" cellspacing="0" style="font-family:Arial,Helvetica,sans-serif;color:#0F1B2D;max-width:560px">
  <tr>
    <td style="padding-right:16px;border-right:1px solid #D9DEE4">
      <img src="https://rutafria.com.py/firma/logo@2x.png" width="80" alt="RutaFría" style="display:block">
    </td>
    <td style="padding-left:16px">
      <div style="font-size:14px;font-weight:700">[Nombre Apellido]</div>
      <div style="font-size:13px;color:#5B6675">[Cargo], RutaFría</div>
      <div style="font-size:12px;padding-top:6px"><a href="https://rutafria.com.py" style="color:#0A7E8C;text-decoration:none">rutafria.com.py</a> · [+595 ...]</div>
    </td>
  </tr>
</table>
```

Texto plano: `[Nombre Apellido] | [Cargo], RutaFría | rutafria.com.py | [+595 ...]`

## Skill de marca

Página `rutafria-brand` (type skill) escrita en el brain:

> **Descripción:** Cargar antes de producir cualquier pieza visual de RutaFría: deck,
> propuesta, documento, web, mail, post.
>
> 1. Leé [[Marca de RutaFría]] y [[Marca de RutaFría: aplicación por superficie]] antes de
>    empezar.
> 2. Solo estos colores: tinta #0F1B2D, papel #FFFFFF, superficie #F4F6F8, primario #0A7E8C,
>    primario sobre oscuro #7FD1DB, acento #FF6B35, acento para texto #C2410C, secundario
>    #5B6675, línea #D9DEE4.
> 3. Un solo acento por pieza, en el dato que importa. Naranja nunca como texto sobre blanco.
> 4. Archivo para títulos y números, Inter para texto. Arial en mails y en PPTX que viajan.
> 5. Usá solo los pares de color de la tabla "Pares aprobados".
> 6. Logo desde los archivos del brain, con espacio libre de una R. Nunca redibujarlo.
> 7. Fotos reales del banco de RutaFría. Nada generado como decoración.
> 8. Voseo, frases cortas, números antes que adjetivos, "la IA".
> 9. Nada de la lista de AI slop: gradientes violeta, emojis, itálicas para énfasis, rayas largas.
> 10. Si la pieza necesita algo que la guía no resuelve, preguntá y marcalo [PENDIENTE].

## Pendiente de confirmar

1. SVG del símbolo y del logo blanco: pedir al diseñador original.
2. Versión apilada del logo: no existe; decidir si se encarga.
3. Retirar Gotham de la web (no hay licencia propia): confirmar con quien mantiene el sitio.
4. Fotos de clientes: el COO aprueba cuáles se pueden usar en materiales externos.

## Páginas escritas en el brain

| Página | Tipo | Acción |
|---|---|---|
| wiki/marketing/marca-rutafria.md | reference | Creada |
| wiki/marketing/marca-rutafria-aplicacion.md | reference | Creada |
| skills/rutafria-brand | skill | Creada |
| Assets: logo-horizontal.svg, simbolo-512.png, logo-blanco.png | asset | Subidos y citados en la página de marca |

Regla global ofrecida: "Toda pieza visual de RutaFría carga rutafria-brand primero". El
founder aprobó; agregada.

## Próximos Pasos

1. Pedile hoy al diseñador original el SVG del símbolo y del logo blanco.
2. Pegá el bloque CSS en la web esta semana: cambia el gris #8A94A3 por #5B6675 y el botón
   naranja por el primario.
3. Armá la plantilla de propuesta en Google Docs con los estilos de párrafo y usala en la
   próxima cotización.
4. Pedí a tu IA el próximo one-pager cargando rutafria-brand y compará con el deck: tienen que
   parecer la misma empresa.

## Fuentes

Deck RutaFría rehecho por LAN (artifact y PDF, 14 láminas); rutafria.com.py (home, precios,
contacto, 2 hojas CSS); Drive "Marca" (3 logos, 23 fotos); 3 propuestas PDF de 2026;
respuestas del founder a la tanda de 4 preguntas.
