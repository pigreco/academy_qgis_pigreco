---
hide:
  # - navigation
  # - toc
title: Tabella attributi
description: Primi passi con il field calc di QGIS 3.x
---

# Tabella attributi

## Introduzione

![](../../imgs/tabella_attributi/tab_attr2.png){.center-img .img-90}

## Esempi

Sotto alcuni esempi utili  per usare al meglio la tabella degli attributi:

=== "Ordinare"

    Cliccando sull'intestazione di una colonna, è possibile, cliccando su Ordina, ordinare usando delle espressioni, per esempio concatenando più colonne:

    <div align="center">
      <img src="../../imgs/tabella_attributi/ordina_righe.gif" width="700" title="Ordina righe"></a>
    </div>

=== "Organizzare"

    Utilizzando l'icona ![](../../imgs/tabella_attributi/icon/mActionEditTable.png) è possibile nascondere attributi o spostarne la posizione (la modifica è solo in visualizzazione)

    <div align="center">
      <img src="../../imgs/tabella_attributi/organizza_colonne.gif" width="700" title="Ordina righe"></a>
    </div>

=== "Formattare"

    Utilizzando l'icona ![](../../imgs/tabella_attributi/icon/mActionConditionalFormatting.png) è possibile attivare la formattazione condizionale, simile a quella usata in Excel

    <div align="center">
      <img src="../../imgs/tabella_attributi/formattazione_c.gif" width="700" title="Ordina righe"></a>
    </div>

=== "Field Calc Rapido"

    Utilizzando l'icona ![](../../imgs/tabella_attributi/icon/mActionToggleEditing.png) è possibile attivare la modifica della tabella usando il Field Calc Rapido:

    <div align="center">
      <img src="../../imgs/tabella_attributi/fieldCalcRapid.gif" width="700" title="Ordina righe"></a>
    </div>

=== "Multi Edit"

    Utilizzando l'icona ![](../../imgs/tabella_attributi/icon/mActionMultiEdit.png) è possibile attivare la modifica Multipla:

    <div align="center">
      <img src="../../imgs/tabella_attributi/modifica_multipla.gif" width="700" title="Ordina righe"></a>
    </div>

=== "Filtrare"

    Utilizzando l'icona ![](../../imgs/tabella_attributi/icon/mActionFilterMap.png) è possibile attivare il Filtro Avanzato:

    <div align="center">
      <img src="../../imgs/tabella_attributi/filtro_avanzato.gif" width="700" title="Ordina righe"></a>
    </div>

=== "Formattazione condizionale"

    Formattare i valori duplicati

    espressione:

    ```py
    count( 
    expression:=@value , 
    group_by:="cod_cm" )>1 -- "cod_com" attributo controllato
    ```

{!includes/disclaimer.md!}