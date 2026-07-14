---
hide:
  - navigation
  # - toc
title: Stampe in serie
description: Stampe in serie Atlanti
---

# Atlante

Gli Atlanti sono una funzionalità di QGIS che permette di creare una serie di mappe automatizzate basate su un layer di copertura. È come un "generatore di serie" che produce multiple pagine da un singolo layout.

## Layer di copertura

Il layer di copertura è lo strumento base per realizzare gli atlanti in QGIS.

## Concetto base

Per generare un **Atlante** occorre necessariamente selezionare un **Layer di copertura** che può essere (un vettore o una semplice tabella):

1. vettore _puntuale_;
2. vettore _lineare_;
3. vettore _poligonale_;
4. _tabella_ senza geometria;

![](../../imgs/cap_10/img_00.png){.center-img .img-50}

il compito del **Layer di copertura** è quello di dire a QGIS quale layer utilizzare per generare l'atlante, inoltre, il numero massimo delle pagine generate dall’Atlas dipende dalle righe della tabella attributi del **Layer di copertura** (es: se un Layer contenesse `n` righe, otterremmo un numero massimo di pagine pari ad `n`). Se il **Layer di copertura** fosse un vettore (linea o poligono), l'atlante terrebbe conto anche della geometria e delle estensioni delle singole feature, questo è importante per il `pan` e lo `zoom`. Utilizzare **Layer di copertura senza geometria** è possibile ma non molto intuitivo, infatti vedremo (tutto disattivato):

![](../../imgs/cap_10/img_01.png){.center-img .img-50}

nelle proprietà dell'oggetto, non è possibile attivare **Controllato da Atlante**.

La mancanza della geometria comporta la ripetizione (senza variazioni di scala e posizione) del layout pari al numero delle righe presenti nella tabella (a meno di filtri).

Un uso pratico sarebbe quello di realizzare delle stampe in serie di tabelle, grafici.

Sotto un esempio di uso di **layer di copertura** senza geometria:

![](../../imgs/cap_10/img_021.png){.center-img .img-50}

l'icona davanti al nome del layer fa capire che è una semplice tabella senza geometria.

![](../../imgs/cap_10/img_02.png){.center-img .img-70}

espressione usata per l'etichetta (per ogni regione, elenco delle province e popolazione residente):

```py
aggregate( 
  layer:='pop_res_prov_NUTS3_ISTAT20190101',
  aggregate:='concatenate',
  expression:="province",
  concatenator:=',',
  filter:="cod_reg" = attributes(@parent)['cod_reg'])
||'\n'|| -- vai a capo
format_number(attributes(@atlas_feature)['pop_res2019'],0) -- visualizza popolazione residente, ultima riga
```

![](../../imgs/cap_10/img_03.png){.center-img .img-70}

## Osservazione :warning:

L'azione atlas funzionerà solo da tabella attributi in quanto NON esiste geometria su cui cliccare. Quindi occorre attivare la visualizzazione delle azioni nella tabella attributi.

![](../../imgs/cap_10/img_04.png){.center-img .img-70}

## Atlante con grafici

### Introduzione

Realizzare un **atlante** utilizzando come layer di copertura il vettore **regioni ISTAT** in relazione (1:m) con il vettore delle **province ISTAT**. Il **layout** deve contenere/visualizzare: 

- una mappa delle province della regione corrente,
- un grafico (bar plot), legato alla regione corrente, che visualizzi un parametro a scelta delle province,
- tabella attributi delle province relative alla regione corrente,
- una panoramica,
- altri oggetti utili alla comprensione dell'atlante. (a seguire il risultato atteso - gif animata)

![](../../imgs/cap_15/atlante_grafico.gif){.center-img .img-60}

### Cosa occorre

Per realizzare l'atlante descritto sopra occorre, oltre a [**QGIS**](https:/qgis.org/it/site/), il plugin [**DataPlotly**](https:/plugins.qgis.org/plugins/DataPlotly/) che va installato (menu Plugins | Gestisci ed Installa Plugin...), i **CONFINI DELLE UNITÀ AMMINISTRATIVE A FINI STATISTICI AL 1° GENNAIO 2020**: <https:/www.istat.it/it/archivio/222527>

### Suggerimento

Creare un nuovo geopackage e importare i due shapefile `Reg01012020_g_WGS84` e `ProvCM01012020_g_WGS84` inoltre salvare il progetto QGIS dentro lo stesso geopackage.

### Iniziamo

#### Importare dati

