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

## Soovitus

Enne keerukamate analüüside tegemist tuleks kontrollida andmekvaliteeti, eelkõige puuduvaid kliendiandmeid, negatiivseid müügisummasid ning võimalikke duplikaate.
