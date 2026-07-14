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

Per realizzare l'atlante descritto sopra occorre, oltre a [**QGIS**](https:/qgis.org/it/site/), il plugin [**DataPlotly**](https:/plugins.qgis.org/plugins/DataPlotly/) che va installato (menu _Plugins_ | _Gestisci ed Installa Plugin..._), i **CONFINI DELLE UNITÀ AMMINISTRATIVE A FINI STATISTICI AL 1° GENNAIO 2024** (che trovi nella sezione [Dati](../../dati/index.md))

!!! Tip "Suggerimento"

    Creare un nuovo geopackage e importare i due shapefile `Reg01012020_g_WGS84` e `ProvCM01012020_g_WGS84`, inoltre, salvare il progetto QGIS dentro lo stesso geopackage.

## Iniziamo

### Importare dati

Importare in QGIS i due layer `Reg01012020_g_WGS84` e `ProvCM01012020_g_WGS84`

![](../../imgs/cap_15/img_01.png)

### Creare relazione 

Creare relazione[^1] 1:m tra i due layer

![](../../imgs/cap_15/img_02.png)

### Aggiungere viste

Aggiungo due viste per utilizzarle successivamente nell'atlante: **regioni**, **province**

![](../../imgs/cap_15/img_03.png)

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

Dopo aver aggiunto tutti gli oggetti, occorre sistemare il tutto, per esempio: centrare e formattare meglio le etichette; sistemare meglio le varie mappe; formattare meglio la tabella attributi ecc...

#### Guide orizzontali e verticali

Ecco una prima sistemata con l'aggiunta di guide

![](../../imgs/cap_15/img_017.png)

#### Formattare testo etichette

Formattare il testo delle etichette: dimensione, colore e allineamento

![](../../imgs/cap_15/img_018.png)

#### Tabella Attributi

Formattazione tabella: tipo carattere, colore, dimensione, numero campi ec...

![](../../imgs/cap_15/img_019.png)

dalle proprietà `Attributi` è possibile: riordinare i campi, rinominarli, eliminarli, aggiungerli ecc...

![](../../imgs/cap_15/img_0191.png)

edito l'**Aspetto** della tabella:

![](../../imgs/cap_15/img_0192.png)

#### Grafico

Configurare le varie opzioni del grafico

![](../../imgs/cap_15/img_020.png)

#### Mappe

=== "Panoramica"

    La mappa `panoramica` Bloccare Layer e stile in modo da non modificare la visualizzazione della panoramica, questo perché il layer verrà successivamente modificato utilòizzando una tematizzazione tramite regola:

    ![](../../imgs/cap_15/img_021.png)

=== "Regioni"

    Per visualizzare solo la regione corrente (e non le altre confinanti) un modo è quello di tematizzare il layer usando questo filtro nella regola:

    ```py
    "den_reg"  =  @atlas_pagename 
    ```

    ![](../../imgs/cap_15/img_022.png)

    ecco cosa accade nel layout:

    ![](../../imgs/cap_15/img_023.png)

=== "Province"

    Per visualizzare solo le province della regione corrente (e non le altre confinanti) un modo è quello di tematizzare il layer usando questo filtro nella regola:

    ```py
    contains(@atlas_geometry,point_on_surface($geometry))
    ```

    ![](../../imgs/cap_15/img_024.png)

    ecco cosa accade nel layout:

    ![](../../imgs/cap_15/img_025.png)

=== "Numero pagina Atlante"

    Aggingere numero pagina e il totale delle pagine (sono due variabili):

    ![](../../imgs/cap_15/img_026.png)

---

## Esportazione

Per esportare il PDF singolo della pagina corrente, pigiare l'icona ![](../../imgs/field_calc/icon/mActionSaveAsPDF.png):

![](../../imgs/cap_15/img_027.png)

per esportare file singolo PDF dell'atlante:

![](../../imgs/cap_15/img_028.png)

per esportare tanti file PDF quanti sono le pagine dell'atlante, togliere la spunta all'opzione `Esporta file singolo se possibile` e configurare `Espressione del nome di file in uscita` usando anche il costruttore di espressioni:

![](../../imgs/cap_15/img_029.png)

![](../../imgs/cap_15/img_0271.png)

![](../../imgs/cap_15/img_030.png)

per maggiori dettagli, la guida ufficiale di QGIS:<br> <https:/docs.qgis.org/testing/en/docs/user_manual/print_composer/create_output.html#export-as-pdf>

## Avanzato

### Generatore di geometrie

Visualizzare, aumentando lo spessore linea, il confine della regione corrente nella mappa `province`, questo si realizza tramite il `generatore di geometrie`:

![](../../imgs/cap_15/img_031.png)

risultato:

![](../../imgs/cap_15/img_032.png)

### Colore Bar Plot

Modificare colore delle barre del grafico Bar Plot:

```py
array_foreach(generate_series( 0, 1.01, 1/9 ),  ramp_color( 'Spectral', @element))
```

![](../../imgs/cap_15/img_033.png)

### Colori categorizzati Bar Plot

È possibile tematizzare il layer delle Province con il metodo `Categorizzato` e associare un colore per ogni `Provincia`, questi colori possono essere usati anche nelle barre del Bar Plot; il processo è un po' lungo ma si puo' fare. Solo un piccolo cenno: occorre creare un nuovo campo e popolarlo con i colori (es: RGB) da utilizzare sia nella categorizzazione che nel grafico.

[risorse:qgis-hub](http:/qgis-hub.fast-page.org/layouts.php)

{!includes/disclaimer.md!}

[^1]: dal menu Progetto