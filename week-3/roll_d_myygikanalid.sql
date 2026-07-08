# Week 3 – Roll D: Müügikanalite analüüs

**Autor:** Liis Kolga

## Eesmärk

Selle ülesande eesmärk oli analüüsida UrbanStyle müügikanaleid ning hinnata nende tulemuslikkust SQL päringute abil. Töö käigus kasutati tabelite ühendamiseks INNER JOIN lauseid ning võrreldi müügikanaleid klientide, linnade ja tootekategooriate lõikes.

## Tehtud töö

Ülesande käigus:

- tuvastasin andmebaasis kasutatavad müügikanalid;
- koostasin ülevaate müügikanalite klientide arvust, ostude arvust ja kogumüügist;
- analüüsisin müüki linnade lõikes, ühendades tabelid `sales` ja `customers`;
- analüüsisin tootekategooriaid müügikanalite lõikes, ühendades tabelid `sales`, `customers` ja `products`;
- võrdlesin müügikanalite efektiivsust müügi põhjal ühe kliendi kohta.

## Kasutatud SQL tehnikad

- SELECT
- DISTINCT
- INNER JOIN
- GROUP BY
- COUNT()
- SUM()
- AVG()
- ROUND()
- ORDER BY

## Peamised tähelepanekud

Analüüsi tulemusena selgus, et füüsiline pood teenis suurema kogukäibe ning müük ühe kliendi kohta oli kõrgem kui veebimüügis. Tallinn oli mõlemas müügikanalis suurima käibega linn. Kolme tabeli ühendamine võimaldas võrrelda müügikanaleid klientide, linnade ja tootekategooriate lõikes ning anda terviklikuma ülevaate müügikanalite tulemuslikkusest.

## Failid

- `week3_roll_d_muugikanalid.sql`

## Kokkuvõte

Roll D ülesande käigus õppisin kasutama SQL INNER JOIN päringuid mitme tabeli ühendamiseks ning rakendama SQL funktsioone andmete koondamiseks ja analüüsimiseks. Ülesanne aitas paremini mõista, kuidas andmeid siduda ning kasutada SQL-i äriliste küsimuste lahendamisel.
