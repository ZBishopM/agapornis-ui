# Copia agapornis-ui a un proyecto: `nu sync.nu <destino>`
# Destino típico: <proyecto>/vendor/agapornis-ui o una carpeta que el
# proyecto ya sirva como estática. Se copia (no CDN): ningún frontend depende
# de un tercero en runtime. VERSION queda junto a los ficheros.

def main [destino: string] {
    let origen = $env.FILE_PWD
    mkdir ($destino | path join fonts)
    for f in [agapornis.css tokens.css motion.css glass.css components.css VERSION] {
        cp ($origen | path join $f) ($destino | path join $f)
    }
    for f in [geist.woff2 geist-mono.woff2 OFL.txt] {
        cp ($origen | path join fonts $f) ($destino | path join fonts $f)
    }
    print $"agapornis-ui (open --raw ($origen | path join VERSION) | str trim) → ($destino)"
}
