# Week 1 – SQL Basics: UrbanStyle Data Landscape

## Meeskond

* Liis Kolga – Roll A: Sales
* Dmitri Postolaki – Roll B: Customers
* Robi Tikas – Roll C: Products
* Paul Vossotski – Roll D: Sales Channels
* Germo Matt – puudus

## Roll A – Sales

Liis uuris `sales` tabelit.

**Peamised tulemused:**

* Müügikirjeid kokku: **15 234**
* Suurim tehing: **2170.40 €**
* Väikseim tehing: **-1405.32 €**
* Puuduv kliendi ID: **1487**

**Järeldus:**
Müügiandmeid saab analüüsiks kasutada, kuid enne põhjalikumat analüüsi tuleb kontrollida negatiivseid müügisummasid, võimalikke duplikaate ja puuduvaid kliendiandmeid.

---

## Roll B – Customers

Dmitri uuris `customers` tabelit.

**Peamised tulemused:**

* Klientide arv: **3150**
* Puuduvad eesnimed: **0**
* Puuduvad e-posti aadressid: **380**
* Kokku e-posti aadresse: **3150**
* Unikaalseid e-posti aadresse: **2640**
* Võimalikke duplikaate e-posti aadresside põhjal: **510**

**Järeldus:**
Kliendiandmetes leidub puudulikke ja korduvaid andmeid. Puuduvad e-posti aadressid raskendavad turunduskampaaniaid ning korduvad e-posti aadressid võivad viidata duplikaatsetele kliendikirjetele.

---

## Roll C – Products

Robi uuris `products` tabelit.

**Peamised tulemused:**

* Toodete arv: **[lisa SQL tulemus]**
* Kategooriad: **[lisa kategooriad]**
* Hinnavahemik: **[lisa madalaim ja kõrgeim hind]**
* Puuduvad hinnad: **[lisa tulemus]**
* Puuduvad kategooriad: **[lisa tulemus]**

**Järeldus:**
Toodete tabel võimaldab analüüsida tootekategooriaid ja hinnataset, kuid lõplike järelduste tegemiseks tuleb lisada SQL päringute tulemused.

---

## Roll D – Sales Channels

Paul uuris müügikanaleid ja asukohti.

**Peamised tulemused:**

* Müügikanalid: **online** ja **store**
* Pood: **10 030 tehingut**
* Online: **5 204 tehingut**
* Tallinn: **5704 tehingut**
* Tartu: **2708 tehingut**
* Pärnu: **1618 tehingut**

**Järeldus:**
Enamik müügitehinguid toimub füüsilistes kauplustes ning suurim müügimaht on Tallinnas.

---

## Suurim üllatus

Analüüsi käigus selgus, et andmestikus leidub negatiivseid müügisummasid, puuduvaid kliendi ID-sid ning klientide e-posti aadresside duplikaate. Need probleemid võivad mõjutada analüüside täpsust ja äriliste otsuste kvaliteeti.

---

## Soovitused Toomas Kasele

Pärast UrbanStyle andmestiku analüüsi soovitame enne põhjalikuma ärianalüüsi tegemist parandada andmete kvaliteeti.

Kõigepealt tuleks kontrollida `sales` tabeli võimalikke duplikaate, võrreldes kõigi müügiridade arvu unikaalsete `invoice_id` väärtuste arvuga. Duplikaadid võivad põhjustada käibe ja müügitulemuste ülehindamist.

Seejärel tuleks uurida negatiivseid müügisummasid ning selgitada välja, kas need tähistavad tagastusi, tühistatud tellimusi või on tegemist andmevigadega.

Samuti soovitame kontrollida puuduvaid `customer_id` väärtusi, sest ilma kliendiinfota ei ole võimalik teha usaldusväärset kliendianalüüsi ega siduda oste konkreetsete klientidega.

Kliendiandmete kvaliteedi parandamiseks tuleks üle vaadata puuduvad e-posti aadressid ning kontrollida korduvaid e-posti aadresse, et leida võimalikud duplikaatsed kliendikirjed.

Lisaks tuleks kontrollida toodete tabeli andmeid, veendumaks, et kõikidel toodetel on korrektsed kategooriad ja hinnad.

Lõpetuseks soovitame täiendada andmestiku dokumentatsiooni, et kõik tabelid ja väljad oleksid üheselt mõistetavad ning analüütikud kasutaksid andmeid samadel põhimõtetel.

---

## Kokkuvõte

Nädala 1 jooksul õppis meeskond kasutama SQL päringuid UrbanStyle andmestiku uurimiseks ning analüüsis müügi-, kliendi-, toote- ja müügikanalite andmeid. Analüüsi käigus tuvastati mitmeid andmekvaliteedi probleeme, sealhulgas võimalikud duplikaadid, negatiivsed müügisummad, puuduvad kliendi ID-d ja e-posti aadressid. Enne põhjalikuma ärianalüüsi tegemist on soovitatav need probleemid lahendada, et tagada usaldusväärsed analüüsitulemused ja paremad ärilised otsused.

## Puuduvad andmed

Praegu puudub selgitus, kas negatiivsed müügid tähistavad tagastusi või andmevigu ning miks osadel müügikirjetel puudub kliendi ID. Samuti tuleb täiendada `products` tabeli analüüsi SQL päringute tegelike tulemustega.
