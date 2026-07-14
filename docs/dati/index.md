---
hide:
   - navigation
   - toc
title: Dati
description: Elenco link per scaricare i dati
---

# Download

Materiale didattico :octicons-download-16:

=== "da scaricare all'occorrenza"
    
    - [Confini amministrativi - ISTAT](https://www.istat.it/it/archivio/222527)[^1]
    - [Statistiche sulla popolazione per griglia regolare - ISTAT](https://www.istat.it/it/archivio/155162)[^2]
    - [DEM - Tinitaly](https://tinitaly.pi.ingv.it/Download_Area1_1.html)[^3]
    - [Popolazione residente - ISTAT](https://demo.istat.it/app/?i=POS)[^4]
    - [Rete ricarica veicoli elettrici](https://raw.githubusercontent.com/ondata/rete_ricarica_veicoli_elettrici/main/data/rete_ricarica_veicoli_elettrici_cleaned.csv)[^5]
    - [Terremoti INGV - Webservice](https://terremoti.ingv.it/)[^6]

=== "video demo per download"

    Playlist: [Download dati](https://www.youtube.com/playlist?list=PLqDFjeQq7NBiYPFlTsI5GEdMZ0W-0BVOG)

    <div style="display: flex; gap: 5px; justify-content: space-around; flex-wrap: wrap;">
        <a href="https://www.youtube.com/watch?v=K3JyUmVvkZg" target="_blank" title="Video 1 - Download Confini amministrativi ISTAT">
            <img src="https://img.youtube.com/vi/K3JyUmVvkZg/0.jpg" alt="Video 1" width="200">
        </a>
        <a href="https://www.youtube.com/watch?v=H2Jprhu32Aw" target="_blank" title="Video 2 - Download Statistiche popolazione per griglia">
            <img src="https://img.youtube.com/vi/H2Jprhu32Aw/0.jpg" alt="Video 2" width="200">
        </a>
        <a href="https://www.youtube.com/watch?v=R3QfQtOYzNw" target="_blank" title="Video 3 - Download DEM Tinitaly">
            <img src="https://img.youtube.com/vi/R3QfQtOYzNw/0.jpg" alt="Video 3" width="200">
        </a>
        <a href="https://www.youtube.com/watch?v=4-Qtp63fPF0" target="_blank" title="Video 4 - Download Popolazione residente ISTAT">
            <img src="https://img.youtube.com/vi/4-Qtp63fPF0/0.jpg" alt="Video 4" width="200">
        </a>
        <a href="https://www.youtube.com/watch?v=QtmM59wLy0I" target="_blank" title="Video 5 - Download Rete ricarica veicoli elettrici">
            <img src="https://img.youtube.com/vi/QtmM59wLy0I/0.jpg" alt="Video 5" width="200">
        </a>
    </div>

=== "da usare al volo"

    Per utilizzare velocemente i dati in **QGIS** (1):
    { .annotate }

    1.  :man_raising_hand: Copiare il singolo link di interesse e incollarlo in QGIS, guarda screen sotto! (nel caso non funzionasse togliere la `s` da 'https://' e riprovare)
   
    ```
    https://confini-amministrativi.it/api/v2/it/20240101/comuni.zip
    ```
    ```
    https://confini-amministrativi.it/api/v2/it/20230101/unita-territoriali-sovracomunali.zip
    ```
    ```
    https://confini-amministrativi.it/api/v2/it/20240101/regioni.zip
    ```
    ```
    https://confini-amministrativi.it/api/v2/it/20240101/ripartizioni-geografiche.zip
    ```
    
    Esempio di uso: (1)
    { .annotate }

    2.  :woman_raising_hand: Clicca sull'icona _Apri Gestore delle Sorgenti Dati_ (<kbd>Ctrl + L</kbd>) e incolla il link copiato sopra nella sezione `Protocollo`
   
    ![image](https://github.com/ondata/confini-amministrativi-istat/assets/7631137/85403fee-2b82-4985-b133-2aedd01bec6a)

    credits: :octicons-mention-16:

    - [onData](https://github.com/ondata/confini-amministrativi-istat/blob/main/README.md)
    - [ISTAT](https://www.istat.it/it/archivio/222527)


[^1]: CONFINI DELLE UNITÀ AMMINISTRATIVE A FINI STATISTICI AL 1° GENNAIO 2024
[^2]: STATISTICHE SULLA POPOLAZIONE PER GRIGLIA REGOLARE celle da 1 km²
[^3]: DEM Tinitaly Sezione di Pisa - 10 m/px
[^4]: Popolazione residente per sesso, età e stato civile al 1° gennaio 2024
[^5]: [PUN](https://www.piattaformaunicanazionale.it/) - Piattaforma Unica Nazionale dei punti di ricarica per i veicoli elettrici - file CSV elaborato da [onData](https://www.ondata.it/)
[^6]: [INGV](http://terremoti.ingv.it/) - Webservice per scaricare dati terremoti in formato CSV.
