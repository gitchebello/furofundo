# DxDrill

Jogo de fases no estilo *Holedown*: você mira e lança bolas que quebram os blocos numerados e vão cavando o poço, fase por fase, até o núcleo. Tem laser, bolhas no menu e sons próprios para cada impacto.

## Rodar

Não há build de verdade. `dxdrill.html` é o jogo (o mesmo HTML do artifact); `montar.sh` gera a página completa em `index.html`, com as fontes servidas de `fonts/`:

```bash
./montar.sh
python3 -m http.server 8000   # http://localhost:8000
```

Depois de mexer em `dxdrill.html`, rode `./montar.sh` de novo e faça o commit dos dois arquivos: o GitHub Pages publica o `index.html`.
