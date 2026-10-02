# Hackathon Kit: de la idea al pitch con Devin

Kit de **skills para Devin** que guía a un equipo de hackathon de punta a punta: decidir **qué construir** antes de construir, validarlo contra lo que ya existe, recortarlo a algo demostrable y llegar a la entrega con un pitch.

Hecho para la **Colosseum Crypto World's Fair, track Superteam Argentina**, pero sirve para cualquier hackathon crypto.

> Con un agente de código, escribir código es barato. Lo difícil es elegir bien qué construir y demostrar que importa. Este kit ataca eso.

## Cómo funciona

Seis skills que se llaman con `/` dentro de Devin. **Hacen preguntas de a una**, cuestionan la idea y dejan el trabajo escrito en `proyecto/` (la memoria del equipo entre sesiones — cada sesión nueva de Devin arranca sin memoria).

```
/idea  ->  /validar  ->  /mvp  ->  /planificar  ->  (construir)  ->  /pitch
 qué        ¿vale la     qué entra   cómo se                  cómo se
construir    pena?       en las      hace                     cuenta
                         horas
```

| Skill | Qué hace | Archivo que deja |
|---|---|---|
| `/hackathon` | Te ubica en el proceso y te dice el próximo paso | (no escribe) |
| `/idea` | Brainstorm guiado: equipo, problemas, ideas, filtro, elección | `proyecto/01-idea.md` |
| `/validar` | Investiga qué ya existe (con Colosseum Copilot si está instalada), ataca la idea y da un veredicto | `proyecto/02-validacion.md` |
| `/mvp` | Recorta a 3 funciones y define la demo de 3 minutos | `proyecto/03-mvp.md` |
| `/planificar` | Bloques de trabajo con tareas listas para pedirle a Devin; arma el `AGENTS.md` | `proyecto/04-plan.md` |
| `/pitch` | Deck, guiones de video en inglés y checklist de entrega | `proyecto/05-pitch.md` |

Si la investigación dice que la idea es floja, `/validar` no te manda a descartar a ciegas: te da un menú (angostar a la cuña, pivotar, clon consciente, descartar o veredicto provisional) según el patrón de mercado que encontró.

## Regla de oro: modo prueba, siempre

Todo el kit trabaja sobre **devnet**, la red de prueba de Solana. La plata ahí es de mentira: sale de un faucet y no vale nada.

- **Nunca** mainnet ni plata real durante la hackathon.
- **Nunca** frases semilla ni claves privadas en el chat ni en archivos del repo.
- Toda transacción que se firme o envíe pide aprobación, mostrando destino, monto, token y red.
- Al entregar, se aclara a los jurados que el proyecto corre en devnet.

## Para los participantes: arrancar en 3 pasos

1. Instalá Devin (<https://devin.ai/desktop>) e iniciá sesión.
2. Usá este repo como base de tu equipo: botón **Use this template** en GitHub (o clonalo) y abrí la carpeta en Devin.
3. Abrí una sesión y escribí:

```
/hackathon
```

Te dice en qué etapa estás y cuál es el próximo paso. Cada skill empieza mostrando su propia guía (qué hace, qué necesitás, cuánto lleva y qué archivo deja) antes de preguntar si arrancan.

**Si no sabés de cripto:** el kit asume que pueden ser principiantes. Cada término (devnet, wallet, USDC, votación onchain) se explica en una línea la primera vez que aparece. Si algo no se entiende, frenen y pidan que lo explique.

**Cuánto tiempo lleva la parte de decidir:** `/idea` y `/validar` en la primera hora; `/mvp` y `/planificar` antes de escribir una línea de código.

## ¿Y si no usan Devin?

El kit anda igual: casi todo es markdown portable. `AGENTS.md` lo leen la mayoría de los agentes de hoy (Codex, Cursor, Gemini CLI, Jules), y `docs/` + `proyecto/` funcionan con cualquiera.

Lo único específico de Devin es el directorio `.devin/skills/` y la invocación con `/`. Tres formas de llevarlo a otro agente:

1. **Copiar las skills al directorio del agente:** mové `.devin/skills/` a `.claude/skills/` (Claude Code) o `.agents/skills/` (Codex y el ecosistema de `npx skills add`). El contenido funciona igual; lo que se pierde es el frontmatter de permisos (por ejemplo, que solo `/validar` pueda correr comandos — afuera queda a criterio del agente).
2. **Apuntar al archivo:** sin copiar nada, decirle al agente "leé `.devin/skills/validar/SKILL.md` y seguilo paso a paso". Los SKILL.md son guías numeradas; cualquier LLM las sigue.
3. **Sin agente:** las skills también sirven como checklist humano — el método (preguntas, test de mesa, veredicto) no necesita IA para funcionar.

## Qué hay en el repo

```
.devin/skills/       las skills (hackathon, idea, validar, mvp, planificar, pitch)
docs/                reglas y fechas, proyectos ganadores de referencia, guía de Devin, skills externas
docs/ejemplo/        un proyecto completo de ejemplo (solo para mirar, NO es el tuyo)
proyecto/            la memoria del equipo: arranca vacía, la llenan las skills
AGENTS.md            instrucciones permanentes para Devin (/planificar completa la sección del proyecto)
```

## Skills externas (las pide la Guía oficial 1)

La guía de setup de la sede ya les pide instalar dos skills que el kit aprovecha si están:

- **`colosseum-copilot`** → `/validar` la usa para ver qué ya se hizo en 5.400+ entregas pasadas, y `/pitch` para pedir feedback. Si no está instalada o falla el login, `/validar` tiene plan B manual.
- **`solana-dev-skill`** → se activa sola al escribir código Solana con las librerías actuales.

Instalación, autenticación (ojo: la Guía 1 muestra un método viejo — ver el doc), troubleshooting y reglas de seguridad en [`docs/skills-externas.md`](docs/skills-externas.md).

## Construir rápido con Devin

Leé [`docs/guia-devin-para-construir.md`](docs/guia-devin-para-construir.md): modelos, modos, rutina de trabajo y qué evitar.

## Fuentes

- Colosseum Crypto World's Fair: <https://colosseum.com/worldsfair>
- Listing Superteam Argentina: <https://superteam.fun/earn/listing/colosseum-crypto-worlds-fair-hackathon-superteam-argentina-track>
- Ganadores anteriores: <https://blog.colosseum.com>
- Documentación de skills de Devin CLI: ver la carpeta de docs incluida con la instalación.
