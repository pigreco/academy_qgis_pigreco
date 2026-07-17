---
hide:
  # - navigation
  # - toc
title: Print Layout
description: Print Layout Introduzione
---

# Print Layout

## Introduzione

Il Print Layout è l'ambiente di QGIS dedicato alla composizione e alla stampa di mappe. È lo strumento che permette di:

- Creare mappe professionali
- Organizzare elementi cartografici
- Preparare documenti per la stampa

Il compositore di stampe offre funzionalità di layout e stampa in serie. Consente di aggiungere elementi come:

- mappe;
- etichette di testo; 
- immagini;
- legende;
- barre di scala;
- forme base;
- frecce;
- tabelle di attributi;
- tabella fisse;
- frame HTML; 
- grafici;
- e tanto altro.

È possibile ridimensionare, raggruppare, allineare, posizionare e ruotare ciascun elemento e regolare le proprietà per creare il layout. Il layout può essere stampato o esportato in formati immagine, PostScript, PDF o in formato SVG anche con livelli (layered). È possibile salvare il layout come modello e caricarlo di nuovo in un'altra sessione.

## Elementi layout

![](../../imgs/cap_01/img_01.png){.center-img .img-90}

**QGIS** consente di aggiungere, nel layout di stampa, elementi come:

- l'area della mappa (in questo caso coincide con l'intero foglio),
- reticolo;
- panoramica (contesto europeo);
- etichette di testo (Sicilia), 
- immagini (logo QGIS), 
- legende, 
- barre di scala, 
- forme di base (Stelle), 
- frecce (Nord), 
- tabelle di attributi, 
- cornici HTML (Pagina QGIS Italia),
- grafici (tramite il plugin DataPlotly);
- ecc...

È possibile ridimensionare, raggruppare, allineare, posizionare e ruotare ciascun elemento presente in mappa attraverso le sue proprietà. Il layout può essere stampato o esportato in formati immagine, PostScript, PDF, GeoPDF, SVG singolarmente o in serie. È possibile salvare il layout come modello e caricarlo di nuovo in un'altra sessione. Infine, la generazione di più mappe basate su un modello può essere effettuata tramite il generatore di atlante.

## Esempi concreti

### Layout statici

#### Dati ISTAT
![](../../imgs/cap_01/img_04.png){.center-img .img-80}

#### Analisi dati COVID-19
![](../../imgs/cap_01/img_03.png){.center-img .img-800}

![](../../imgs/cap_01/img_02.png){.center-img .img-80}

#### Mappatura e censimento Cimiteri

![](../../imgs/cap_01/img_05.jpg){.center-img .img-80}

### Atlanti

#### Dati ISTAT

![](../../imgs/evolution.png){.center-img .img-80}

Fonte: <https://pigrecoinfinito.com/2017/07/09/qgis-atlas-con-pseudo-vettori-di-copertura/>

