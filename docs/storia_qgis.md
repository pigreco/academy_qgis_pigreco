---
hide:
  - navigation
  # - toc
title: Storia di QGIS
description: Storia di QGIS - Dalle origini al presente
---

# Storia di QGIS

## Le Origini (2002)

QGIS (originariamente chiamato **Quantum GIS**) è nato nel maggio 2002 come progetto open source sviluppato da **Gary Sherman**, un geologo e sviluppatore software. L'obiettivo iniziale era creare un visualizzatore GIS semplice e leggero per Linux che potesse leggere e visualizzare dati spaziali utilizzando le librerie open source esistenti.

![](imgs/gary_sherman_logo.png){.center-img .img-60}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Gary Sherman, fondatore di QGIS, con il logo originale del progetto</p>

### Il contesto

All'inizio degli anni 2000, il mondo GIS era dominato da software proprietari costosi come ESRI e MapInfo, che giravano principalmente su Windows. Gli strumenti open source disponibili erano limitati e spesso difficili da usare. Sherman, lavorando con sistemi UNIX e Linux, sentiva la necessità di un software che permettesse di visualizzare i dati di **PostGIS** (un'estensione spaziale per PostgreSQL) su questi sistemi operativi.

### I primi passi

Il progetto è iniziato come un **hobby personale**. Il primo file C++ conteneva solo **2.705 righe di codice** _(oggi sono oltre 2 Mln)_ e si limitava semplicemente a elencare le tabelle di PostGIS. Da queste umili origini, QGIS non opera in isolamento, ma è costruito sopra una solida base di altri progetti open source:

- **GDAL**: libreria per la trasformazione e gestione dei dati raster e vettoriali
- **PROJ**: sistema di proiezioni coordinate
- **Python**: linguaggio di scripting per l'automazione e i plugin
- **Qt**: framework per l'interfaccia grafica multipiattaforma
- **PostGIS**: estensione spaziale di PostgreSQL

## I Primi Anni (2002-2007)

### Versione 0.1 (luglio 2002)

