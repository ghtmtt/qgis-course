=================
Percorsi progetto
=================
Il file di progetto :code:`qps` memorizza i **percorsi** dei file, non i file stessi. 
Il file :file:`regioni` verrà memorizzato con tutto il suo percorso nel computer, per esempio :code:`C:/Users/Desktop/corso/regioni.shp`
Quindi la ridenominazione o rimozione di un file dalla cartella causerà un errore, proprio perché quel file non esiste più.

QGIS permette due opzioni per memorizzare i file del progetto, **percorsi assoluti** e **percorsi relativi**:

* **percorsi assoluti**: viene archiviato il percorso completo del file, compresa la *radice* del computer, per esempio :code:`C:/Users/Desktop/corso/regioni.shp`. In questo caso, si può spostare ovunque il **file di progetto**, tanto punterà sempre allo stesso percorso. Al contrario non si potranno spostare i **file geografici** perché cambiando posizione, il file di progetto non saprebbe più dove andare a cercarli.

* **percorsi relativi**: viene archiviata la posizione dei file rispetto al file di progetto  :code:`corso/regioni.shp`. In questo caso, non si può comunque spostare il singolo file, ma, si può spostare l'intera cartella (compre il file :file:`qpj`) e il progetto verrà tranquillamente caricato.

Il modo consigliato è quello di lavorare con i **percorsi relativi**, sia per praticità propria sia per un eventuale passaggio a terzi del progetto.
