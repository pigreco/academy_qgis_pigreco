---
hide:
  #- navigation
  - toc
title: Questionario
description: Questionario finale
---

# Questionario fine corso

Rispondere alle seguenti domande

## Domande a risposta multipla/aperta

1. **Gestione delle proiezioni in QGIS: è possibile definire Sistemi di Coordinate personalizzati?**
    - A) Sì, altrimenti non potremmo gestire, per esempio, le mappe catastali in CS;
    - B) No;
    - C) Sì, ma solo per i raster;
2. **Gestione delle proiezioni in QGIS: permette di visualizzare l'area di competenza per ogni SR?**
    - A) No;
    - B) Sì, è una dei motivi per cui rende QGIS rendi il GIS facile;
    - C) Non ho idea;
3. **Gestione delle proiezioni in QGIS: la riproiezione al volo è sempre attiva?**
    - A) No, va configurata volta per volta;
    - B) Sì, sempre dalla versione 3.0.0 di QGIS;
    - C) No, QGIS non gestisce la OTF (riproiezione al volo);
4. **In QGIS è importante scegliere il SR del Progetto?**
    - A) Sì, perché il valore di alcune espressioni (`$length`, `$Area`, `$Perimeter`) dipendono da questo;
    - B) No, qualunque SR di progetto va bene e per qualunque espressioni;
    - C) Sì, altrimenti non è possibile attivare la riproiezione OTF (On The Fly);
5. **Perché è sconsigliato installare molti Plugin?**
    - A) No, non è vero, posso installare tutti i plugin che desidero;
    - B) Perché l'installazione di molti plugin di terze parti, aumenta la probabilità di malfunzionamenti di QGIS;
    - C) Perché la comunità non vuole;
6. **Le espressioni di QGIS sono presenti quasi ovunque, vero?**
    - A) Sì, le espressioni vengono utilizzate per Tematizzare, etichettare,e tanto altro;
    - B) No, possono essere utilizzate solo per modificare la tabella degli attributi;
    - C) Sì, ma solo per gli shapefile poligonali;
7. **Oltre a PostgreSQL/PostGIS, quali altri DBMS gestisce QGIS?**
    - A) SQLite/SpatiaLite;
    - B) File Geodatabase ESRI;
    - C) GeoPackage;
8. **QGIS supporta pienamente i File Geodatabase della ESRI?**
    - A) Sì, ma solo in lettura;
    - B) Sì, li supporta pienamente in scrittura e lettura;
    - C) No, non lo supporta;
9. **Qual è il formato di output by default di QGIS?**
    - A) Shapefile;
    - B) SpatiaLite;
    - C) Geopackage;
10. **In QGIS è possibile usare i servizi OGC come WMS, WFS ec...**
    - A) No,
    - B) Sì, e tanti altri;
    - C) non so cosa siano i servizi OGC;
11. **In QGIS è possibile animare i dati caratterizzati da attributi temporali?**
    - A) Sì;
    - B) No;
    - C) Solo Totò Fiandaca ci riesce;
12. **È possibile caricare in QGIS un layer usando il DRAG and DROP dal Pannello Browser?**
    - A) No,
    - B) Non so cosa sia il Pannello Browser di QGIS;
    - C) Sì;
13. **Perché, in generale, è sconsigliato usare il Drag and Drop relativamente a layer vettoriali e file di testo?**
    - A) No, non è assolutamente sconsigliato;
    - B) Perché il Drag and Drop non legge tutte le caratteristiche del layer, quindi potrebbe importarlo in modo non completo/errato;
    - C) Perché per i layer vettoriali non legge la geometria;
14. **QGIS ha strumenti per disegnare in modo avanzato (parallelismo, ortogonalità, poligoni regolari, snap, topology, ecc...)?**
    - A) No, solo disegni base;
    - B) Sì, ha molti strumenti per il disegno tipo CAD;
    - C) No, perché nel GIS non interessa il disegno di precisione;
15. **Nel Field Calculator è possibile memorizzare le nostre espressioni personalizzate?**
    - A) Sì;
    - B) Assolutamento No;
    - C) Sì, ma solo per espressioni raster;
16. **Formato KML/KMZ di Google, QGIS li supporta pienamente?**
    - A) Sì, QGIS li supporta entrambi pienamente;
    - B) No, QGIS li legge, ma può esportare solo in KML, per il KMZ occorre plugin di terze parti;
    - C) No, QGIS non supporta questo formato;
17. **Se importassimo foto geotaggate in QGIS (per esempio quelle scattate da cellulare), cosa accadrebbe?**
    - A) QGIS li legge e traccia, in mappa, i relitivi punti di scatto;
    - B) darebbe un errore;
    - C) Nulla, QGIS non gestisce le foto geotaggate;
18. **Usando QGIS: caricare lo shapefile _Com01012025_g_WGS84.shp_ e il file csv _pop_res_ita_2025.csv_ (presenti in materiale_didattico_02 su Teams), conta i comuni italiani che terminano con la lettera indicata accanto al tuo nome, poi calcola la loro superficie totale (in km²) e popolazione residente.**
    - A) xxx,km²,pop;
    - B) yyy,km²,pop;
    - C) zzz,km²,pop;
19. **Tre livelli di Impostazioni in QGIS: Generale, Progetto e Layer; in quale imposteresti la lingua della GUI?**
    - A) Nelle proprietà del Layer;
    - B) nelle proprietà del Progetto;
    - C) nelle impostazioni Generali;