Importare in QGIS i due layer `Reg01012020_g_WGS84` e `ProvCM01012020_g_WGS84`

![](../../imgs/cap_15/img_01.png){.center-img .img-50}

#### Creare relazione 

Creare relazione 1:m tra i due layer

![](../../imgs/cap_15/img_02.png){.center-img .img-50}

#### Aggiungere viste

Aggiungo due viste per utilizzarle successivamente nell'atlante: **regioni**, **province**

![](../../imgs/cap_15/img_03.png){.center-img .img-50}

#### Nuovo Layout di stampa

Creo nuovo layout (Ctrl + P) e lo chiamo `atlante con grafici`

![](../../imgs/cap_15/img_04.png){.center-img .img-50}

By default la pagina è A4 orizzontale

##### Aggiungere mappe

1. Aggiungo la prima mappa e la chiama regioni;
2. aggiungo una seconda mappa e la chiama panoramica;
3. una terza mappa e la chiama province;

per rinominare un oggetto mappa doppio clic sul nome, nel pannello Oggetti.

![](../../imgs/cap_15/img_05.png){.center-img .img-50}

##### Definire Atlante

1. dal Pannello _Atlante_

![](../../imgs/cap_15/img_06.png){.center-img .img-50}

2. dal Pannello _Prorietà dell'Oggetto_ (mappa `regioni`)

![](../../imgs/cap_15/img_061.png){.center-img .img-50}

stessa cosa va fatta per la mappa `province`, in modo da avere due mappe legate allo stesso atlante:

![](../../imgs/cap_15/img_062.png){.center-img .img-50}

##### Impostare la Panoramica

Imposto la **Panoramica** della mappa `regioni`

![](../../imgs/cap_15/img_07.png){.center-img .img-50}

adattare l'estensione della mappa (panoramica) al riquadro utilizzando l'icona ![](../../imgs/field_calc/icon/mActionMoveItemContent.png) e la rotellina del mouse con ctrl premuto.

![](../../imgs/cap_15/img_071.png){.center-img .img-50}

##### Anteprima Atlante

Attivare anteprima atlante per verificare che tutto sia ben impostato, cliccare sull'icona ![](../../imgs/field_calc/icon/mIconAtlas.png)

![](../../imgs/cap_15/img_08.png){.center-img .img-50}

##### Associare Viste alle mappa

Associare le **viste** create alla mappa `regioni` e `province`:

![](../../imgs/cap_15/img_09.png){.center-img .img-50}

![](../../imgs/cap_15/img_091.png){.center-img .img-50}

##### Grafico Bar Plot

Aggiungere grafico utilizzando l'icona ![](../../imgs/field_calc/icon/dataplotly.png) (occorre installare il Plugin DataPlotly) tracciando un rettangolo:

![](../../imgs/cap_15/img_010.png){.center-img .img-50}

cliccare su (4) `Setup Selected Plot` per accedere al setup del grafico:

![](../../imgs/cap_15/img_011.png){.center-img .img-50}

al punto (3) inserire questa espressione:

```py
contains(@atlas_geometry,point_on_surface($geometry))
```

![](../../imgs/cap_15/img_012.png){.center-img .img-50}

##### Tabella Attributi Province

Per aggiungere una tabella utilizzare l'icona ![](../../imgs/field_calc/icon/mActionAddTable.png) e disegnare un rettangolo:

![](../../imgs/cap_15/img_013.png){.center-img .img-50}

##### Etichetta Atlante

Per aggiungere una etichetta utilizzare l'icona ![](../../imgs/field_calc/icon/mActionLabel.png) e, tramite espressione, aggiungere il campo che contiene il nome della Regione corrente:

![](../../imgs/cap_15/img_014.png){.center-img .img-50}

##### Etichetta statica

Per aggiungere una etichetta utilizzare l'icona ![](../../imgs/field_calc/icon/mActionLabel.png) e digitare `Regioni e Province Italiane`:

![](../../imgs/cap_15/img_015.png){.center-img .img-50}

Aggiungere in basso a destra una etichetta con scritto: **Realizzato con QGIS**.

##### Immagine

Aggiungere una immagine utilizzando l'icona ![](../../imgs/field_calc/icon/mActionAddImage.png) e traciando un rettangolo:

![](../../imgs/cap_15/img_016.png){.center-img .img-50}

#### Sistemare

Dopo aver aggiunto tutti gli oggetti, occorre sistemare il tutto, per esempio: centrare e formattare meglio le etichette; sistemare meglio le varie mappe; formattare meglio la tabella attributi ecc...

