---
hide:
  # - navigation
  # - toc
title: Stampe semplici
description: Stampe semplici con il compositore di stampe
---

# Che cosa è il compositore di stampe di QGIS

!!! Abstract "Intro"

    Tutti i software danno la possibilità di stampare il lavoro sviluppato, anche in **QGIS** è possibile stampare le mappe che realizziamo tramite semplici layout di stampe o atlanti.

### Elementi layout

![](../../../imgs/cap_01/img_01.png){.center-img .img-70}

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

#### Es1  - Dati ISTAT
![](../../../imgs/cap_01/img_04.png)

#### Es2 - Analisi dati COVID-19
![](../../../imgs/cap_01/img_03.png)

#### Es3 - Analisi dati COVID-19
![](../../../imgs/cap_01/img_02.png)

#### Es4 - Mappatura e censimento Cimiteri
![](../../../imgs/cap_01/img_05.jpg)

### Atlanti

#### Es1 Dati ISTAT
![](../../../imgs/cap_01/webp-net-gifmaker.gif)

Fonte: <https://pigrecoinfinito.com/2017/07/09/qgis-atlas-con-pseudo-vettori-di-copertura/>

#### Es2 Dati ISTAT
![](https://pigrecoinfinito.files.wordpress.com/2016/10/output_gw5xlg.gif)

Fonte: <https://pigrecoinfinito.com/2016/10/16/qgis-atlas-con-grafici-dinamici/>

#### Es3 Dati ISTAT
![](https://pigrecoinfinito.files.wordpress.com/2019/11/webp.net-gifmaker.gif)

blog post: <https://pigrecoinfinito.com/2019/11/08/qgis-e-i-grafici-dinamici-nel-compositore-di-stampe/>

#### Es4 Analisi dati COVID-19
![](https://github.com/pigreco/COVID-19_ITA/blob/master/imgs/covid14_atlas.gif?raw=true)

#### Es5 Analisi dati COVID-19
![](https://pigrecoinfinito.files.wordpress.com/2020/04/w_andy3.gif?w=375&zoom=2)

Fonte: <https://pigrecoinfinito.com/2020/04/24/qgis-creare-un-atlas-inconsueto/>

#### Es6 Mappatura e censimento Pubblica illuminazione
![](../../../imgs/cap_01/atlas1.gif)

#### Es7 Mappatura e censimento Pubblica illuminazione
![](../../../imgs/cap_01/atlas2.gif)

## Interfaccia compositore di stampe

### Introduzione

L'interfaccia del compositore di stampe di QGIS si presanta suddiviso in varie sezioni e sono tutte personalizzabili, cioè è possibile aggiungere o disattivare barre e/o pannelli.

### Interfaccia

Sotto la spiegazione dell'interfaccia del compositore di stampe, configurazione di default

![](../../../imgs/cap_02/img_01.png)

1. **nome del layout**: Il nome del layout è definibile appena si crea uno nuovo, ma se lasciato vuoto il nome automatico sarà `Layout x`, con `x` numeri interi (1,2,3,4,...);la presenza dell'asterisco (`*`) indica che le modifiche NON sono state salvate;
2. **barra del menu**: menu che contiene tutti le funzioni/comandi;
3. **barra degli strumenti**: barra degli strumenti più utilizzati, sono divisi per argomento e ogni icona ha un pop-up di descizione;
4. **area di editing layout**: area del layout, che visualizza la/le pagina/e e dove realizzare la composizione;
5. **pannelli**: area pannelli con varie tab, ridimensionabile;
6. **barra di stato**: barra di stato che visualizza la posizone del cursore, numero della pagina e zoom (numerico o con selettore); sulla sinistra indica il numero degli elementi selezionati;
7. **righello**: righello che indica l'unità di misura e la dimensione della pagina.

### Menu

#### Layout

![](../../../imgs/cap_02/m_layout_01.png)

#### Modifica

![](../../../imgs/cap_02/m_modifica_01.png)

#### Visualizza

![](../../../imgs/cap_02/m_visualizza_01.png)

#### Oggetti

![](../../../imgs/cap_02/m_oggetti_01.png)

#### Aggiungi oggetto

![](../../../imgs/cap_02/m_aggiungi_oggetto_01.png)

#### Atlante

![](../../../imgs/cap_02/m_atlante_01.png)

#### Impostazioni

![](../../../imgs/cap_02/m_impostazioni_01.png)


### Barre degli strumenti

#### barra del layout

![](../../../imgs/cap_02/b_layout_01.png)

#### barra dell'atlante

![](../../../imgs/cap_02/b_atlante_01.png)

#### Barre navigazione

![](../../../imgs/cap_02/b_navigazione_01.png)

#### Barre delle azioni

![](../../../imgs/cap_02/b_azioni_01.png)

#### Barre degli strumenti

![](../../../imgs/cap_02/b_strumenti_01.png)


### Pannelli

![](../../../imgs/cap_02/p_pannelli_01.png)

#### Oggetti

![](../../../imgs/cap_02/p_oggetti_01.png)

#### Storico dei camandi

![](../../../imgs/cap_02/p_storico_01.png)

Elenca tutte le modifiche della sessione di lavoro e permette di `Annullare` (![](../../../imgs/field_calc/icon/mActionUndo.png) | `Ctrl + Z`) o `Rifare` (![](../../../imgs/field_calc/icon/mActionRedo.png) | `Ctrl + Y`) una determinata modifica.


#### Layout

![](../../../imgs/cap_02/p_layout_01.png)

#### Proprietà dell'oggetto

##### oggetto pagina

!!! note

     L'oggetto pagina è raggiungibile cliccando con il tasto destro del mouse sulla pagina.

![](../../../imgs/cap_02/p_proprieta_oggetto_02.png)

##### oggetto etichetta

![](../../../imgs/cap_02/p_proprieta_oggetto_01.png)

#### Guide

![](../../../imgs/cap_02/p_guide_01.png)

#### Atlante

![](../../../imgs/cap_02/p_atlante_01.png)

{!includes/disclaimer.md!}