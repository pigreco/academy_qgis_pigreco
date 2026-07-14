---
hide:
  # - navigation
  # - toc
title: Atlante con foto
description: Atlante con foto.
---

# Esempio di un atlante con foto

## Introduzione

!!! Abstract "Intro"

    Supponiamo di aver realizzato la **_Mappatura e Censimento della Pubblica Illuminazione_** di un Comune e avere a disposizione un layer puntuale (punti luce) e le foto (due) scattare per ogni punto. Realizzare un **atlante** utilizzando come layer di copertura il vettore **puntuale**, visualizzare le due foto e la tabella attributi del punto luce.

I dati per l'esercitazione sono nella cartella _**material didattico extra**_, cartella `atlas_foto`

sotto il risultato atteso - gif animata

![](../../imgs/cap_16/pagine/atlante_foto.gif)

## Cosa occorre

Per realizzare l'atlante descritto sopra occorre, oltre a [**QGIS**](https://qgis.org/it/site/), un database con i dati e le foto. Troverete tutto nel materiale didattico messo a disposizione.

## Iniziamo

### Importare dati

I dati sono nel geopackage **pill.gpkg** e sono:

1. _**pti_pill**_ (sono i punti della pubblica illuminazione);
2. _**pti_quadri**_ (sono i punti dei quadri elettrici);
3. _**grafo_stradale**_ (piccolo grafo stradale);
4. **_plg_aree_quadri_** (perimetrazione dei pti_pill).

Ogni layer è tematizzato e etichettato.

![](../../imgs/cap_16/img_01.png)

tabella attributi con due campi (`path_supporto` e `path_armatura`) che contengono i percorsi relativi alle foto:

![](../../imgs/cap_16/img_02.png)

la cartella che contiene le foto `DCIM_14_01_17` deve stare allo stesso livello del file di progetto `atlante_foto.qgz`.

![](../../imgs/cap_16/img_03.png)

### Creare relazione

Creare una relazione `1:m` tra i quadri (`pti_quadri`) e i punti luce (`pti_pill`):

![](../../imgs/cap_16/img_04.png)

### Nuovo Layout di stampa

=== "Creare"

    Creare nuovo layout ( <kbd>Ctrl + P</kbd>) e lo chiamiamo `atlante con foto`

    ![](../../imgs/cap_16/img_05.png)

    !!! Note
        
        Per impostazione predefinita, il formato pagina è un A4 orizzontale. Per cambiarlo, tasto destro mouse sulla pagina, proprietà Pagina.

=== "Viste"

    Aggiungere due viste per utilizzarle successivamente nell'atlante: **aree quadri** e **tutti i layer attivi**

    ![](../../imgs/cap_16/img_06.png)

=== "Add mappe"

    1. Aggiungo la prima mappa e la chiama `mappa`;
    2. aggiungo una seconda mappa e la chiama `panoramica`;

    per rinominare un oggetto mappa doppio clic sul nome, nel pannello Oggetti.

    ![](../../imgs/cap_16/img_07.png)

=== "Genera Atlante"

   - dal Pannello _Atlante_

   ![](../../imgs/cap_16/img_08.png)

   - dal Pannello _Prorietà dell'Oggetto_ (mappa `mappa`): `Controllato da Atlante`

   ![](../../imgs/cap_16/img_09.png)

=== "Panoramica"

    Impostare la **Panoramica** della mappa `mappa`

    ![](../../imgs/cap_16/img_10.png)

    adattare l'estensione della mappa (panoramica) al riquadro utilizzando l'icona ![](../../imgs/field_calc/icon/mActionMoveItemContent.png) e la rotellina del mouse con <kbd>Ctrl</kbd> premuto.

    ![](../../imgs/cap_16/img_11.png)

=== "Anteprima"

    Attivare anteprima atlante per verificare che tutto sia ben impostato, cliccare sull'icona ![](../../imgs/field_calc/icon/mIconAtlas.png)

    ![](../../imgs/cap_16/img_12.png)

=== "Mappe"

    Associare le **viste** create alla mappa `mappa` e `panoramica`:

    ![](../../imgs/cap_16/img_13.png)

    ![](../../imgs/cap_16/img_14.png)

    **NB:** Ho disattivato momentaneamente le etichette del layer `plg_aree_quadri`, e bloccato Layer e stili per poi riattivarlo.

=== "Tabella Attributi"

    Per aggiungere una tabella utilizzare l'icona ![](../../imgs/field_calc/icon/mActionAddTable.png) e disegnare un rettangolo:

    ![](../../imgs/cap_16/img_15.png)

    per duplicare la tabella, selezionarla e <kbd>Ctrl+C</kbd> e poi <kbd>Ctrl+V</kbd>:

    ![](../../imgs/cap_16/img_16.png)

    NB: nella tabella attributi del layer `pti_pill` sono presenti molti attributi, una tecnica per visualizzarli è quella di suddividere la tabella, noi la suddivideremo in dati sul `Supporto` e dati sull'`Armatura`:

    ![](../../imgs/cap_16/img_17.png)

