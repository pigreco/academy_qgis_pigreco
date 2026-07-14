---
hide:
  # - navigation
  # - toc
title: Migliorare la visualizzazione
description: Tecniche per migliorare la visualizzazione dei raster in QGIS
---

# Migliorare la visualizzazione

## Ricampionamento

Il ricampionamento (resampling) permette di migliorare la qualità visiva dei raster durante la visualizzazione. In QGIS è possibile impostare diversi metodi di ricampionamento nella finestra Proprietà del layer: 

- Nearest Neighbor (veloce ma meno accurato),
- Bilinear (buon compromesso), 
- Cubic (migliore qualità) 
- e Lanczos3 (massima qualità ma più lento).

## Mappa aggiornata

La visualizzazione della tematizzazione calcola i valori statistici sulla porzione di mappa visualizzata e aggiorna i valori se spostiamo la mappa.

## Intero raster

La visualizzazione della tematizzazione calcola i valori statistici sull'intero raster anche se visualizziamo solo una porzione di mappa.

[video demo](https://youtu.be/m6jYnj1j4Io?si=37fqyrHLNqh6J6pV&t=1678)

{!includes/disclaimer.md!}
