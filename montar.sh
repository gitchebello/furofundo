#!/bin/sh
# Monta serve/index.html (página completa) a partir do index.html do artifact.
D="$(cd "$(dirname "$0")" && pwd)"
{ printf '<!doctype html>\n<html lang="pt-BR"><head><meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<style>[hidden]{display:none!important}body{margin:0}</style>\n</head><body>\n'
  cat "$D/index.html"; printf '\n</body></html>\n'; } > "$D/serve/index.html"
