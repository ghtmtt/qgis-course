=================================
Vocabolario termini geostatistici
=================================
Qualche utile termine in ambito geostatistico


**Cross Validation**: tecnica per capire quanto è accurata l'interpolazione. Un punto viene escluso e l'analis viene rifatta. Il punto viene rimesso e ne viene tolto un altro, e cosi via per tutti i punti.

**Metodi deterministici**: sono i metodi che creano una superficie a partire da punti misurati. Non c'è misura di incertezza

**Interpolazione**: processo che partendo da valori noti stima (predice) valori non noti di zone non campionate. Ci sono molte tecniche diverse, ognuna differente per requisiti di inupt e risultati finali

**Kernel**: una funzione *di peso* usata in alcuni metodi di interpolazione. Tipicamente valori più alti vengono assegnati a punti vicini a dove il valore è stato stimato, mentre valori bassi sono assegnati a punti lontani da queste zone

**Kriging**: una collazione di metodi di interpolazione che si basano su modelli di semi-variogramma e su autocorrelazione spaziale per generare i valori stimati, gli errori associati alle stime e altri valori utili al risultato finale

**Semi-variogramma**: funzione che descrive le differenze (espresse come varianza) fra i campioni in funzione della loro distanza. Di solito si ha che per distanze piccole la varianza è piccola mentre per distanze maggiori la varianza aumenta. Questo risultato dimostra l'autocorrelazione spaziale. Il semi-variogramma è rappresentato con una serie di punti su un grafico, la funzione lineare che passa fra i punti è chiamata **modello del semi-variogramma**. Questo modello è un componente chiave del *kriging*.
