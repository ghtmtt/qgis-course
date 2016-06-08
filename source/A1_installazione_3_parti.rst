==================================
Installazione software terze parti
==================================
Una delle forze di QGIS è quella di poter usare algoritmi di altri software all'interno della stessa interfaccia grafica.
Tutto questo è possibile grazie al plugin nativo **Processing**.

Configurazione software esterni
===============================
Scaricando ed installando la versione *Standalone* di QGIS, dovrebbero essere garantito il funzionamento dei software di terze parti principali, ovvero **GRASS** e **SAGA**.

Un altra opportunità (e se ci fossero dei problemi) è quella di usare l'installer manuale **OSGEO4W** dove  è possibile decidere di installare alcuni software esterni aggiuntivi, tra cui **OTB**.

In teoria i *PATH*, i percorsi dai quali QGIS carica gli altri software dovrebbero essere configurati al meglio. Ma a volte richiamando un algoritmo, questo non si carica.

Se cosi non fosse seguire i punti seguenti per i vari software.

.. note:: **in teoria** con Linux e Mac non ci sono problemi di PATH poiché l'installer principale provvede a tutto.

GRASS
-----
Alcuni problemi di GRASS derivano dal fatto che ci sono 2 versioni di GRASS (6.4 e 7) e Processing non è in grado di lanciare gli algoritmi di una versione se è installata l'altra.

Per abilitare gli algoritmi di GRASS 7:

* Processing -> Opzioni
* Programmi: disattivare il primo GRASS che compare nell'elenco e abilitare il secondo (GRASS 7)
* nel PATH inserire :code:`C:/OSGEO4W/apps\grass/grass-7.0.0`

SAGA
----
Per funzionare è richiesta una versione di SAGA uguale o maggiore della 2.10
Il PATH predefinito per SAGA è :code:`C:/OSGEO4W/apps\saga`

R
-
R deve essere già installato sul computer, l'installer OSGEO4W **NON** prevede l'installazione di R.
Normalmente R ha i file di configurazione salvati nella cartella utente. 

Per abilitare gli script di R:

* Processing -> Opzioni
* Programmi e cercare R
* inserire il PATH corretto, qualcosa come :code:`C:Program Files\R\R-3.2.0`

Ora gli script dovrebbero avviarsi.

Può capitare che gli script non funzionino perché una cartella di sistema di R non è abilitata alla scrittura, quindi bisogna cambiare i permessi:

* la cartella incriminata di solito è :code:`C:Program Files\R\R-3.2.0\library`
* tasto destro sulla cartella "Properties" e scheda "Security"
* da qui abilitare i permessi (tutti) per i vari utenti

