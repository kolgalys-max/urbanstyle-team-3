# Week 1 – SQL Basics: UrbanStyle Data Landscape

## Team

* Liis Kolga – Roll A: Sales
* Dmitri Postolaki – Roll B: Customers
* Paul Vossotski – Roll C: Products
* Robi Tikas – Roll D: Sales Channels / NotebookLM
* Germo Matt – puudus

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

* Kontrolliti toodete koguarvu.
* Analüüsiti tootekategooriaid.
* Leiti toodete hinnavahemikud.
* Kontrolliti puuduvaid hindu ja kategooriaid.
* Võrreldi kategooriate lõikes toodete arvu ja hindu.

### Järeldus

Toodete andmestik võimaldab hästi analüüsida kategooriaid ja hindu ning toetab edasist müügianalüüsi.

---

## Roll D – Sales Channels (Robi)

### Tehtud analüüs

* Uuriti müügikanaleid (`online` ja `store`).
* Analüüsiti kaupluste asukohti (`Tallinn`, `Tartu`, `Pärnu`).
* Vaadati kasutatavaid makseviise.
* Kontrolliti veebimüügi kirjete asukohaandmeid.

### Järeldus

UrbanStyle kasutab kahekanalilist müügimudelit, ühendades e-kaubanduse ja füüsilised kauplused. Veebipood võimaldab klientidel teha oste üle Eesti ööpäevaringselt, samas kui füüsilised kauplused teenindavad kliente Tallinnas, Tartus ja Pärnus. Klientidele pakutakse mitmeid maksevõimalusi, sealhulgas pangakaarti, sularaha ja järelmaksu. Analüüs näitas, et veebimüügi kirjete puhul puudub `store_location` väärtus (`NULL`), mis on ootuspärane ega viita andmeveale, kuna veebimüük ei ole seotud ühegi füüsilise kauplusega.

---

## Meeskonna peamised tähelepanekud

* `sales` tabel sisaldab **15 234** müügikirjet.
* Leidub negatiivseid müügisummasid.
* **1487** müügil puudub kliendi ID.
* `customers` tabelis puudub **380** e-posti aadressi.
* Leidub korduvaid e-posti aadresse.
* `products` tabel võimaldab võrrelda kategooriaid ja hinnataset.
* UrbanStyle kasutab nii e-poodi kui ka füüsilisi kauplusi ning veebimüügi kirjete puhul on `store_location` väärtus ootuspäraselt **NULL**.

---

## Soovitused Toomasele

Pärast UrbanStyle andmestiku uurimist soovitame enne põhjalikuma ärianalüüsi tegemist parandada andmete kvaliteeti.

**1. Kontrollida puuduvaid andmeid**

* 1487 müügikirjel puudub `customer_id`.
* `customers` tabelis puudub 380 kliendi e-posti aadressi.

**2. Uurida negatiivseid müügisummasid**

* Leidus negatiivseid `total_price` väärtusi. Tuleks selgitada, kas need tähistavad tagastusi, tühistatud oste või andmevigu.

**3. Kontrollida võimalikke duplikaate**

* `customers` tabelis on 3150 klienti, kuid ainult 2640 unikaalset e-posti aadressi. Tuleks uurida, kas tegemist on korduvate klientidega või andmekvaliteedi probleemiga.

**4. Kontrollida müügikanalite andmeid**

* Veenduda, et `store_location` väärtus on `NULL` ainult veebimüügi (`online`) kirjete puhul ning kõik füüsiliste kaupluste müügid sisaldavad korrektset asukohta.

**5. Dokumenteerida andmed**

* Lisada andmestikule selgitused veergude, ärireeglite ja võimalike erandite kohta, et järgmised analüütikud mõistaksid andmete tähendust paremini.

---

## Kokkuvõte

Nädala 1 jooksul õppis meeskond kasutama SQL-i andmete uurimiseks ning analüüsis UrbanStyle müügi-, kliendi-, toote- ja müügikanalite andmeid. Andmestik sobib edasiseks analüüsiks, kuid enne äriliste otsuste tegemist soovitame parandada andmete kvaliteeti, kontrollida võimalikud andmevead ning täiendada dokumentatsiooni. See loob usaldusväärse aluse järgmiste nädalate põhjalikumatele analüüsidele.
