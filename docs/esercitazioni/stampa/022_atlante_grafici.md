---
hide:
  # - navigation
  # - toc
title: Atlante con grafici
description: Atlante con grafici dinamici
---

# Atlante con grafici

## Introduzione

Realizzare un **atlante** utilizzando come layer di copertura il vettore **regioni ISTAT** in relazione (1:m) con il vettore delle **province ISTAT**. Il **layout** deve contenere/visualizzare:

1. una mappa della regione corrente;
2. una mappa delle province della regione corrente;
3. un grafico (bar plot), legato alla regione corrente, che visualizzi un parametro a scelta delle province;
4. tabella attributi delle province relative alla regione corrente;
5. una panoramica;
6. altri oggetti utili alla comprensione dell'atlante. (a seguire il risultato atteso - gif animata)

![](../../imgs/cap_15/atlante_grafico.gif)

## Cosa occorre

## Iniziamo

### Importare dati

### Creare relazione 

### Aggiungere viste


### Nuovo Layout di stampa

=== "Creare"

    Creare nuovo layout ( <kbd>Ctrl + P</kbd> ) e lo chiamiamo `atlante con grafici`

    ![](../../imgs/cap_15/img_04.png)

    !!! Note

        Per impostazioni predefinite la pagina è A4 orizzontale!

=== "Add mappe"

      1. Aggiungo la prima mappa e la chiama regioni;
      2. aggiungo una seconda mappa e la chiama panoramica;
      3. una terza mappa e la chiama province;

      per rinominare un oggetto mappa doppio clic sul nome, nel pannello Oggetti.

      ![](../../imgs/cap_15/img_05.png)

=== "Genera Atlante"

      - dal Pannello _Atlante_

      ![](../../imgs/cap_15/img_06.png)

      - dal Pannello _Prorietà dell'Oggetto_ (mappa `regioni`)

      ![](../../imgs/cap_15/img_061.png)

      stessa cosa va fatta per la mappa `province`, in modo da avere due mappe legate allo stesso atlante:

      ![](../../imgs/cap_15/img_062.png)

=== "Panoramica"

    Impostare la **Panoramica** della mappa `regioni`

    ![](../../imgs/cap_15/img_07.png)

    adattare l'estensione della mappa (panoramica) al riquadro utilizzando l'icona ![](../../imgs/field_calc/icon/mActionMoveItemContent.png) e la rotellina del mouse con ctrl premuto.

    ![](../../imgs/cap_15/img_071.png)

=== "Anteprima"

    Attivare anteprima atlante per verificare che tutto sia ben impostato, cliccare sull'icona ![](../../imgs/field_calc/icon/mIconAtlas.png)

    ![](../../imgs/cap_15/img_08.png)

=== "Viste"

    Associare le **viste** create alla mappa `regioni` e `province`:

    ![](../../imgs/cap_15/img_09.png)

    ![](../../imgs/cap_15/img_091.png)

=== "Grafico"

    Aggiungere grafico _Bar Plot_ utilizzando l'icona ![](../../imgs/field_calc/icon/dataplotly.png) (occorre installare il Plugin DataPlotly) tracciando un rettangolo:

    ![](../../imgs/cap_15/img_010.png)

    cliccare su (4) `Setup Selected Plot` per accedere al setup del grafico:

    ![](../../imgs/cap_15/img_011.png)

    al punto (3) inserire questa espressione:

    ```py
    contains(@atlas_geometry,point_on_surface($geometry))
    ```

    ![](../../imgs/cap_15/img_012.png)

=== "Tabella"

    Per aggiungere una tabella utilizzare l'icona ![](../../imgs/field_calc/icon/mActionAddTable.png) e disegnare un rettangolo:

    ![](../../imgs/cap_15/img_013.png)

---

### Altri oggetti

=== "Etichetta Atlante"

    Per aggiungere una etichetta utilizzare l'icona ![](../../imgs/field_calc/icon/mActionLabel.png) e, tramite espressione, aggiungere il campo che contiene il nome della Regione corrente:

    ![](../../imgs/cap_15/img_014.png)

=== "Etichetta statica"

    Per aggiungere una etichetta utilizzare l'icona ![](../../imgs/field_calc/icon/mActionLabel.png) e digitare `Regioni e Province Italiane`:

    ![](../../imgs/cap_15/img_015.png)

    Aggiungere in basso a destra una etichetta con scritto: **Realizzato con QGIS**.

=== "Immagine"

    Aggiungere una immagine utilizzando l'icona ![](../../imgs/field_calc/icon/mActionAddImage.png) e traciando un rettangolo:

    ![](../../imgs/cap_15/img_016.png)

### Sistemare

#### Guide orizzontali e verticali

#### Formattare testo etichette

#### Tabella Attributi

#### Grafico

## Esportazione

## Avanzato

### Generatore di geometrie

### Colore Bar Plot

### Colori categorizzati Bar Plot

È possibile tematizzare il layer delle Province con il metodo `Categorizzato` e associare un colore per ogni `Provincia`, questi colori possono essere usati anche nelle barre del Bar Plot; il processo è un po' lungo ma si puo' fare. Solo un piccolo cenno: occorre creare un nuovo campo e popolarlo con i colori (es: RGB) da utilizzare sia nella categorizzazione che nel grafico.

[risorse:qgis-hub](http:/qgis-hub.fast-page.org/layouts.php)

{!includes/disclaimer.md!}