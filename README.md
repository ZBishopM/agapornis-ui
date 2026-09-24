# agapornis-ui

Identidad visual común de los frontends: superficies casi negras en capas, tinta por transparencias, Geist / Geist Mono, un acento sage (≈ iPhone 17) con relleno verde militar, y un catálogo de movimiento fijo. Solo oscuro.

Sistema basado en [zeron](https://github.com/zeronsh/zeron) (MIT). Fuentes: [Geist](https://github.com/vercel/geist-font) (OFL, `fonts/OFL.txt`).

## Ficheros

| Fichero | Qué trae |
|---|---|
| `agapornis.css` | Entrada única (importa los demás) |
| `tokens.css` | Colores, forma, tipografía, curvas y duraciones; `@font-face` |
| `motion.css` | `.fade-in .settle-in .menu-in .menu-out .dialog-in .stagger .hover-fade .collapse .ag-loader`; reduced-motion |
| `glass.css` | `.glass` solo para flotantes; difuminado solo con puntero fino, sólido en táctil |
| `components.css` | `.ag-card .ag-btn(-primary/-ghost/-danger) .ag-input .ag-chip .ag-label .ag-title .ag-edge-fade` |
| `gallery.html` | Muestra de todo, para comparar |

## Usar

    nu sync.nu <carpeta-del-proyecto>      # copia la versión actual (sin CDN)

    <link rel="stylesheet" href="/agapornis-ui/agapornis.css">

## Contraste (WCAG, sobre `--bg #060606`)

| Par | Ratio |
|---|---|
| sage `#a9b689` | 9.4 |
| texto sobre militar `#4b5320` | 6.7 |
| muted / faint | 8.7 / 5.5 |
| success / danger | 10.5 / 7.3 |
| militar vs fondo | 2.5 → por eso `.ag-btn-primary` lleva borde `--accent-line` |

## Movimiento

| Uso | Duración | Curva |
|---|---|---|
| Entrada | 500 ms | `--ease-expo` + 4 px |
| Popover | 140 / 100 ms | `--ease`, escala .96 |
| Diálogo | 180 ms | `--ease` |
| Hover | 150 ms | `--ease-std` |
| Plegar | 180 ms | `--ease-out` |
| Tamaño | 200 ms | `--ease-out` |
| Cargador | 2.4 s | pulso escalonado |

## Versiones

Cambiar `VERSION` y la cabecera de `agapornis.css`, etiquetar `vX.Y.Z`, y volver a sincronizar en cada proyecto.
