# Week 1 – SQL Basics: UrbanStyle Data Landscape

## Meeskond
- Liis Kolga – Roll A: Sales
- Dmitri Postolaki – Roll B: Customers
- Robi Tikas – Roll C: Products
- Paul Vossotski – Roll D: Sales Channels
- Germo Matt – puudus

## Roll A – Sales
Liis uuris `sales` tabelit.

Peamised tulemused:
- Müügikirjeid kokku: 15 234
- Suurim tehing: 2170.40 €
- Väikseim tehing: -1405.32 €
- Puuduv kliendi ID: 1487

Järeldus:
Müügiandmeid saab analüüsiks kasutada, kuid enne põhjalikumat analüüsi tuleks kontrollida negatiivseid tehinguid ja puuduvaid kliendiandmeid.

## Roll B – Customers
Dmitri uuris `customers` tabelit.

Peamised tulemused:
- Klientide arv: [lisa number]
- Linnad: [lisa linnad]
- Puuduvad andmed: [lisa leid]

## Roll C – Products
Robi uuris `products` tabelit.

Peamised tulemused:
- Toodete arv: [lisa number]
- Kategooriad: [lisa kategooriad]
- Hinnavahemik: [lisa min ja max hind]

## Roll D – Sales Channels
Paul uuris müügikanaleid ja asukohti.

Peamised tulemused:
- Kanalid: online, pood
- Pood: 10 030 tehingut
- Online: 5 204 tehingut
- Tallinn: 5704
- Tartu: 2708
- Pärnu: 1618

## Suurim üllatus
Andmestikus leidus negatiivseid müügisummasid ja puuduvaid kliendi ID-sid.

## Soovitus Toomasele
Enne edasist analüüsi tuleks kontrollida andmekvaliteeti: duplikaadid, negatiivsed tehingud ja puuduvad kliendiandmed.

## Puuduvad andmed
Puudub selgitus, kas negatiivsed müügid tähistavad tagastusi või andmevigu ning miks osadel müükidel puudub kliendi ID.