=== "Foto"

    Per aggiungere una immagine utilizzare l'icona ![](../../imgs/field_calc/icon/mActionAddImage.png) e traciando un rettangolo:

    ![](../../imgs/cap_16/img_18.png)

**Osservazione:**

Se nel campo `path_supporto` mettessimo il percorso assoluto (`C:\Users\pigre\Desktop\atlas_foto/DCIM_14_01_17/DSCN2323.JPG`) basterebbe selezionare:

![](../../imgs/cap_16/img_19.png)

in quanto, appunto, il percorso è completo. Ma l'uso dei percorsi assoluti sono limitanti in quanto funzionerebbe solo nel nostro PC.

=== "Etichetta Atlante"

    Per aggiungere una etichetta utilizzare l'icona ![](../../imgs/field_calc/icon/mActionLabel.png) e, tramite espressione, aggiungere il campo che contiene il nome della feature corrente:

    ![](../../imgs/cap_16/img_20.png)

=== "Etichetta statica"

    Per aggiungere una etichetta utilizzare l'icona ![](../../imgs/field_calc/icon/mActionLabel.png) e digitare `Comune di xxxxxxxxxx Impianti di Pubblica Illuminazione`:

    ![](../../imgs/cap_16/img_21.png)

    !!! Note

        È suggerito ma non obbligatorio aggiungere i _**credits**_ in basso a destra con una etichetta: **Realizzato con QGIS**.

=== "Etichetta dinamiche"

    Per aggiungere una etichetta utilizzare l'icona ![](../../imgs/field_calc/icon/mActionLabel.png) e, tramite espressione, aggiungere il campo che contiene il parametro da visualizzare:

    Riferimento al Quadro elettrico: `'Rif. quadro' || '\n' ||"rif_quadro"`

    ![](../../imgs/cap_16/img_22.png)

    e numerazione pagine atlante : `@atlas_featurenumber ||'/'|| @atlas_totalfeatures` sono due variabili.

    ![](../../imgs/cap_16/img_23.png)

### Sistemare

Dopo aver aggiunto tutti gli oggetti necessari, occorre sistemare il tutto, per esempio:

- centrare e formattare meglio le etichette; 
- sistemare meglio le varie mappe; 
- formattare meglio la tabella attributi ecc...

#### Guide orizzontali e verticali

Ecco una prima sistemata con l'aggiunta di guide (che permettono di allineare bene gli aggetti, fungono da calamita)

![](../../imgs/cap_16/img_24.png)

#### Mappa principale

La mappa `mappa` la adattiamo a tutto la pagina seguendo le guide più esterne e la scala la imposto a `750` (`scala fissa` utilizzata nel `Controllato da Atlante`):

![](../../imgs/cap_16/img_25.png)

NB: l'atlante centra sempre la feature corrente, quindi il punto corrente è al centro della pagina.

##### Reticolo

Aggiungere un reticolo che individui il centro della mappa e quindi il punto luce corrente:

![](../../imgs/cap_16/img_26.png)

**NB:** nell'intervallo ho usato l'espressione: in X : `297/2 -15`, in Y : `210/2-15`

#### Tabelle attributi

Formattare le due tabelle, nella prima visualizzo gli attributi del supporto, nella seconda gli attributi dell'armatura:

![](../../imgs/cap_16/img_27.png)

#### Etichette

Formatto l'etichetta del **Rif. Quadro** aggiungendo anche uno sfondo bianco con trasparenza:

![](../../imgs/cap_16/img_28.png)

Formatto l'etichetta principale aggiungendo sfondo con trapsrenza e cornice:

![](../../imgs/cap_16/img_29.png)

Formatto l'etichetta dell'atlante che rappresenta il _**numero dell'etichetta**_ del supporto:

![](../../imgs/cap_16/img_30.png)

Formatto l'etichetta della numerazione pagina dell'atlante:

![](../../imgs/cap_16/img_301.png)

#### Panoramica

Sistemo meglio la panoramica, aggiungendo una trasparenza. Modifico anche lo `Stile cornice` utilizzando un `riempimento con centroide` che è meglio visualizzabile:

![](../../imgs/cap_16/img_31.png)

#### Foto

Riposizionare e ridimensionare le foto, utilizzare  `Modalità ridimensionamento` → `Zoom e Ridimensiona Cornice`:

![](../../imgs/cap_16/img_311.png)

#### Impostazioni etichette

