---
hide:
  # - navigation
  # - toc
title: Georeferenziatore Vector
description: Georeferenziatore Vector
---

# Georeferenziatore Vettore

## Introduzione

![](../../imgs/a_05_georeferenziatore/georef_vector.png){.center-img .img-90}


In questa esercitazione georeferenzieremo un vettore (centro storico di Palermo) di cui è nota la località e l' EPSG di destinazione.

### Procedimento

1. Avviare QGIS e avviare il plugin Georeferenziatore (Menu Layer);
2. Configurare le Impostazioni ![](../../imgs/icon/mActionTransformSettings.png) e caricare raster ![](https://docs.qgis.org/3.34/en/_images/mActionAddRasterLayer.png);
3. tracciare 4 punti ![](https://docs.qgis.org/3.34/en/_images/mActionAddGCPPoint.png);
4. avviare georeferenziatore e controllare i residui.
5. verificare se correttamente posizionata.

=== "Step1"

    Carica vettore

    ![](../../imgs/a_05_georeferenziatore/load_vector.png){.center-img .img-70}

=== "Step2"

    configura

    ![](../../imgs/a_05_georeferenziatore/setup_vector.png){.center-img .img-70}

=== "Step3"

    Inserisci punti GCP

    ![](../../imgs/a_05_georeferenziatore/gcp_vector.png){.center-img .img-70}

=== "Step4"

    Controlla i residui

    ![](../../imgs/a_05_georeferenziatore/residuo_vector.png){.center-img .img-70}

---

![](../../imgs/a_05_georeferenziatore/finale_vector.png){.center-img .img-80}

{!includes/disclaimer.md!}
