# Geographic Free Open Source Software

---

#### Geographic Informative System


![Immagine](assets/gis1.png)

---

#### Geographic Informative System


![Immagine](assets/gis2.png)

---

#### Geographic Informative System


![Immagine](assets/gis3.png)

---

#### Dati NON geografici


![Immagine](assets/gis4.png)

---

#### Aggiunta posizione dati


![Immagine](assets/gis5.png)

---

#### Dati georeferenziati


![Immagine](assets/gis6.png)

---

#### Elaborazione geografica dati


![Immagine](assets/gis7.png)

---

### Tipologie dati GIS

* **Vettori** (via OGR)
* **Raster** (via GDAL)
* <span style="color:gray">Database</span>
* <span style="color:gray">Servizi Web (WMS, WFS...)</span>

---

### Vettori e Raster

![Immagine](assets/vecrast.png)

---

### Vettori

* oggetti spaziali definiti da equazioni matematiche <!-- .element: class="fragment" data-fragment-index="1" -->
* 3 tipologie: punti, linee, poligoni <!-- .element: class="fragment" data-fragment-index="2" -->
* indipendenti dalla risoluzione <!-- .element: class="fragment" data-fragment-index="3" -->
* ogni geometria dell'oggetto ha attributi (caratteristiche) <!-- .element: class="fragment" data-fragment-index="4" -->

![Immagine](assets/vec.png) <!-- .element: class="fragment" data-fragment-index="5" style="height:55%;width:55%;"-->

---

### Vettori

<ul>
    <li class="fragment" data-fragment-index="1">formato più diffuso è **ESRI shapefile**</li>
        <ul>
        <li class="fragment" data-fragment-index="2">  almeno 3 file diversi (.shp, .shx, .dbf) </li>
        <li class="fragment" data-fragment-index="3">altri file aggiuntivi (.prj, .cgc, .qpj) </li>
        </ul>
    <li class="fragment" class="fragment" data-fragment-index="4">tanti altri formati disponibili </li>
</ul>

![Immagine](assets/vec2.png) <!-- .element: class="fragment" data-fragment-index="5" style="height:30%;width:30%;"-->
---

### Vettori

#### limitazioni `shapefile` (http://switchfromshapefile.org/)

* **almeno** 3 file
* nome campi limitati a **10 caratteri**
* lunghezza attributi, massimo **255 caratteri**
* tipologia attributi limitata a interi, decimali e testo
* limite dimensione a **2 GB**
* dati **non** topologici
* impossibile risalire a codifica (oggi **quasi** sempre `UTF-8`)

---

### Vettori

#### alternative:

  - Database (PostGIS, SpatiaLite)
  - GeoPackage http://www.geopackage.org/
  - file `gml`, `klm`, `geojson`

---

### Vettori

![Immagine](assets/vec3.png)

---

### Vettori

Filtraggio della tabella degli attributi

![Immagine](assets/vec4.png)

---

### Vettori

Simbologia in funzione degli attributi

![Immagine](assets/vec5.png)

---

### Vettori

![Immagine](assets/map.png) <!-- .element: style="height:40%;width:40%;"-->

---

### Vettori

Digitalizzazione

![Immagine](assets/vec7.png)

---

### Raster

<ul>
    <li class="fragment" data-fragment-index="1">immagini vere e proprie</li>
    <li class="fragment" data-fragment-index="2">dipendenti dalla risoluzione</li>
    <li class="fragment" data-fragment-index="3">singolo pixel ha informazione numerica (matrice)</li>
    <li class="fragment" class="fragment" data-fragment-index="4">elevazione terreno, concentrazione inquinanti</li>
    <li class="fragment" class="fragment" data-fragment-index="5">adatti per informazioni continue nello spazio</li>
    <li class="fragment" class="fragment" data-fragment-index="6">tantissimi formati: jpeg, png, tiff, geotiff...</li>
</ul>

---

### Raster

![Immagine](assets/rast.png)

---

### Raster

![Immagine](assets/rast2.png)

---


### Raster

Map Algebra

![Immagine](assets/rast3.jpeg)

---

### Vettori o Raster?

<ul>
    <li class="fragment" data-fragment-index="1">dati **complementari e non esclusivi**</li>
    <li class="fragment" data-fragment-index="2"> vettori per info **puntuali**</li>
    <li class="fragment" data-fragment-index="3">raster per informazioni **distribuite**</li>
    <li class="fragment" class="fragment" data-fragment-index="4">trasformazione da un formato all'altro</li>
</ul>

![Immagine](assets/vecrast2.jpg) <!-- .element: class="fragment" data-fragment-index="5" style="height:30%;width:30%;"-->