##### Guide orizzontali e verticali

Ecco una prima sistemata con l'aggiunta di guide

![](../../imgs/cap_15/img_017.png){.center-img .img-50}

##### Formattare testo etichette

Formattare il testo delle etichette: dimensione, colore e allineamento

![](../../imgs/cap_15/img_018.png){.center-img .img-50}

##### Tabella Attributi

Formattazione tabella: tipo carattere, colore, dimensione, numero campi ec...

![](../../imgs/cap_15/img_019.png){.center-img .img-50}

dalle proprietà `Attributi` è possibile: riordinare i campi, rinominarli, eliminarli, aggiungerli ecc...

![](../../imgs/cap_15/img_0191.png){.center-img .img-50}

edito l'**Aspetto** della tabella:

![](../../imgs/cap_15/img_0192.png){.center-img .img-50}

##### Grafico

Configurare le varie opzioni del grafico

![](../../imgs/cap_15/img_020.png){.center-img .img-50}

##### Mappe

###### panoramica

La mappa `panoramica` Bloccare Layer e stile in modo da non modificare la visualizzazione della panoramica, questo perché il layer verrà successivamente modificato utilòizzando una tematizzazione tramite regola:

![](../../imgs/cap_15/img_021.png){.center-img .img-50}

###### regioni

Per visualizzare solo la regione corrente (e non le altre confinanti) un modo è quello di tematizzare il layer usando questo filtro nella regola:

```py
"den_reg"  =  @atlas_pagename 
```

![](../../imgs/cap_15/img_022.png){.center-img .img-50}

ecco cosa accade nel layout:

![](../../imgs/cap_15/img_023.png){.center-img .img-50}

###### province

Per visualizzare solo le province della regione corrente (e non le altre confinanti) un modo è quello di tematizzare il layer usando questo filtro nella regola:

```py
contains(@atlas_geometry,point_on_surface($geometry))
```

![](../../imgs/cap_15/img_024.png){.center-img .img-50}

ecco cosa accade nel layout:

![](../../imgs/cap_15/img_025.png){.center-img .img-50}

##### Numero pagina Atlante

Aggingere numero pagina e il totale delle pagine (sono due variabili):

![](../../imgs/cap_15/img_026.png){.center-img .img-50}

### Esportazione

=== "PDF pagina singola"

    Per esportare il PDF singolo della pagina corrente, pigiare l'icona ![](../../imgs/icon/mActionSaveAsPDF.png):

    ![](../../imgs/cap_15/img_027.png){.center-img .img-50}

=== "PDF file singolo multimapgina"

    per esportare file singolo PDF dell'atlante:

    ![](../../imgs/cap_15/img_028.png){.center-img .img-50}

    per esportare tanti file PDF quanti sono le pagine dell'atlante, togliere la spunta all'opzione `Esporta file singolo se possibile` e configurare `Espressione del nome di file in uscita` usando anche il costruttore di espressioni:

    ![](../../imgs/cap_15/img_029.png){.center-img .img-50}

    ![](../../imgs/cap_15/img_0271.png){.center-img .img-50}

    ![](../../imgs/cap_15/img_030.png){.center-img .img-50}

    per maggiori dettagli, la guida ufficiale di QGIS:<br> <https:/docs.qgis.org/testing/en/docs/user_manual/print_composer/create_output.html#export-as-pdf>

---

### Avanzato

=== "Generatore di geometrie"

    Visualizzare, aumentando lo spessore linea, il confine della regione corrente nella mappa `province`, questo si realizza tramite il `generatore di geometrie`:

    ![](../../imgs/cap_15/img_031.png){.center-img .img-50}

    risultato:

    ![](../../imgs/cap_15/img_032.png){.center-img .img-50}

=== "Colore Bar Plot"

    Modificare colore delle barre del grafico Bar Plot:

    ```py
    array_foreach(generate_series( 0, 1.01, 1/9 ),  ramp_color( 'Spectral', @element))
    ```

    ![](../../imgs/cap_15/img_033.png){.center-img .img-70}

=== "Colori categorizzati Bar Plot"

    È possibile tematizzare il layer delle Province con il metodo `Categorizzato` e associare un colore per ogni `Provincia`, questi colori possono essere usati anche nelle barre del Bar Plot; il processo è un po' lungo ma si puo' fare. Solo un piccolo cenno: occorre creare un nuovo campo e popolarlo con i colori (es: RGB) da utilizzare sia nella categorizzazione che nel grafico.


{!includes/disclaimer.md!}