20. **Quale delle seguenti espressioni è vera in generale:**
    - A) `$area <> Area($geometry)`;
    - B) `$area = Area($geometry)`;
    - C) `$area = Area($geometry)/2`;
21. **QGIS ha un calcolatore raster con cui elaborare espressioni e ottenere degli output?**
    - A) Sì;
    - B) No;
    - C) Non lo so;
22. **Il georeferenziatore di QGIS permette di georeferenziare solo raster o anche vettori?**
    - A) Solo raster;
    - B) Sì, entrambi;
    - C) Solo vettori;
23. **È possibile stampare in serie con il compositore di stampe di QGIS?**
    - A) Sì, tramite l'attivazione dell'Atlante;
    - B) No, solo un layout per volta;
    - C) Sì, ma solo per i layer vettoriali.
24. **Cosa significa che QGIS è un software Open Source?**
    - A) Che è gratis;
    - B) Che ha l'intero codice presente in un repository pubblico accessibile a tutti;
    - C) Che si paga solo una tantum;
25. **QGIS oltre ad essere un software OS (Open Source) è anche Libero?**
    - A) Sì, perché non esiste una persona o un ente che decide per tutti ed è caratterizzato da sviluppatori volontari e non stipendiati da QGIS;
    - B) No, non è libero, c'è qualcuno che decide per tutti;
    - C) No, è OS ma non sarà mai Libero di fare quello che vuole;
26. **In Italia esistono gruppi o mailing list dedicate agli utenti di QGIS?**
    - A) Sì, c'è la lista qgis-it-user@lists.osgeo.org;
    - B) No, non c'è nessun gruppo o lista che si dedica a QGIS;
    - C) Ci sono liste dedicate ma solo in lingua inglese;
27. **QGIS è un software multipiattaforma, ovvero è installabile in Windows, Linux, MacOS e Tablet Android, iOS?**
    - A) Assolutamente vero;
    - B) Assolutamente falso;
    - C) No, QGIS funziona solo su Windows;
28. **In QGIS è possibile editare un file testuale CSV esistente?**
    - A) No;
    - B) Sì;
    - C) non lo so;
29. **A cosa serve il Pannello Browser?**
    - A) A connettere QGIS con le unità del PC e la rete esterna, creare ed eseguire query, connettersi ai servizi OGC e tanto altro;
    - B) A sfogliare solo raster;
    - C) A caricare solo layer vettoriali.
30. **Come si calcola NDVI per immagine Sentinel?**
    - A) (NIR + Red)-(NIR - Red);
    - B) (NIR - Red)/(NIR + Red);
    - C) Non lo so.
31. **Georeferenziazione, con la trasformazione Helmert quanti punti occorre tracciare?**
    - A) 2;
    - B) almeno 4;
    - C) 8.
32. **Cosa indica la risoluzione spaziale di una immagine satellitare?**
    - A) non lo so;
    - B) La dimensione del pixel espresso in metri cubi;
    - C) La dimensione del pixel espresso in unità di misura del terreno (solitamente metro).
33. **Che differenza c'è tra servizio OGC WMS e WFS?**
    - A) nessuna;
    - B) la prima espone raster e la seconda vettori;
    - C) la prima espone vettori e la seconda raster.
34. **Da un DTM (Modello digitale del terreno) posso estrarre?**
    - A) le curve di livello, che solo linee a stessa quota;
    - B) le quote del terreno;
    - C) l'altezza piezomentrica.
35. **Che differenza c'è tra stampa semplice e stampa di un atlante?**
    - A) nessuna;
    - B) con l'atlante posso stampare più pagine basandomi su un vettore di copertura;
    - C) con la stampa semplice ottengo sempre 3 stampe.
36. **Se volessi condividere un progetto QGIS con un collega per fargli vedere tutto il lavoro svolto:**
    - A) basterebbe condividere solo il file del progetto *.qgz o *.qgs;
    - B) metterei tutti i dati in una cartella e creerei il progetto a partire da questa cartella e ci salverei dentro anche il progetto e la condividerei;
    - C) non ho idea.
37. **Che differenza c'è tra una join tabellare e un relazione padre figlio?**
    - A) la join tabellare è una relazione 1:1 mentre la relazione padre figlio è una relazione 1 a molti;
    - B) nessuna differenza;
    - C) non lo so.
38. **Perché è utile usare i Raster Virtuali in QGIS?**
    - A) non lo so;
    - B) perché fanno risparmiare spazio nel disco e posso lavorare con un solo raster e tanto altro;
    - C) perché crea sempre una unica banda.
39. **Ho un vettore proiettato (EPSG:32633) e devo selezionare tutti i poligoni che hanno un perimetro maggiore di 100 km, quale espressione è corretta?**
    - A) Area(@geometry) > 100;
    - B) Length(@geometry) > 100;
    - C) Perimeter(@geometry) > 100000.
40. **Come posso creare una mappa di calore (heatmap) in QGIS?**
    - A) Utilizzando lo strumento "Mappa di calore" disponibile tra gli strumenti di processing o tramite tematizzazione;
    - B) Non è possibile creare mappe di calore in QGIS;
    - C) Solo tramite l'installazione di plugin specializzati.

{!includes/disclaimer.md!}
