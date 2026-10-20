#!/bin/sh
# Monta index.html (página completa, a do GitHub Pages) a partir de dxdrill.html,
# o mesmo HTML do artifact. As fontes vêm de fonts/ em vez do Google Fonts, para
# o jogo abrir já com Bungee e Chakra Petch, sem piscar a fonte reserva.
D="$(cd "$(dirname "$0")" && pwd)"
{ cat <<'EOF'
<!doctype html>
<html lang="pt-BR"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<title>DxDrill</title>
<meta name="description" content="Mire, lance as bolas e cave o poço fase por fase até o núcleo.">
<meta name="theme-color" content="#0a0a0b">
<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 32 32'%3E%3Crect width='32' height='32' rx='7' fill='%230a0a0b'/%3E%3Ccircle cx='16' cy='17' r='9' fill='%23ff7a2f'/%3E%3Ccircle cx='13' cy='14' r='3' fill='%23ffd23a'/%3E%3C/svg%3E">
<link rel="preload" href="fonts/bungee-400.woff2" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="fonts/chakra-petch-400.woff2" as="font" type="font/woff2" crossorigin>
<link rel="preload" href="fonts/chakra-petch-700.woff2" as="font" type="font/woff2" crossorigin>
<style>
@font-face{font-family:"Bungee";font-weight:400;font-display:block;src:url(fonts/bungee-400.woff2) format("woff2")}
@font-face{font-family:"Chakra Petch";font-weight:400;font-display:block;src:url(fonts/chakra-petch-400.woff2) format("woff2")}
@font-face{font-family:"Chakra Petch";font-weight:600;font-display:block;src:url(fonts/chakra-petch-600.woff2) format("woff2")}
@font-face{font-family:"Chakra Petch";font-weight:700;font-display:block;src:url(fonts/chakra-petch-700.woff2) format("woff2")}
html{background:#0a0a0b;-webkit-text-size-adjust:100%;text-size-adjust:100%}
body{margin:0;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}
[hidden]{display:none!important}
</style>
</head><body>
EOF
  # tira o <title> e os links do Google Fonts: já estão no <head> acima
  grep -v -e '^<title>' -e 'fonts\.googleapis\.com' -e 'fonts\.gstatic\.com' "$D/dxdrill.html"
  printf '\n</body></html>\n'; } > "$D/index.html"
