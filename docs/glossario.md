---
hide:
  - navigation
  # - toc
title: Glossario
description: Glossario dei termini GIS e QGIS
---

# Glossario :material-book-alphabet:

Terminologia GIS e QGIS utilizzata nel corso.

---

## A

**Attributo**
: Informazione alfanumerica associata a una geometria vettoriale. Gli attributi sono organizzati in campi (colonne) della tabella attributi.

**Atlante**
: Funzionalità di QGIS che permette di generare automaticamente una serie di mappe basate su un layer di copertura, producendo una mappa per ogni elemento.

## B

**Band (Banda)**
: Singolo canale di dati in un raster. Le immagini a colori hanno tipicamente 3 bande (RGB), mentre le immagini satellitari possono averne molte di più.

**Bibliografia**
: Sezione del corso che elenca i riferimenti bibliografici, risorse, pubblicazioni, articoli e documentazione utilizzati come fonte per i contenuti didattici. Include libri, siti web, paper scientifici e altre risorse di approfondimento sul GIS e QGIS.

**Buffer**
: Area di una determinata distanza intorno a una geometria vettoriale. Utilizzato per analisi di prossimità.

## C

**CAD**
: Computer-Aided Design. QGIS supporta funzionalità CAD avanzate per la digitalizzazione di precisione.

**Campo (Field)**
: Colonna della tabella attributi che contiene un tipo specifico di dati (testo, numero, data, etc.).

**Canvas**
: L'area principale di visualizzazione della mappa in QGIS.

**Clip**
: Operazione di geoprocessing che ritaglia un layer usando i confini di un altro layer come maschera di ritaglio.

**COG (Cloud Optimized GeoTIFF)**
: Formato raster ottimizzato per la lettura efficiente da cloud storage.

**Console Python**
: Interfaccia integrata in QGIS per eseguire comandi Python e script PyQGIS interattivamente.

**Copernicus**
: Programma europeo di osservazione della Terra che fornisce dati satellitari gratuiti attraverso la costellazione Sentinel.

**Coropletica**
: Tipo di mappa tematica in cui le aree geografiche (poligoni) sono colorate o tratteggiate in proporzione a un valore statistico che rappresentano (es: densità di popolazione, reddito medio). Utilizzata per visualizzare distribuzioni geografiche di fenomeni quantitativi.

**CRS (Coordinate Reference System)**
: Sistema di Riferimento delle Coordinate. Sistema matematico per assegnare coordinate a posizioni sulla superficie terrestre.

## D

**Datum**
: Modello matematico della forma della Terra utilizzato come riferimento per le coordinate geografiche.

**DEM (Digital Elevation Model)**
: Modello digitale di elevazione. Raster che rappresenta l'altitudine del terreno.

**Densità**
: Rapporto tra un valore quantitativo e l'area geografica in cui è distribuito (es: densità abitativa = abitanti/km²). In QGIS può essere calcolata usando il field calculator e visualizzata con mappe coropletiche. Utilizzata per normalizzare valori assoluti e rendere comparabili aree di dimensioni diverse.

**Digitalizzazione**
: Processo di creazione di dati vettoriali tracciando geometrie su una mappa o immagine di riferimento.

**Dissolve**
: Operazione che aggrega più geometrie adiacenti in una singola geometria basandosi su attributi comuni.

## E

**EPSG**
: European Petroleum Survey Group. Codice numerico che identifica univocamente un sistema di coordinate (es: EPSG:4326 per WGS84).

**Espressione**
: Formula che permette di calcolare valori dinamicamente in QGIS usando funzioni, operatori e campi.

**Etichetta (Label)**
: Testo visualizzato sulla mappa per identificare elementi geografici.

## F

**FAQ (Frequently Asked Questions)**
: Domande frequenti. Sezione del corso che raccoglie le domande più comuni poste dagli utenti QGIS con le relative risposte, utile per risolvere rapidamente dubbi ricorrenti.

**Feature (Elemento)**
: Singolo oggetto geografico in un layer vettoriale (un punto, una linea o un poligono) con la sua geometria e attributi.

