---
hide:
  # - navigation
  # - toc
title: Compositore di stampe - Atlante
description: Compositore di stampe - Stampa in serie
---

# Atlante

## Cos'è l'Atlas

L'Atlas è una funzionalità di QGIS che permette di creare una serie di mappe basate su un layer vettoriale di riferimento. È come un "generatore automatico di mappe" che replica un layout per ogni elemento del layer di copertura.

## Componenti Principali

=== "Layer di Copertura"

    ```
    - Layer vettoriale di riferimento
    - Ogni feature = una pagina
    - Definisce estensione e attributi
    ```

=== "Layout di Base"

    ```
    Elementi tipici:
    - Mappa principale
    - Titolo dinamico
    - Legenda
    - Scala
    - Informazioni variabili
    ```

=== "Espressioni Atlas"

    ```
    Sintassi base:
    [% @atlas_feature['campo'] %]
    [% @atlas_pagename %]
    [% @atlas_featurenumber %]
    ```

## Casi d'Uso Comuni

=== "Mappe Amministrative"

    ```
    - Comuni di una provincia
    - Quartieri di una città
    - Zone di competenza
    ```

=== "Schede Tecniche"

    ```
    - Siti di monitoraggio
    - Punti di interesse
    - Infrastrutture
    ```

=== "Report Territoriali"

      ```
      - Analisi ambientali
      - Studi urbanistici
      - Progetti infrastrutturali
      ```

## Workflow Base

=== "Preparazione"

    ```
    1. Preparare layer di copertura
    2. Organizzare altri layer necessari
    3. Definire simbologia e stili
    ```

=== "Configurazione Atlas"

    ```
    1. Creare nuovo layout
    2. Attivare Atlas
    3. Selezionare layer di copertura
    4. Configurare parametri base
    ```

=== "Elementi Dinamici"

    ```
    1. Titoli variabili
    2. Filtri contestuali
    3. Scale automatiche
    4. Etichette dinamiche
    ```

## Funzionalità Avanzate

=== "Filtri e Relazioni"

    ```sql
    -- Esempio filtro correlato
    "comune_id" = @atlas_feature['id']
    ```

=== "Espressioni Condizionali"

    ```
    CASE 
      WHEN @atlas_feature['tipo'] = 'A' 
      THEN 'Categoria A'
      ELSE 'Altra Categoria'
    END
    ```

=== "Scale e Margini"

    ```
    - Scale fisse o variabili
    - Margini personalizzati
    - Rotazioni automatiche
    ```

## Best Practices

=== "Organizzazione Dati"

    ```
    - Layer puliti e strutturati
    - Attributi significativi
    - Relazioni definite
    ```

=== "Layout"

      ```
      - Template ben organizzato
      - Elementi posizionati correttamente
      - Stili coerenti
      ```

=== "Test e Controllo"

      ```
      - Verifica anteprima
      - Controllo espressioni
      - Test esportazione
      ```

## Suggerimenti Pratici

=== "Prima di Iniziare"

    ```
    - Pianificare struttura
    - Preparare dati
    - Definire output desiderato
    ```

=== "Durante la Configurazione"

    ```
    - Utilizzare espressioni testate
    - Salvare regolarmente
    - Documentare impostazioni
    ```

=== "Esportazione"

      ```
      Formati supportati:
      - PDF (singolo o multiplo)
      - Immagini (PNG, JPEG)
      - SVG
      ```



{!includes/disclaimer.md!}
