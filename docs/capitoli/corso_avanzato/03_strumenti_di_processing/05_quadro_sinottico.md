---
hide:
  # - navigation
  # - toc
title: Esempi di strumenti
description: Esempi di strumenti
---


## Strumenti di geoprocessing vettoriale per analisi GIS

| Strumento | Cosa fa | Migliori casi d'uso |
|-----------|---------|---------------------|
| [Buffer](https://docs.qgis.org/3.40/en/docs/gentle_gis_introduction/vector_spatial_analysis_buffers.html) | Crea una zona di distanza specificata attorno alle feature di input (punti, linee o poligoni) | ✔️ Zone di impatto ambientale<br>✔️ Analisi di prossimità (es. scuole entro 1 km dalle strade)<br>✔️ Inquinamento acustico |
| [Clip](https://docs.qgis.org/3.40/en/docs/user_manual/processing_algs/qgis/vectoroverlay.html#clip) | Estrae le feature di input che si sovrappongono con la feature di ritaglio (localizzazione) | ✔️ Concentrare l'analisi su un'area specifica di interesse<br>✔️ Tagliare i dati al confine amministrativo locale |
| [Intersection](https://docs.qgis.org/3.40/en/docs/user_manual/processing_algs/qgis/vectoroverlay.html#intersection) | Calcola l'intersezione geometrica dei layer di input, mantenendo le feature comuni a tutti i layer | ✔️ Identificare l'uso del territorio sovrapposto<br>✔️ Zone di alluvione e habitat che si intersecano con infrastrutture |
| [Union](https://docs.qgis.org/3.40/en/docs/user_manual/processing_algs/qgis/vectoroverlay.html#union) | Combina layer di poligoni di input e mantiene tutte le feature e i loro attributi da entrambi i layer | ✔️ Analisi di gestione del territorio<br>✔️ Sovrapporre confini amministrativi con zone ecologiche |
| [Erase/Difference](https://docs.qgis.org/3.40/en/docs/user_manual/processing_algs/qgis/vectoroverlay.html#difference) | Rimuove aree del layer di input che si sovrappongono con il layer di cancellazione | ✔️ Escludere aree protette dalle zone di sviluppo<br>✔️ Rimuovere corpi idrici dai layer di uso del suolo |
| [Merge](https://docs.qgis.org/3.40/en/docs/user_manual/processing_algs/qgis/vectorgeneral.html#merge-vector-layers) | Combina più dataset dello stesso tipo di geometria in un singolo output | ✔️ Integrare reti stradali da più distretti in un layer<br>✔️ Consolidare più database in uno |
| [Dissolve](https://docs.qgis.org/3.40/en/docs/user_manual/processing_algs/qgis/vectorgeometry.html#dissolve) | Aggrega le feature basate su un attributo condiviso per rimuovere i confini interni | ✔️ Generalizzare i confini (es. comuni in province)<br>✔️ Creare singole feature per l'analisi |
| [Spatial Join](https://docs.qgis.org/3.40/en/docs/user_manual/processing_algs/qgis/vectorgeneral.html#join-attributes-by-location) | Unisce gli attributi da un layer a un altro basato su relazioni spaziali (es. prossimità, contenimento) | ✔️ Assegnare dati demografici dai poligoni ai punti<br>✔️ Determinare la località dei contenuti |
| [Select by Location](https://docs.qgis.org/3.40/en/docs/user_manual/processing_algs/qgis/vectorselection.html#id51) | Seleziona le feature basate sulla loro relazione spaziale con un altro layer | ✔️ Identificare edifici all'interno di zone alluvionali<br>✔️ Selezionare fattorie entro aree protette |