**Field Calculator**
: Strumento per creare o aggiornare attributi usando espressioni.

## G

**GDAL (Geospatial Data Abstraction Library)**
: Libreria open source per la lettura e scrittura di formati raster geospaziali. Include anche OGR per i formati vettoriali.

**GeoDatabase**
: Database progettato per memorizzare, gestire e interrogare dati geografici (es: PostGIS, SpatiaLite).

**Geoprocessing**
: Insieme di operazioni di analisi e trasformazione spaziale dei dati geografici (buffer, clip, dissolve, etc.).

**GeoJSON**
: Formato di file aperto per codificare dati geografici usando JSON.

**Georeferenziazione**
: Processo di assegnazione di coordinate geografiche reali a un'immagine o mappa raster.

**GeoTIFF**
: Formato raster che include informazioni geografiche (coordinate, proiezione).

**GFOSS**
: Geographic Free and Open Source Software. Software geografico libero e open source.

**GML (Geography Markup Language)**
: Linguaggio XML per lo scambio di dati geografici.

**GPKG (GeoPackage)**
: Formato di file aperto basato su SQLite per dati geografici vettoriali e raster.

**GRASS GIS**
: Sistema informativo geografico open source integrato in QGIS Processing.

**Griglia di Coordinate**
: Sistema di linee visualizzate sulla mappa che mostrano i valori delle coordinate geografiche o proiettate.

## H

**HTML**
: HyperText Markup Language. Utilizzabile in QGIS per etichette e layout avanzati.

## I

**Indice Spettrale**
: Calcolo matematico basato su bande di immagini satellitari per evidenziare caratteristiche specifiche (es: NDVI per la vegetazione).