![alt text](https://raw.githubusercontent.com/pigreco/splashscreenQGIS/refs/heads/master/splash_QGIS/splash_0.1.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Splash screen della prima versione pubblica di QGIS (luglio 2002)</p>

- Prima release pubblica
- Supporto per PostgreSQL/PostGIS
- Capacità di visualizzare shapefile
- Interfaccia utente di base
- Disponibile solo per Linux

### Crescita del progetto
Nel corso dei primi anni, QGIS ha attirato l'attenzione di sviluppatori e utenti GIS in tutto il mondo. Il progetto è cresciuto grazie ai contributi della comunità open source, con sviluppatori che hanno aggiunto nuove funzionalità e migliorato l'interfaccia.

La crescita è stata **rapidissima** in termini di:

- **Commit**: contributi al codice da centinaia di sviluppatori
- **Contributori principali**: un nucleo sempre più ampio di sviluppatori attivi
- **Interesse globale**: adozione in tutti i continenti

La comunicazione della comunità si è evoluta nel tempo, spostandosi dalle tradizionali **mailing list** verso piattaforme moderne come **GitHub** e **GitLab**. La base di codice è cresciuta enormemente: attualmente supera il **milione di righe di codice C++**, oltre a una vasta integrazione di Python per plugin e script.

### Fondazione OSGeo (2006)
Nel 2006, QGIS è diventato un progetto membro fondatore della **Open Source Geospatial Foundation (OSGeo)**, un'organizzazione senza scopo di lucro dedicata al supporto e alla promozione dello sviluppo collaborativo di software geospaziale open source.

## Il Grande Salto (2007-2013)

### Versione 1.0 "Kore" (2009)
Dopo sette anni di sviluppo, è stata rilasciata la prima versione stabile:

![](https://raw.githubusercontent.com/pigreco/splashscreenQGIS/refs/heads/master/splash_QGIS/splash_1.0.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Splash screen QGIS 1.0 "Kore" - Prima versione stabile (2009)</p>

- Supporto multi-piattaforma (Windows, Mac OS X, Linux, Unix)
- Compositore di stampe
- Supporto per numerosi formati dati
- Sistema di plugin
- Interfaccia utente migliorata

### Adozione crescente
Durante questo periodo, QGIS ha iniziato ad essere adottato da:

- Università e istituti di ricerca
- Organizzazioni non profit
- Agenzie governamentali
- Professionisti del settore GIS

## L'Era Moderna (2013-2020)

### Versione 2.0 "Dufour" (2013)
Una release rivoluzionaria che ha portato:

![](https://raw.githubusercontent.com/pigreco/splashscreenQGIS/refs/heads/master/splash_QGIS/splash_2.0.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Splash screen QGIS 2.0 "Dufour" - Release rivoluzionaria (2013)</p>

- Nuovo sistema di rendering
- Supporto migliorato per i database spaziali
- Strumenti di elaborazione avanzati
- Motore delle espressioni potenziato
- Vestizione avanzata con supporto per simboli multipli

### Versione 2.18 "Las Palmas" (2017)
L'ultima della serie 2.x, considerata una delle versioni più stabili e utilizzate fino all'arrivo della versione 3.

![](https://raw.githubusercontent.com/pigreco/splashscreenQGIS/refs/heads/master/splash_QGIS/splash_2_18.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Splash screen QGIS 2.18 "Las Palmas" - Ultima versione della serie 2.x (2017)</p>

## Le Sfide della Crescita

### I "dolori della crescita"

La transizione da progetto hobbistico a software professionale ha comportato costi e sfide significative:

**1. Testing e Qualità**

- Necessità di **test automatizzati** per garantire la stabilità
- Verifica della compatibilità su multiple piattaforme
- Gestione di bug sottili nelle trasformazioni coordinate

**2. Pacchetti di installazione**

- Gli **installer** sono uno dei punti più critici del progetto
- Creare pacchetti per Windows e macOS è estremamente difficile
- Gestione delle numerose dipendenze da librerie esterne
- Compilazione e test su architetture diverse

**3. Documentazione**

- Mantenere la documentazione costantemente aggiornata
- Ogni piccola modifica all'interfaccia utente richiede l'aggiornamento degli screenshot
- Traduzione in oltre 40 lingue
- Rischio di confondere gli utenti con documentazione obsoleta

### QGIS 3.0 "Girona" (2018)
Un completo rinnovamento del codice che ha rappresentato un momento di forte tensione per il progetto:

![](https://raw.githubusercontent.com/pigreco/splashscreenQGIS/refs/heads/master/splash_QGIS/splash_3_0_0.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Splash screen QGIS 3.0 "Girona" - Rinnovamento completo del codice (2018)</p>

**Cambiamenti radicali (Breaking Changes)**:

- Migrazione a **Python 3** e **Qt 5** (abbandono di Qt4, ormai a fine vita)
- Supporto 3D nativo
- Interfaccia utente modernizzata
- Miglioramenti significativi nelle prestazioni
- Supporto avanzato per server QGIS
- Integrazione migliorata con il processing framework

**L'impatto sulla comunità**:

- Molti **plugin esistenti hanno smesso di funzionare**
- Necessario uno sforzo massiccio di comunicazione agli autori di plugin
- Gli sviluppatori di plugin hanno dovuto riscrivere e adattare il loro codice
- **Rebranding completo**: nuovo logo, sito web rinnovato, merchandising aggiornato
- Campagna per incoraggiare le organizzazioni a migrare dalla versione 2

## L'Evoluzione Recente (2020-Oggi)

### Modello di rilascio
Per rispondere alle esigenze di utenti che utilizzano QGIS per scopi critici (come il giornalismo, l'accademia o la pubblica amministrazione), il progetto si è concentrato sulla **prevedibilità dei rilasci**.

**Evoluzione del modello**:

- **Passato**: rilasci sporadici e disorganizzati
- **Presente (dal 2015)**: ciclo di rilascio pianificato e prevedibile

**Ciclo attuale** (dal 2013):

- Una nuova versione ogni **4 mesi**
- Una versione **LTR (Long Term Release)** ogni anno
- Supporto esteso per le versioni LTR (**1 anno** di manutenzione)
- Bug-fixing prioritario sulle versioni LTR per garantire stabilità

Questo approccio permette agli utenti di scegliere tra:

- **Versioni più recenti**: per chi vuole le ultime funzionalità
- **Versioni LTR**: per chi necessita di stabilità e supporto prolungato

### Sistema di numerazione delle versioni

QGIS utilizza un sistema di numerazione **semantica** a tre cifre: `MAJOR.MINOR.PATCH`

**Esempio: QGIS 3.40.1**

- **3** = Versione MAJOR - Cambiamenti radicali (API, Qt, Python), possibili incompatibilità con versioni precedenti
- **40** = Versione MINOR - Nuove funzionalità, rilascio ogni 4 mesi
- **1** = Versione PATCH - Bug fix e correzioni minori

**Versioni LTR (Long Term Release)**:

- Ogni terzo rilascio MINOR (ogni anno circa) diventa una versione LTR
- Esempi di LTR nella serie 3.x: 3.10, 3.16, 3.22, 3.28, 3.34, 3.40
- Le versioni LTR ricevono supporto esteso di 1 anno con bug-fixing prioritario
- Sono identificate con la sigla "LTR" nel nome (es. "QGIS 3.40 LTR Bratislava")

### Versioni significative

**QGIS 3.10 "A Coruña" (ottobre 2019)** - Prima LTR della serie 3.x

![](https://raw.githubusercontent.com/pigreco/splashscreenQGIS/refs/heads/master/splash_QGIS/splash_3_10_ltr.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Splash screen QGIS 3.10 "A Coruña" - Prima LTR della serie 3.x (2019)</p>

- Stabilità migliorata
- Ampiamente adottata da organizzazioni che necessitavano di supporto a lungo termine

**QGIS 3.16 "Hannover" (ottobre 2020)**

![](https://raw.githubusercontent.com/pigreco/splashscreenQGIS/refs/heads/master/splash_QGIS/splash_3_16.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Splash screen QGIS 3.16 "Hannover" (2020)</p>

- Miglioramenti all'editor di mesh
- Supporto per annotazioni 3D
- Nuovi algoritmi di processing

**QGIS 3.22 "Białowieża" (ottobre 2021)**

![](https://raw.githubusercontent.com/pigreco/splashscreenQGIS/refs/heads/master/splash_QGIS/splash_3_22.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Splash screen QGIS 3.22 "Białowieża" (2021)</p>

- Miglioramenti alla gestione dei profili di elevazione
- Nuovi strumenti di digitalizzazione
- Supporto migliorato per i dataset temporali

**QGIS 3.28 "Firenze" (ottobre 2022)**

![](https://raw.githubusercontent.com/pigreco/splashscreenQGIS/refs/heads/master/splash_QGIS/splash328.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Splash screen QGIS 3.28 "Firenze" - Versione dedicata alla città italiana (2022)</p>

- Supporto per profili utente multipli
- Miglioramenti significativi al processing framework
- Nuove funzionalità per l'analisi 3D

**QGIS 3.34 "Prizren" (ottobre 2023)**

![](https://raw.githubusercontent.com/pigreco/splashscreenQGIS/refs/heads/master/splash_QGIS/splash334ltr.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Splash screen QGIS 3.34 "Prizren" LTR (2023)</p>

- Ultima versione LTR al momento della stesura di questo corso
- Stabilità eccellente
- Ampia gamma di funzionalità mature

**QGIS 3.40 LTR "Bratislava" (2024)**

![](https://raw.githubusercontent.com/pigreco/splashscreenQGIS/refs/heads/master/splash_QGIS/splash340.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Splash screen QGIS 3.40 "Bratislava" LTR - Versione stabile del 2024</p>

- Continui miglioramenti alle prestazioni
- Nuove funzionalità per l'analisi dati
- Integrazione sempre più stretta con cloud e servizi web
- Supporto avanzato per dataset di grandi dimensioni

**QGIS 3.44 LTR "Solothurn" (giugno 2025)**

![](https://qgis.org/project/visual-changelogs/visualchangelog344/images/projects/3807b5d1851cc87bda040f637e1f4024bc11c58a.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: 10px;">Splash screen QGIS 3.44 "Solothurn" LTR - Prossima versione Long Term Release</p>

QGIS 3.44 rappresenta un'importante milestone nella serie 3.x prima della transizione a QGIS 4. Questa versione LTR dedicata alla città svizzera di Solothurn porta con sé significativi miglioramenti e consolidamenti:

- **Stabilità garantita**: versione LTR con supporto esteso fino al 2026
- **Perfezionamenti dell'interfaccia utente**: mejora della usabilità e accessibilità
- **Performance**: ottimizzazioni per l'elaborazione di dataset complessi
- **Plugin e compatibilità**: supporto completamente retrocompatibile con plugin della serie 3.x
- **Cloud integration**: miglioramenti nell'integrazione con servizi cloud geospaziali (AWS S3, Azure, ecc.)
- **Analisi avanzate**: nuovi algoritmi nel processing framework
- **Supporto hardware**: migliore sfruttamento delle GPU per rendering e analisi accelerate

**Quando usare QGIS 3.44 LTR**:

- Ambienti di **produzione** che richiedono stabilità
- Organizzazioni che desiderano supporto tecnico a lungo termine
- Progetti che necessitano compatibilità con infrastrutture legacy
- Utenti professionisti che necessitano di rilasci predicibili e testati

## QGIS 4: La Rivoluzione (aprile 2026)

![](https://qgis.org/project/visual-changelogs/visualchangelog40/images/projects/388120cc4ef54e6b606481e3c2b08ba3738b5c17.png){.center-img .img-40}

QGIS 4 rappresenta il prossimo grande passo evolutivo del progetto, simile a quello che è stato QGIS 3.0 nel 2018. Questa nuova versione major porta con sé cambiamenti radicali e modernizzazioni significative:

### Principali innovazioni di QGIS 4

**1. Qt 6 e Python 3.11+**

- Migrazione da **Qt 5** a **Qt 6**, la versione più moderna del framework grafico
- Supporto esclusivo per **Python 3.11 e versioni successive**
- Abbandono di dipendenze obsolete per modernizzare la codebase

**2. Rinnovamento dell'Interfaccia Utente**

- Riprogettazione dell'UI seguendo i principali design systems moderni
- Tema scuro migliorato e personalizzabile
- Responsive design per supportare schermi di diverse dimensioni
- Accessibilità potenziata per utenti con disabilità

**3. Performance e Architettura**

- Engine di rendering completamente riscritto
- Supporto nativo per multi-threading avanzato
- Ottimizzazioni per GPU acceleration
- Caricamento parallelo di dataset voluminosi

**4. Web e Cloud-First**

- Integrazione potenziata con QGIS Web (OGC compliant)
- Server QGIS come componente di prima classe
- Sincronizzazione in tempo reale con servizi cloud
- API REST completamente ridisegnata

**5. Ecosistema dei Plugin**

- Nuovo sistema di gestione plugin con verifica automatica della compatibilità
- Plugin sandbox per maggiore sicurezza
- Marketplace migliorato con rating e review della comunità
- Tools di sviluppo modernizzati

**6. Supporto 3D/4D Nativo**

- Gestione avanzata di dati temporali (time-series)
- Rendering 3D potenziato su GPU
- Supporto per Point Clouds (LiDAR) come dato nativo
- Visualizzazione 4D (spazio + tempo)

**7. Machine Learning e AI**

- Integrazione natale di algoritmi di ML nel processing
- Supporto per modelli ONNX
- Classificazione automatica delle immagini
- Riconoscimento di pattern spaziali

### Breaking Changes in QGIS 4

Come accadde per QGIS 3.0, questa transizione comporterà:

- **Plugin incompatibili**: molti plugin della serie 3.x richiederanno adattamenti
- **API modified**: cambamenti significativi nell'API Python e C++
- **Rebranding**: nuovo logo e identità visuale per il progetto
- **Deprecazioni**: rimozione di funzionalità obsolete

**Impatto sugli sviluppatori di plugin**:

- Necessità di aggiornare il codice per Qt 6 e PyQt 6
- Migrazione da slot/signal vecchi a nuove sintassi
- Compatibilità con il nuovo sistema di gestione dei plugin
- Documentazione e guide di migrazione fornite dalla comunità

## Il Modello di Sviluppo

### Community-Driven
QGIS è sviluppato da una **comunità globale** di volontari e professionisti, considerata una delle più amichevoli nel mondo open source:

**Numeri della comunità**:

- Oltre 50 sviluppatori attivi
- Migliaia di contributori occasionali
- Traduttori in più di 40 lingue
- Documentatori e formatori

**Diversità come punto di forza**:

- La diversità geografica e culturale dei contributori permette di affrontare problemi specifici di diverse nazioni
- Esempio: gestione delle proiezioni coordinate particolari in Australia e Nuova Zelanda
- Rappresentanza globale garantisce che il software sia utilizzabile in contesti culturali diversi

**Sensibilità culturale**:

- Attenzione a non inserire elementi culturalmente specifici che potrebbero escludere alcuni utenti
- Esempio: rimozione di un "cappello di Babbo Natale" digitale perché non appropriato per tutte le culture
- Rinominazione degli incontri da "hackfest" a "Developer Meetings" per facilitare l'approvazione aziendale dei viaggi

**Mentoring e inclusività**:

- Pratica comune di mentoring per far crescere nuovi talenti
- Nessuna discriminazione per scelte tecniche o sistema operativo utilizzato
- Ambiente accogliente per sviluppatori di tutti i livelli di esperienza

### Governance
Il progetto è guidato da una struttura formale che garantisce trasparenza e democrazia:

![](imgs/organizzazione_qgis.png){.center-img .img-40}

<p style="text-align: center; font-style: italic; color: #678; margin-top: -10px;">Struttura organizzativa del progetto QGIS</p>

- **QGIS Project Steering Committee (PSC)**: prende decisioni strategiche su aspetti critici come modifiche alle API, rebranding e direzione generale del progetto
- **Board (Consiglio Direttivo)**: i membri vengono eletti dalla comunità e fungono da punto di riferimento per risolvere conflitti e questioni difficili
- **Community Voting Members**: votano su questioni importanti
- **Core developers**: mantengono e sviluppono il codice principale

Questa struttura garantisce che ci sia sempre un meccanismo democratico per prendere decisioni complesse che potrebbero dividere la comunità.

### Finanziamento
Sebbene QGIS sia gratuito da utilizzare, il suo mantenimento richiede fondi significativi per:

- Infrastruttura server e hosting
- Bug-fixing e manutenzione del codice
- Sviluppo di nuove funzionalità
- Documentazione e supporto

QGIS è sostenuto attraverso:

**1. Programma "Sustaining Members" (Membri Sostenitori)**

- Il termine "Sustaining" è stato scelto perché molte aziende europee non potevano giustificare contabilmente il termine "sponsorship"
- Le organizzazioni contribuiscono con donazioni regolari
- Alternativa molto più economica rispetto alle licenze di software proprietari

**2. Donazioni dirette**

- Da parte di utenti individuali e organizzazioni
- Donazioni una tantum o ricorrenti

**3. Certificati di formazione ufficiali**

- Programma di certificazione per formatori
- Contribuisce alle entrate del progetto

**4. Contratti di sviluppo**

- Finanziamento di funzionalità specifiche richieste da aziende o enti

**5. Grant Projects (Progetti sovvenzionati)**

- Sistema di sovvenzioni votato dalla comunità
- Finanzia lo sviluppo di nuove funzionalità o il refactoring di codice obsoleto
- Aiuta ad attirare nuovi sviluppatori offrendo compensi per il tempo dedicato

**Utilizzo dei fondi**:

- **Round di bug-fixing**: pagamento di sviluppatori principali per stabilizzare il codice
- **Contributi upstream**: correzioni anche nei progetti a monte come GDAL, PROJ e Qt
- **Infrastruttura**: server, hosting, servizi cloud
- **Nuove funzionalità**: attraverso il sistema di grant votato dalla comunità

La selezione degli sviluppatori pagati si basa sulla **fiducia consolidata** e sulla capacità dimostrata di consegnare risultati di qualità entro i tempi prestabiliti.

## QGIS in Italia

L'Italia ha una **comunità QGIS attiva**:

### [QGIS.it](http://qgis.it/)

- Gruppo utenti italiano (IUG - Italian User Group)
- Organizza meeting annuali
- Promuove l'uso di QGIS in Italia
- Coordina la traduzione italiana

### Adozione istituzionale
QGIS è utilizzato da:

- Regioni e Province
- Comuni
- Enti di ricerca (CNR, ISPRA, ecc.)
- Università
- Professionisti (geometri, geologi, architetti, pianificatori)

### Eventi

- **QGIS Italia Meeting**: evento annuale della comunità italiana
- Workshop e corsi di formazione in tutto il territorio
- Webinar e eventi online

## I Numeri di QGIS (2024)

[fonte](https://feed.qgis.org/metabase/public/dashboard/df81071d-4c75-45b8-a698-97b8649d7228)

- **Oltre 2 milioni** di download al mese
- **Più di 40 lingue** supportate
- **Oltre 1.000 plugin** disponibili nel repository ufficiale
- **200+ algoritmi nativi** nel processing framework
- **Migliaia di organizzazioni** che lo utilizzano quotidianamente

## Filosofia e Valori

### Open Source
QGIS è rilasciato sotto **GNU General Public License (GPL)**, garantendo:

- Libertà di usare il software per qualsiasi scopo
- Libertà di studiare e modificare il codice
- Libertà di distribuire copie
- Libertà di migliorare e condividere i miglioramenti

### Accessibilità
QGIS è progettato per essere:

- **Gratuito**: nessun costo di licenza
- **Multi-piattaforma**: Windows, macOS, Linux, BSD, Android
- **User-friendly**: interfaccia intuitiva e ben documentata
- **Estensibile**: sistema di plugin per personalizzazioni

### Interoperabilità
QGIS supporta:

- **Standard aperti**: OGC (WMS, WFS, WCS, WPS, CSW)
- **Numerosi formati**: shapefile, GeoPackage, GeoJSON, PostGIS, SpatiaLite, e molti altri
- **Integrazione**: con software come GRASS GIS, SAGA GIS, R, Python

## Concorrenza e Posizionamento nel Mercato

### I principali concorrenti
I principali concorrenti commerciali di QGIS sono:

- **ESRI (ArcGIS)**: leader di mercato nel settore GIS proprietario
- **MapInfo**: altro software GIS commerciale consolidato

QGIS sta conquistando quote di mercato significative, specialmente nei **governi locali** (ad esempio in Australia) e nelle organizzazioni con budget limitati o che preferiscono soluzioni open source.

### Ecosistema dei Plugin

**Licenza e libertà**:

- QGIS è rilasciato sotto licenza **GPL (GNU General Public License)**
- Supporta sia repository di plugin **pubblici** che **privati** per uso aziendale interno
- Le organizzazioni possono sviluppare plugin proprietari senza doverli condividere pubblicamente

**Monetizzazione dei plugin**:

- La maggior parte dei plugin è **gratuita** e open source
- Alcuni sviluppatori monetizzano attraverso:
    - **Consulenze** per personalizzazione e supporto
    - **Collegamenti a servizi web a pagamento**
    - **Supporto tecnico premium**
    - **Sviluppo di plugin custom** su commissione

**Contributi aziendali**:
Per le aziende che traggono profitto da QGIS senza avere sviluppatori interni, si suggerisce di:

- Aderire al programma **Sustaining Members**
- Presentarlo come investimento: alternativa molto più economica rispetto alle licenze software proprietarie
- Contribuire con donazioni proporzionate al valore ricevuto
- Finanziare lo sviluppo di funzionalità specifiche attraverso grant projects

## Il Futuro di QGIS

### Direzioni di sviluppo
Le aree di sviluppo futuro includono:

- **Cloud e Web**: migliore integrazione con servizi cloud
- **Machine Learning**: integrazione di algoritmi AI per analisi avanzate
- **Performance**: ottimizzazione per dataset sempre più grandi
- **3D e 4D**: supporto avanzato per dati tridimensionali e temporali
- **Mobile**: miglioramenti per l'uso su dispositivi mobili (QField)

### Sostenibilità
La comunità QGIS lavora continuamente per garantire la **sostenibilità a lungo termine** del progetto attraverso:

- Diversificazione delle fonti di finanziamento
- Coinvolgimento di nuovi sviluppatori
- Formazione e documentazione
- Partnerships con organizzazioni internazionali

## Perché QGIS ha avuto successo?

1. **Qualità del software**: performance, stabilità e funzionalità paragonabili a soluzioni commerciali
2. **Comunità attiva**: supporto rapido, documentazione estesa, forum vivaci
3. **Flessibilità**: adattabile a qualsiasi esigenza grazie ai plugin
4. **Costi**: nessun costo di licenza, ideale per organizzazioni con budget limitati
5. **Trasparenza**: codice sorgente aperto e processo di sviluppo trasparente
6. **Standard aperti**: conformità agli standard internazionali OGC
7. **Formazione**: abbondanza di materiali didattici e corsi disponibili

## Risorse per approfondire

- **Sito ufficiale**: [qgis.org](https://qgis.org)
- **Sito italiano**: [qgis.it](https://qgis.it)
- **Documentazione**: [docs.qgis.org](https://docs.qgis.org)
- **Blog ufficiale**: [blog.qgis.org](https://blog.qgis.org)
- **Repository GitHub**: [github.com/qgis/QGIS](https://github.com/qgis/QGIS)
- **Canale YouTube**: QGIS Official Channel
- **Nathan Woodrow**: [The life of open source spatial with QGIS - From hobby to grown up, with bonus growing pains](https://www.youtube.com/watch?v=NX5tx6qGFaA&t=2s)

---

!!! info "Curiosità"
    Il nome "Quantum GIS" originale è stato gradualmente abbandonato nel 2013, mantenendo solo l'acronimo **QGIS**. Ogni versione principale è dedicata a una città che ha ospitato un importante evento QGIS (hackfest, meeting degli sviluppatori, o conferenza utenti).

!!! quote "La visione di Gary Sherman"
    *"L'obiettivo di QGIS è democratizzare l'accesso agli strumenti GIS, rendendoli disponibili a chiunque abbia bisogno di lavorare con dati spaziali, indipendentemente dal budget o dal sistema operativo utilizzato."*

!!! note "Nathan Woodrow - Sviluppatore Core"
    Molte delle informazioni dettagliate in questo documento sulla vita quotidiana del progetto QGIS provengono da **Nathan Woodrow**, sviluppatore di QGIS dal 2011 e membro attivo della comunità. Il suo contributo ha permesso di comprendere meglio le sfide tecniche, organizzative e culturali che un progetto open source di questa portata deve affrontare quotidianamente.

{!includes/disclaimer.md!}
