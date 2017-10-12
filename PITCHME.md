# Test Simulazione esondazione

---


Obiettivo: simulare l'esondazione del fiume Serchio e studiare le città a rischio

---

Simulazione:

* simulare un'esondazione di 5.000 metri
* città che ricadono in questa zona di pericolo


N.B. l'esempio è molto semplificato

---

### Risultato finale

Studio delle città a rischio di esondazione del fiume

![Immagine](assets/rischio.png) <!-- .element: style="height:50%;width:50%;"-->

---

#### Svolgimento (1/5)

caricare i vettori `citta` e `fiume` dalla cartella `test1`


---

#### Svolgimento (2/5)

Utilizzare lo strumento `buffer a distanza fissa` sul vettore di fiumi inserendo
5.000 metri come distanza

---


#### Svolgimento (3/5)

Sovrapponendo il layer citta a quello del buffer appena ottenuto, si deve creare
una selezione delle città che ricadono entro questi limiti

Utilizzarre lo strumento `Selezione per posizione` con citta contenute in buffer

---

#### Svolgimento (4/5)

Salvare la nuova selezione come layer

Utilizzare il plugin QuickMapService per caricare la mappa di sfondo

---

#### Svolgimento (5/5)

Utilizzare il compositore di stampe per produrre la mappa finale a piacimento

---
