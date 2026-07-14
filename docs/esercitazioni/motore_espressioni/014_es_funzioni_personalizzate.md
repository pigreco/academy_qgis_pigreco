---
hide:
  # - navigation
  # - toc
title: Funzioni personalizzate
description: Primi passi con il field calc di QGIS 3.x
---

# Funzioni personalizzate

## Introduzione

Due esempi su come creare delle funzioni personalizzate

## Perimetro in km

```py
from qgis.core import *
from qgis.gui import *

@qgsfunction(args='auto', group='Custom')
def perimetro_km( feature, parent):
    """ 
    Questa funzione ritorna il valore del perimetro della geometria in km
    <ul>
      <li>perimetro_km() - > 25</li>
    </ul>
    """
    geom_perimetro_km = feature.geometry().length()/1000
    return geom_perimetro_km
```

## Reverse string

```py
from qgis.core import *
from qgis.gui import *

@qgsfunction(args='auto', group='Custom')
def reverse_string(string_to_reverse, feature, parent):
   """ 
   Questa funzione ritorna il valore rovesciato di un testo
    <ul>
      <li>reverse_string('Pigrecoinfinito) - > 'otinifniocergiP'</li>
    </ul>
    """
   return string_to_reverse[::-1]
```

## WMS Catasto

Estrae info dal WMS Catasto AdE

=== "Funzione personalizzata"

    La funzione, tramite una richiesta _GetFeatureInfo_, restituisce le informazioni utili sulla particella che ricade sotto il pixel di interesse.

    [WMS Catasto Agenzia delle Entrate CC BY 4.0](https://www.agenziaentrate.gov.it/portale/it/web/guest/schede/fabbricatiterreni/consultazione-cartografia-catastale/servizio-consultazione-cartografia)

    ```py
    # -*- coding: utf-8 -*-
    """
    /***************************************************************************
    WMS Catasto Agenzia delle Entrate CC BY 4.0
                                  -------------------
            copyright            : (C) 2020 by Giulio Fattori
            email                : xxxxxxxxxxxxx
    ***************************************************************************/
    """

    from qgis.core import *
    from qgis.gui import *
    import requests



    @qgsfunction(args='auto', group='Custom')
    def get_parcel_info(xx, yy, feature, parent):
        """
        <h1>WMS Catasto Agenzia delle Entrate CC BY 4.0:</h1><br>    
        La funzione, tramite una richiesta GetFeatureInfo, restituisce le informazioni utili sulla particella che ricade sotto il pixel di mio interesse:
        <h2>Esempio:</h2>
        <ul>
          <li>get_parcel_info(355461.5,4222490.7) -> 'IT.AGE.PLA.G273_0033A0.673'</li>
          <li>get_parcel_info("fieldX", "fieldY") -> 'IT.AGE.PLA.G273_0033A0.673'</li>
        </ul>
        <h2>NB: le coordinate X e Y devono essere in EPSG 3045</h2>
        """
        req = "https://wms.cartografia.agenziaentrate.gov.it/inspire/wms/ows01.php?REQUEST=GetFeatureInfo&SERVICE=WMS&SRS=EPSG:3045&STYLES=&VERSION=1.1&FORMAT=image/png&BBOX="+str(xx-1)+","+str(yy-1)+","+str(xx+1)+","+str(yy+1)+"&HEIGHT=9&WIDTH=9&LAYERS=CP.CadastralParcel&QUERY_LAYERS=CP.CadastralParcel&INFO_FORMAT=text/html&X=5&Y=5"

        r = requests.get(req, auth=('user', 'pass'))
        a = r.text.partition("InspireId localId</th><td>")[2]
        b = a.partition("</td>")[0]
        return b
    ```

=== "Esempio applicato"

    ![](../../imgs/field_calc/get_parcel_info.gif)

{!includes/disclaimer.md!}