# DxDrill

Jogo de fases no estilo *Holedown*: você mira e lança bolas que quebram os blocos numerados e vão cavando o poço, fase por fase, até o núcleo. Tem laser, bolhas no menu e sons próprios para cada impacto.

## Rodar

Não há build nem servidor próprio. `index.html` é o jogo; `montar.sh` gera a página completa em `serve/index.html`:

```bash
./montar.sh
python3 -m http.server 8000 --directory serve   # http://localhost:8000
```
