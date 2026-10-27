# Valuation Benchmark Card: Output Template

ALWAYS use this exact structure. Every section is required. Write it in the founder's language
(Spanish by default for LATAM founders). Fill every section with real analysis, no placeholders.

---

## Example Output: CobraYa (hypothetical)

*Filled example for CobraYa, a hypothetical B2B SaaS for collections automation in Colombia,
raising a USD 1.5M seed. The founder wants a USD 15M post-money. All company numbers are
invented for illustration; every benchmark carries its real source.*

---

# Benchmark de valuación: CobraYa

**Etapa:** Seed · **Ronda:** USD 1,5M · **Geografía:** Colombia (LATAM), clientes en Colombia y Perú
**Fecha:** octubre 2026 · **Datos de mercado:** snapshot del 23/10/2026 (fetch en vivo falló) `[ASSUMPTION]`

## 1. Benchmark card

| Métrica | CobraYa | Benchmark de la etapa | Veredicto | Fuente |
|---|---|---|---|---|
| ARR | USD 600K | Seed: ARR no publicado por Carta; mercado lo ubica bajo USD 1M (directional) | En rango | Directional |
| Crecimiento | 9% MoM (2,8x YoY) | 5-7% semanal es bueno en YC; 10% mensual era la vara anterior | Debajo de la vara top | Paul Graham, 2012; lectura LAN, 2026 |
| Net revenue retention | 104% | Mediana SaaS pública 110% | Debajo | Clouded Judgement, 23/10/2026 |
| Margen bruto | 78% | Bessemer 70% a USD 1-10M ARR; SaaS pública 76% | Arriba | Bessemer 2021; Clouded Judgement 2026 |
| Burn multiple | 1,4x | 1-1,5x "great"; ~3x esperable en seed | Fuerte | David Sacks, 2020 |
| Ronda | USD 1,5M | Mediana seed USD 4,1M (US, software) | Chica para US, normal para LATAM | Carta, 10/07/2026 |
| Dilución pedida | 10% (1,5 / 15) | 18% mediana seed | Muy baja: precio alto | Carta, 10/07/2026 |

## 2. Valuación por método

| Método | Post-money implícito | Cuenta | Supuesto clave |
|---|---|---|---|
| Dilución | USD 6M - 10M | 1,5 / 25% a 1,5 / 15% | Dilución sana 15-25% |
| Múltiplo de ingresos ajustado | USD 6,3M - 8,8M | 600K x 21,0x x (1 - 50% a 30%) | Bucket alto crecimiento; descuento privado 30-50% (directional) |
| VC method | USD 8,2M | 1,5M x 10x = 15M al exit; exit USD 150M con ~55% retenido: compra 18% | Exit por M&A; 3 rondas más; 10x objetivo |
| Scorecard | USD 10,8M (pre 9,3M) | USD 8M x 1,16 + 1,5M | Promedio seed LATAM USD 8M pre (LAVCA 2025) |
| Rondas comparables | USD 6M - 9M | 2-3 seeds SaaS LATAM 2026 con fuente | Ver tabla de comparables |

## 3. Rango

- **LOW USD 6M:** dilución al 25% y múltiplo con descuento de 50% coinciden.
- **BASE USD 8M:** dilución de ~19% (mediana Carta), cruza con comparables y VC method.
- **HIGH USD 10M:** dilución al 15%; defendible solo con crecimiento sostenido de 12%+ MoM.

## 4. Valuación recomendada

**Post-money USD 8M (pre-money USD 6,5M), ronda USD 1,5M, dilución ~19%.**

La historia que la defiende:
1. Margen bruto de 78%, arriba del promedio de Bessemer a esta escala.
2. Burn multiple de 1,4x: crece eficiente, en la banda "great" de Sacks.
3. 2,8x de crecimiento anual con 600K de ARR: el próximo paso es USD 1,7M de ARR, ritmo de serie A.

## 5. Red flags

- **El pedido de USD 15M está 50% arriba de HIGH.** Implica 10% de dilución en una seed LATAM: el lead
  va a bajar el precio o no va a liderar.
- **NRR de 104%.** Debajo de la mediana pública; un fondo lo va a leer como poca expansión.
- **Prueba de step-up.** A 15M post, la serie A tendría que salir a USD 30-45M con ~USD 1,7M de ARR:
  difícil en LATAM.

## 6. Contexto LATAM

Las medianas de Carta son de software en EEUU y muchas de esas empresas son AI-native: son el techo,
no el ancla. En LATAM la liquidez es baja (USD 4,2B de VC en 2024, Crunchbase) y pesan equipo y
crecimiento. El precio lo pone el lead; la competencia entre fondos es lo único que lo mejora.

## Next Steps

1. Llevar el crecimiento de 9% a 12%+ MoM por 3 meses antes de abrir la ronda: eso mueve el rango a HIGH.
2. Abrir cada conversación con los 3 hechos de la sección 4, en ese orden.
3. Correr `/fundraising-agent` para la lista de 30 y el lead, y `/startup-valuation-checker` para
   estresar el precio desde el lado del inversor antes del term sheet.