Per evitare che le etichette dei punti luce stiano sotto i vari oggetti del layout, attivare l'opzione `Impostazioni Etichette` e aggiungere la spunta nell'oggetto che copre l'etichetta, cosi da non visualizzarla:

![](../../imgs/cap_16/img_32.png)

## Avanzate

### Usare Filtro

Se volessi stampare solo una porzione di dati, per esempio quelli relativi al quadro `Q083`:

![](../../imgs/cap_16/img_33.png)

Dal Pannello `Atlante`, attivare `Filtra con` e inserire questa espressione:

```py
 "rif_quadro"  =  'Q083' 
```

![](../../imgs/cap_16/img_331.png)

### Aggiungi Forma 

Per evidenziare il punto, aggiungere una forma con l'icona ![](../../imgs/field_calc/icon/mActionAddBasicShape.png), per tracciare un cerchio tenere premuto `shift`:

![](../../imgs/cap_16/img_332.png)

### Reticolo

Aggiungere un secondo reticolo cambiando il Sistema di Riferimento, utilizzare **EPSG:4326**:

![](../../imgs/cap_16/img_333.png)

---

## SECONDO ATLANTE

### Descrizione

Realizzare un secondo atlante utilizzando come layer di copertura i poligono che delimitano le aree di competenza dei quadri `plg_aree_quadri`:

![](../../imgs/cap_16/img_37.png)

![](../../imgs/cap_16/img_38.png)

oggetti aggiunti:

1. Etichetta mista, con testo statico e campo (Comune di xxxxxx è la parte statica Area Quadro è la parte statica, il valore del nome del quadro è contenuto nel campo `nome_quadro`);
2. due mappe: `mappa 1` è quella più estesa; `mappa 2` è la panoramica;
3. tabella attributi: Sorgente `Relazione Figli`; Relazione: `rel2`;
4. altre due etichette con dati riassuntivi come nome quadro, numero di pali e potenza impegnata; la seconda una sorta di cartiglio;
5. etichetta con numero pagina ` @atlas_featurenumber ||'/'|| @atlas_totalfeatures`;
6. etichetta con `Realizzato con QGIS`.

PS: per il calcolo del numero pali o potenza impegnata, occorre utilizzare le seguenti espressioni:

```py
/*numero pali*/
relation_aggregate( 
    relation:='rel2',
    aggregate:='count',
    expression:="fid")
```

```py
/*Potenza Tot.*/
relation_aggregate( 
    relation:='rel2',
    aggregate:='sum',
    expression:="potenza")
```

### Animazione

![](../../imgs/cap_16/pagine_Atlante_aree_quadri/atlante_quadri.gif)

### Extra

Stampare, in pagine diverse dello stesso layout, anche le foto che ricadono dentro ogni riquadro.

=== "Stampa 1"

    ![](../../imgs/cap_16/pagine_Atlante_aree_quadri/extra_01.png)

    espressione utilizzata per _Escludi Pagina del'Esportazione_ (nelle proprietà dell'oggetto Pagina) della pagine 3 se vuota:

    ```py
    array_length(relation_aggregate(
    relation:='rel2',
    aggregate:='array_agg',
    expression:="path_supporto"))<= 10 -- numero massimo di foto per pagina
    ```

=== "Stampa 2"

    ![](../../imgs/cap_16/pagine_Atlante_aree_quadri/extra_02.png)

---

## Salva Modello

Per salvare i layout creati come Modelli, cliccare nell'icona ![](../../imgs/field_calc/icon/mActionFileSaveAs.png) presente della barra del Layout:

![](../../imgs/cap_16/img_39.png)

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

!!! Warning

    Se mancasse una foto, QGIS stamperebbe delle X come sotto. È possibile evitarlo tramite una espressione.

![](../../imgs/cap_16/img_34.png)

```py
if( 
file_exists(@project_folder  ||'/'||"path_supporto"),
@project_folder  ||'/'||"path_supporto",
@project_folder  ||'/'||"nome_immagine_segnalazione")
```

dove `nome_immagine_segnalazione` è una immagine che creiamo noi e su cui possiamo scrivere quello che vogliamo, per esempio:

![](../../imgs/cap_16/es_manca_foto.png)

per maggiori dettagli, la guida ufficiale di QGIS:<br> <https://docs.qgis.org/testing/en/docs/user_manual/print_composer/create_output.html#export-as-pdf>

### Esportazione in GeoPDF Layered

Per esportare in GeoPDF occorre farlo per _singole_ esportazione e non in serie:

![](../../imgs/cap_16/img_35.png)

Verificare con Adobe Acrobat Reader DC:

![](../../imgs/cap_16/img_36.png)

[risorse:qgis](http://qgis-hub.fast-page.org/layouts.php)

{!includes/disclaimer.md!}
