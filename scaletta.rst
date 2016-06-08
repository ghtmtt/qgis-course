=========
Programma
=========

* installazione QGIS e verifica software installati
    * OSGEO4W
    
* introduzione teorica (GIS, QGIS, SR e tipo dati)
* passaggio dati in chiavetta

------ pausa mattina -------

* interfaccia grafica di QGIS
* preferenze di base (SR, lingua)
* GUI e barre degli strumenti (ogni singola barra)
* caricamento e gestione plugin (installare vs attivare & plugin sperimentali & aggiornamenti)
* caricamento primi dati (pulsante, menu, impostazione del browser)
* propietà dei dati (SR, percorso nel pc, metadati...)
    * barra SR e scelta SR
* propietà del progetto (percorsi relativi vs assoluti, nome progetto, proprietà progetto)
* creazione gruppi di layer e spostamento layer
* scheda ordine dei layer (z ordering)

------ da qui una persona dovrebbe sapere come caricare i dati, salvare un progetto e riaprirlo -------

* gestione vettori
    * punti, linee e poligoni
    * tabelle degli attributi e informazione elementi
    * simoblogia dei layer (singolo, categorizzato, graduato)
    * personalizzazione simboli (cambio colore, trasparenza, contorno linee, cambio simbolo)
    * etichettatura
    
* gestione raster
    * proprietà dei raster (istrogramma e metadati)
    * informazione elementi e Value tool
    * simbologia (scala di grigi, pseudo color)
    * personalizzazione scala di colori e cpt-city
    
* inclusione layer da altri progetti
* decorazioni (reticolo, freccia nord, note testuali)
* segnalibri spaziali
* plugin OpenLayer
* reperimento dati:
    * cenni su WMS e WTS
    * OSM (plugin OSM)
    * qualche database online (naturalearth, geoporale ER, RT)


    
------- pausa pranzo ---------


* gestione SR
    * verifica SR del progetto
    * cosa succede quando vettore è senza prj e raster senza file world
    * OTF
    * convertire shape in diverse proiezioni (esempio da UTM 32 a UTM33)
    * togliere OTM e mostrare differenza (spiegare perchè OTF può essere fuorviante)
    * differenza fusi 32 e 33 con layer italiano
    * conversione SR anche per raster (ortofoto, CTR)

* operazioni di base su tabella attributi
* vedere campi
* creazione altri campi (x, y, area, lunghezza)
* filtraggio semplice
* modifica attributi con la barra superiore della tabella
    
* selezione elementi da mappa e da tabella
* selezione con espressione
* salvare selezione come nuovo vettore
* georeferenziazione
* digitalizzazione (esempio da OL carta con edifici, strada e campi):
    * creazione shape e corretto SR
    * impostazione campi
        * come campi: punto -> tipo edificio (residenziale, scuola, commerciale), indirizzo (tipo testo)
                    : linea -> tipo strada (carrabile, autostrada, senso unico)
                    : poligono -> uso suolo (edificato, agricolo,)
    * impostazione snap
    * cenni topologia (quando snap)
* plugin point samplig tool

--------- pausa pomeriggio -----------

* importazione CSV e salvataggio come nuovo layer
* join e salvataggio nuovo layer
* layout di stampa
* geoprocessing semplice
    * statistiche di base, lista valori univoci
    * centroidi geometrie
    * poligoni di Voronoi
    * da single part a multi (isole vengono incluse in province)
    * da multi a single part (isole staccate diventano uniche con provincia)
    * dividi (comuni che apparatengono alla stessa provincia)
    * unisci (comuni che appartengono alla stessa provincia)
    * unisci attributi per posizione (se target è comuni e input è province, vengono copiati i record delle province in ogni comune)
    * plugin point sampling tool
    * statistiche zonali (vari esempi)
    * interpolazione (semplice)
* da DTM: 
    * colorazione pseudocolor
    * far vedere i valori min/max e caricamento con sd
    * calcolo esposizione, pendenza, asperità
    * estrazione curve di livello
    * clipper (sia per estensione nella mappa che con vettore)
* map algebra:
    * esempio con DTM (far vedere la differenza T/F e  ricalcolo valori completi)
    * esempio archeologico (altitudine < 1000, pendenza < 25, esposizione sud)
* creare mappa di interpolazione
* cenni su Processing
    * riusare alcuni algoritmi da Toolbox
    * mostrare algoritmi esterni (SAGA, GRASS)
    * mostrare script semplice di R
    * conversione vettore-raster e viceversa
  
    
    
========    
Esercizi
========
1. Identificare geometrie vicino ad altre (esempio aeroporti vicino a fiumi)
    * buffer in aeroporti
    * seleziona per posizione (buffer e layer di intersezione)
    
2. [Processing] v.sample: serve per paragonare la colonna di un punto con il valore di un raster.
    In uscita si avrà un layer di punti con 3 colonne (valore originale, valore raster e differenza fra i due)
    * layer di punti e scelta attributo
    * raster
    * v.sample e altri parametri lasciati cosi
    
3. [Processing] contare punti in poligono:
    * creare prima un reticolo con **create grid**. 
    * usare **count points in polygon**. Crea reticolo in uscita con colonna con numero punti