![](https://pigrecoinfinito.files.wordpress.com/2016/10/output_gw5xlg.gif){.center-img .img-80}

Fonte: <https://pigrecoinfinito.com/2016/10/16/qgis-atlas-con-grafici-dinamici/>

![](https://pigrecoinfinito.files.wordpress.com/2019/11/webp.net-gifmaker.gif){.center-img .img-80}

blog post: <https://pigrecoinfinito.com/2019/11/08/qgis-e-i-grafici-dinamici-nel-compositore-di-stampe/>

#### Analisi dati COVID-19

![](https://github.com/pigreco/COVID-19_ITA/blob/master/imgs/covid14_atlas.gif?raw=true){.center-img .img-80}

![](https://pigrecoinfinito.files.wordpress.com/2020/04/w_andy3.gif?w=375&zoom=2){.center-img .img-60}

Fonte: <https://pigrecoinfinito.com/2020/04/24/qgis-creare-un-atlas-inconsueto/>

#### Mappatura e censimento Pubblica illuminazione

![](../../imgs/evolution.png){.center-img .img-80}

![](../../imgs/evolution.png){.center-img .img-60}

## Interfaccia Print Layout

L'interfaccia del compositore di stampe di QGIS si presanta suddiviso in varie sezioni e sono tutte personalizzabili, cioè è possibile aggiungere o disattivare barre e/o pannelli.

### Interfaccia

Sotto la spiegazione dell'interfaccia del compositore di stampe, configurazione di default

![](../../imgs/cap_02/img_01.png){.center-img .img-80}

1. **nome del layout**: Il nome del layout è definibile appena si crea uno nuovo, ma se lasciato vuoto il nome automatico sarà `Layout x`, con `x` numeri interi (1,2,3,4,...);la presenza dell'asterisco (`*`) indica che le modifiche NON sono state salvate;
2. **barra del menu**: menu che contiene tutti le funzioni/comandi;
3. **barra degli strumenti**: barra degli strumenti più utilizzati, sono divisi per argomento e ogni icona ha un pop-up di descizione;
4. **area di editing layout**: area del layout, che visualizza la/le pagina/e e dove realizzare la composizione;
5. **pannelli**: area pannelli con varie tab, ridimensionabile;
6. **barra di stato**: barra di stato che visualizza la posizone del cursore, numero della pagina e zoom (numerico o con selettore); sulla sinistra indica il numero degli elementi selezionati;
7. **righello**: righello che indica l'unità di misura e la dimensione della pagina.

### Menu

=== "Layout"

    ![](../../imgs/cap_02/m_layout_01.png){.center-img .img-70}

=== "Modifica"

    ![](../../imgs/cap_02/m_modifica_01.png){.center-img .img-70}

=== "Visualizza"

    ![](../../imgs/cap_02/m_visualizza_01.png){.center-img .img-70}

=== "Oggetti"

    ![](../../imgs/cap_02/m_oggetti_01.png){.center-img .img-70}

=== "Aggiungi oggetto"

    ![](../../imgs/cap_02/m_aggiungi_oggetto_01.png){.center-img .img-70}

=== "Atlante"

    ![](../../imgs/cap_02/m_atlante_01.png){.center-img .img-70}

=== "Impostazioni"

    ![](../../imgs/cap_02/m_impostazioni_01.png){.center-img .img-70}

---

### Barre degli strumenti

=== "barra del layout"

    ![](../../imgs/cap_02/b_layout_01.png){.center-img .img-70}

=== "barra dell'atlante"

    ![](../../imgs/cap_02/b_atlante_01.png){.center-img .img-70}

=== "Barre navigazione"

    ![](../../imgs/cap_02/b_navigazione_01.png){.center-img .img-70}

=== "Barre delle azioni"

    ![](../../imgs/cap_02/b_azioni_01.png){.center-img .img-70}

=== "Barre degli strumenti"

    ![](../../imgs/cap_02/b_strumenti_01.png){.center-img .img-70}

---

### Pannelli

![](../../imgs/cap_02/p_pannelli_01.png){.center-img .img-70}

=== "Oggetti"

    ![](../../imgs/cap_02/p_oggetti_01.png){.center-img .img-70}

=== "Storico dei camandi"

    ![](../../imgs/cap_02/p_storico_01.png){.center-img .img-70}

    Elenca tutte le modifiche della sessione di lavoro e permette di `Annullare` (![](../../imgs/icon/mActionUndo.png) | `Ctrl + Z`) o `Rifare` (![](../../imgs/icon/mActionRedo.png) | `Ctrl + Y`) una determinata modifica.

=== "Layout"

    ![](../../imgs/cap_02/p_layout_01.png){.center-img .img-50}

=== "Proprietà dell'oggetto"

    ![](../../imgs/cap_02/p_proprieta_oggetto_01.png){.center-img .img-50}

=== "Guide"

    ![](../../imgs/cap_02/p_guide_01.png){.center-img .img-70}

=== "Atlante"

    ![](../../imgs/cap_02/p_atlante_01.png){.center-img .img-70}


{!includes/disclaimer.md!}