**ISTAT**
: Istituto Nazionale di Statistica. Ente italiano che produce statistiche ufficiali e fornisce dati geografici aperti come basi territoriali (confini amministrativi di comuni, province, regioni) e dati socio-economici. Fonte importante di dati per analisi GIS in Italia. Disponibili su [istat.it](https://www.istat.it).

## J

**Join**
: Operazione che combina attributi di due tabelle basandosi su un campo comune.

## K

**KML/KMZ**
: Formati di file utilizzati da Google Earth per dati geografici.

## L

**Layer (Livello)**
: Insieme di dati geografici visualizzato sulla mappa (può essere vettoriale o raster).

**Layout di Stampa (Print Layout)**
: Compositore per creare mappe stampabili con legenda, scala, nord, titoli, etc.

**LTR (Long Term Release)**
: Versione di QGIS con supporto prolungato (circa 1 anno).

## M

**Metadati**
: Informazioni che descrivono i dati geografici (autore, data, sistema di coordinate, precisione, etc.).

**Model Builder (Modellatore Grafico)**
: Strumento per creare flussi di lavoro automatizzati concatenando algoritmi di processing.

## N

**NDVI (Normalized Difference Vegetation Index)**
: Indice che misura la salute e la densità della vegetazione usando bande del vicino infrarosso e del rosso.

**NetCDF**
: Network Common Data Form. Formato per dati scientifici multidimensionali.

**Nord Geografico**
: Simbolo cartografico che indica l'orientamento della mappa verso il polo nord geografico.

## O

**OGC (Open Geospatial Consortium)**
: Organizzazione che sviluppa standard aperti per dati geospaziali.

**OGR**
: Componente vettoriale di GDAL per leggere e scrivere formati vettoriali (Shapefile, GeoPackage, GeoJSON, etc.).

**OTF (On-The-Fly)**
: Riproiezione al volo. QGIS riproietta automaticamente i layer in tempo reale nel sistema di coordinate del progetto.

**Outro**
: Sezione conclusiva del corso che fornisce indicazioni sui prossimi passi, risorse per approfondire, contatti della comunità QGIS e suggerimenti per continuare l'apprendimento dopo il completamento del corso.

**Overlay**
: Operazioni di sovrapposizione spaziale tra layer (intersezione, unione, differenza, differenza simmetrica).

## P

**Plugin**
: Estensione che aggiunge funzionalità a QGIS.

**PostGIS**
: Estensione spaziale per il database PostgreSQL.

**Processing**
: Framework di QGIS che fornisce accesso a centinaia di algoritmi di analisi spaziale.

**Proiezione Cartografica**
: Metodo matematico per rappresentare la superficie curva della Terra su una superficie piana.

**PyQGIS**
: API Python di QGIS per automatizzare operazioni, creare plugin e sviluppare applicazioni personalizzate.

## Q

**QML**
: QGIS Layer Style File. Formato XML per salvare e condividere stili di layer.

**QGIS Server**
: Applicazione per pubblicare progetti QGIS come servizi web.

**Query Builder**
: Strumento per costruire query SQL o espressioni per filtrare elementi di un layer in base a condizioni specifiche.

## R

**Raster**
: Tipo di dato geografico rappresentato da una griglia di celle (pixel), ognuna con un valore.

**Relazione**
: Collegamento tra tabelle che permette di navigare tra elementi correlati (es: comune → abitanti).

**Riproiezione**
: Conversione di coordinate da un sistema di riferimento a un altro.

## S

**SAGA GIS**
: System for Automated Geoscientific Analyses. Software GIS integrato in QGIS Processing.

**Selezione per Espressione**
: Strumento per selezionare elementi di un layer usando criteri definiti tramite espressioni.

**Sentinel**
: Costellazione di satelliti del programma Copernicus dell'ESA per l'osservazione della Terra. Include Sentinel-1 (radar), Sentinel-2 (ottico), Sentinel-3 (oceanografia), etc.

**Shapefile**
: Formato vettoriale popolare (ma obsoleto) composto da più file (.shp, .dbf, .shx, etc.).

**Simbologia**
: Rappresentazione visuale degli elementi geografici (colori, simboli, spessori, etc.).

**SLD (Styled Layer Descriptor)**
: Standard OGC per descrivere la vestizione di layer geografici.

**Snap (Aggancio)**
: Funzione che permette l'aggancio automatico dei vertici durante la digitalizzazione, garantendo precisione topologica.

**SpatiaLite**
: Estensione spaziale per il database SQLite.

**Spatial Index (Indice Spaziale)**
: Struttura dati che ottimizza le query spaziali indicizzando la posizione geografica degli elementi.

**SR (Sistema di Riferimento)**
: Vedi CRS.

## T

**Tabella Attributi**
: Tabella che contiene gli attributi (dati alfanumerici) associati agli elementi di un layer vettoriale.

**Time Manager**
: Plugin per visualizzare e animare dati spaziali con dimensione temporale.

**TOC (Table of Contents)**
: Pannello dei layer in QGIS. Mostra tutti i layer del progetto.

**Toolbox**
: Pannello di QGIS Processing che contiene tutti gli algoritmi disponibili.

**Topology (Topologia)**
: Relazioni spaziali tra geometrie (connessione, adiacenza, contenimento). Importante per la qualità dei dati.

## U

**UTM (Universal Transverse Mercator)**
: Sistema di coordinate molto usato che divide il mondo in zone meridiane.

## V

**Vestizione**
: Processo di definizione dell'aspetto visuale di un layer (colori, simboli, etichette).

**Vettore**
: Tipo di dato geografico rappresentato da geometrie (punti, linee, poligoni) con attributi associati.

**Virtual Layer**
: Layer temporaneo creato da una query SQL senza creare nuovi file.

**Virtual Raster**
: Catalogo che aggrega più file raster in un unico layer virtuale.

## W

**WFS (Web Feature Service)**
: Standard OGC per la distribuzione di dati vettoriali via web.

**WGS84**
: World Geodetic System 1984. Sistema di riferimento geografico globale (EPSG:4326).

**WMS (Web Map Service)**
: Standard OGC per la distribuzione di mappe raster via web.

## X

**XML**
: eXtensible Markup Language. Usato in molti formati GIS (GML, KML, QML, SLD).

## Z

**Zoom**
: Operazione per cambiare la scala di visualizzazione della mappa.

---

!!! tip "Aggiornamenti"
    Questo glossario viene aggiornato durante il corso con nuovi termini incontrati nelle lezioni.

{!includes/disclaimer.md!}
