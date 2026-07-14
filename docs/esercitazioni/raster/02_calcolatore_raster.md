---
hide:
  # - navigation
  # - toc
title: Calcolatore raster
description: Calcolatore raster
---

# Calcolatore raster

## Cos'è il calcolatore raster?

È uno strumento di QGIS che permette di eseguire operazioni matematiche e logiche sui raster.
Puoi usarlo per:

- creare indici (es. NDVI),
- classificare valori,
- combinare più raster,
- mascherare aree.

![](../../imgs/12_raster/img_15.png){.center-img .img-70}

- esempio per riclassificare la pendenza in 4 classi:

```
 ( "Pendenza@1" >=  0  AND "Pendenza@1" < 15 )* 1 +
 ( "Pendenza@1" >= 15  AND "Pendenza@1" < 30 )* 2 +
 ( "Pendenza@1" >= 30  AND "Pendenza@1" < 45 )* 3 +
 ( "Pendenza@1" >= 45  AND "Pendenza@1" < 71 )* 4
```

esempio calcolo indice NDVI:

```
(NIR - Red) / (NIR + Red)
```



{!includes/disclaimer.md!}
