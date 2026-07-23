# Academy QGIS by pigreco

> ⚠️ **Nota**: questo repository è **solo un esempio dimostrativo** di come utilizzare
> [**Material for MkDocs**](https://squidfunk.github.io/mkdocs-material/) per realizzare
> un sito di documentazione. Non è un corso ufficiale né materiale di produzione.

Sito di documentazione didattica per corsi **QGIS** (base e avanzato), costruito con
[MkDocs](https://www.mkdocs.org/) e il tema [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

🌐 **Sito pubblicato**: <https://pigreco.github.io/academy_qgis_pigreco/>

## A cosa serve questo repo

L'obiettivo è mostrare, con un caso reale, le principali funzionalità di Material for MkDocs
applicate alla documentazione tecnica:

- **Navigazione a tab** e struttura a capitoli numerati
- **Tema chiaro/scuro** con toggle (`default` / `slate`)
- **Estensioni PyMdown**: admonition, tabbed, dettagli, code highlight, caret/mark/tilde
- **Ricerca**, **glightbox** (gallery immagini) e **KaTeX** per le formule
- **Include riutilizzabili** (es. disclaimer) e **footnote**
- **Contenuti HTML/JS embedded** (es. grafico interattivo dei voti di certificazione)

## Struttura del progetto

```
docs/
├── capitoli/
│   ├── corso_base/      # Capitoli corso base (010_*.md … 160_*.md)
│   └── corso_avanzato/  # Capitoli corso avanzato per argomento
├── esercitazioni/       # Materiali di esercitazione
├── imgs/                # Immagini e screenshot
├── dati/                # Dataset e materiali dei corsi
├── css/ · javascripts/  # Personalizzazioni
└── includes/            # Contenuti riutilizzabili (disclaimer, ecc.)
mkdocs.yml               # Configurazione MkDocs
```

## Come usarlo in locale

Richiede Python 3 e i pacchetti `mkdocs-material` (con i plugin usati in `mkdocs.yml`).

```bash
# Anteprima con live reload
mkdocs serve

# Build del sito statico (cartella site/)
mkdocs build

# Pubblicazione su GitHub Pages (branch gh-pages)
mkdocs gh-deploy
```

## Licenza

I contenuti didattici sono rilasciati con licenza
**[Creative Commons Attribuzione-NonCommerciale-NonOpereDerivate 4.0 Internazionale (CC BY-NC-ND 4.0)](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.it)** —
vedi il file [`LICENSE`](LICENSE).

© 2026 **Salvatore Fiandaca** (_Pigrecoinfinito_)
