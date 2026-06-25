# Week 1 – SQL Basics: UrbanStyle Data Landscape

## Team

* **Liis Kolga** – Roll A: Sales
* **Dmitri Postolaki** – Roll B: Customers
* **Paul Vossotski** – Roll C: Products
* **Robi Tikas** – Roll D: NotebookLM / (lisab oma osa)
* **Germo Matt** – puudus

---

## Roll A – Sales (Liis)

### Tehtud analüüs

* Müügikirjeid kokku: **15 234**
* Suurim tehing: **2170.40 €**
* Väikseim tehing: **-1405.32 €**
* Puuduv kliendi ID: **1487**

### Järeldus

Sales tabel sisaldab piisavalt andmeid analüüsimiseks, kuid leidub puuduvaid kliendiandmeid ja negatiivseid müügisummasid, mis vajavad edasist kontrolli.

---

## Roll B – Customers (Dmitri)

### Tehtud analüüs

* Kliente kokku: **3150**
* Puuduvad eesnimed: **0**
* Puuduvad e-postid: **380**
* Unikaalseid e-posti aadresse: **2640**

### Järeldus

Kliendiandmed on üldiselt kvaliteetsed, kuid osa klientidel puudub e-posti aadress ning leidub korduvaid e-posti aadresse.

---

## Roll C – Products (Paul)

### Tehtud analüüs

* Kontrolliti toodete koguarvu
* Analüüsiti kategooriaid
* Leiti hinnavahemikud
* Kontrolliti puuduvaid hindu ja kategooriaid
* Võrreldi kategooriate lõikes toodete arvu ja hindu

### Järeldus

Toodete andmestik võimaldab hästi analüüsida kategooriaid ja hindu ning toetab edasist müügianalüüsi.

---

## Roll D

Lisatakse pärast Robi töö valmimist.

---

## Meeskonna peamised tähelepanekud

* Sales tabel sisaldab 15 234 müügikirjet.
* Leidub negatiivseid müügisummasid.
* 1487 müügil puudub kliendi ID.
* Customers tabelis puudub 380 e-posti aadressi.
* Products tabelis on võimalik võrrelda kategooriaid ja hinnataset.

---

## Soovitused Toomasele

Pärast UrbanStyle andmestiku uurimist soovitame enne põhjalikuma ärianalüüsi tegemist parandada andmete kvaliteeti.

### 1. Kontrollida puuduvaid andmeid

* 1487 müügikirjel puudub `customer_id`.
* Customers tabelis puudub 380 kliendi e-posti aadress.

### 2. Uurida negatiivseid müügisummasid

Leidus negatiivseid `total_price` väärtusi. Tuleks selgitada, kas need tähistavad tagastusi, tühistatud oste või andmevigu.

### 3. Kontrollida võimalikke duplikaate

Customers tabelis on 3150 klienti, kuid ainult 2640 unikaalset e-posti aadressi. Tuleks uurida, kas tegemist on korduvate klientidega või andmekvaliteedi probleemiga.

### 4. Dokumenteerida andmed

Lisada andmestikule selgitused veergude, ärireeglite ja võimalike erandite kohta, et järgmised analüütikud mõistaksid andmete tähendust paremini.

## Kokkuvõte

Nädala 1 jooksul õppis meeskond kasutama SQL-i andmete uurimiseks ning analüüsis UrbanStyle müügi-, kliendi- ja tooteandmeid. Andmestik sobib edasiseks analüüsiks, kuid enne äriliste otsuste tegemist soovitame parandada andmete kvaliteeti ja dokumentatsiooni.

