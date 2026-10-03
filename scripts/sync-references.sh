#!/bin/sh
# Copia los docs que usa cada skill a .devin/skills/<skill>/references/,
# así `npx skills add` las instala completas (fuera del repo no existe docs/).
# docs/ es la fuente: editá ahí y corré este script antes de commitear.
set -e
cd "$(dirname "$0")/.."
S=.devin/skills

sync() { # sync <skill> <archivo en docs/>...
  skill=$1; shift
  rm -rf "$S/$skill/references"
  mkdir -p "$S/$skill/references"
  for f in "$@"; do cp -R "docs/$f" "$S/$skill/references/"; done
}

sync hackathon  contexto-hackathon.md ejemplo
sync empezar    contexto-hackathon.md skills-externas.md
sync idea       contexto-hackathon.md referencias-ganadores.md
sync validar    contexto-hackathon.md referencias-ganadores.md skills-externas.md
sync mvp        contexto-hackathon.md
sync planificar contexto-hackathon.md guia-devin-para-construir.md skills-externas.md
sync pitch      contexto-hackathon.md referencias-ganadores.md skills-externas.md
cp AGENTS.md "$S/planificar/references/AGENTS.template.md"
