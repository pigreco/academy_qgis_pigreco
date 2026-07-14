# Plugin QGIS con Intelligenza Artificiale

## Introduzione

In questo capitolo imparerai come creare plugin QGIS completi che integrano capacità di Intelligenza Artificiale, fornendo interfacce user-friendly per l'analisi e l'elaborazione di dati geografici con modelli AI.

## Struttura di un plugin QGIS

Un plugin QGIS ha la seguente struttura:

```
nome_plugin.zip
  nome_plugin/
  |-- i18n/                              (opzionale)
  |   |-- translation_file_de.ts
  |-- img/                               (opzionale)
  |   |-- icon.png
  |   |-- iconsource.svg
  |-- __init__.py                        (OBBLIGATORIO)
  |-- LICENSE                            (OBBLIGATORIO e compatibile con QGIS)
  |-- Makefile                           (opzionale)
  |-- metadata.txt                       (OBBLIGATORIO)
  |-- more_code.py                       (opzionale)
  |-- main_code.py                       (OBBLIGATORIO)
  |-- README                             (opzionale)
  |-- ui_Qt_user_interface_file.ui       (opzionale)
```

### File obbligatori:
- **__init__.py**: Inizializzazione del modulo Python
- **metadata.txt**: Metadati del plugin

### File opzionali:
- **i18n/**: Directory per traduzioni internazionali
- **img/**: Directory per immagini e icone
- **LICENSE**: Licenza del plugin
- **Makefile**: Automatizzazione della compilazione
- **main_code.py**: File principale della logica
- **more_code.py**: File aggiuntivi di supporto
- **README**: Documentazione del plugin
- **ui_Qt_user_interface_file.ui**: Interfaccia grafica Qt Designer

## File metadata.txt

Il file `metadata.txt` contiene informazioni sul plugin:

```ini
[general]
name=Plugin AI per QGIS
qgisMinimumVersion=3.28
qgisMaximumVersion=4.99
description=Plugin per l'integrazione di modelli AI in QGIS
version=1.0.0
author=Il tuo nome
email=email@example.com
url=https://github.com/tuoutente/plugin-ai-qgis
repository=https://github.com/tuoutente/plugin-ai-qgis
tracker=https://github.com/tuoutente/plugin-ai-qgis/issues
icon=icon.png
category=Analysis
changelog=
    Versione 1.0.0: Primo rilascio
    - Supporto clustering KMeans
    - Classificazione Random Forest
```

## Installazione del nostro Plugin

### Preparare il plugin per QGIS

1. **Creare un file ZIP**:
```bash
cd /percorso/al/plugin
zip -r plugin-ai.zip . -x "*.git*" "__pycache__/*" "*.pyc"
```

2. Installazione uguale come gli altri plugin, cambia solo il fatto che noi abbiamo una cartella zippata
3. quindi, installazione del plugin tramite cartella zippata.

## Esercizi

Creare un plugin usando la AI.

## Risorse utili

- [QGIS PyQGIS Developer Cookbook](https://docs.qgis.org/3.44/en/docs/pyqgis_developer_cookbook/index.html)
- [cOOKBOOK PLUGIN](https://docs.qgis.org/3.44/en/docs/pyqgis_developer_cookbook/plugins/releasing.html#releasing-your-plugin)
- [QGIS Plugin Repository](https://plugins.qgis.org/)
- [PyQt5 Documentation](https://www.riverbankcomputing.com/static/Docs/PyQt5/)
- [PyQt6 Documentation](https://www.riverbankcomputing.com/static/Docs/PyQt6/)

{!includes/disclaimer.md!}
