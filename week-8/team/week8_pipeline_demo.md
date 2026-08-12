# Week 8 – Pipeline demo

## UrbanStyle Team 3

### Meeskond

| Roll | Liige | Vastutus |
|------|-------|----------|
| Roll A | Dmitri Postolaki | Supabase API ühendus ja andmete pärimine |
| Roll B | Germo Matt | Andmete puhastamine, transformatsioon ja KPI-de arvutamine |
| Roll C | Robi Tikas | Visualiseerimine ja tulemuste eksport |
| Roll D | Liis Kolga | Pipeline'i automatiseerimine, integratsioon ja lõpptest |

## Demo eesmärk

Demonstreerida meeskonna loodud automatiseeritud andmepipeline'i, mis ühendab Supabase API kaudu andmete pärimise, andmete töötlemise, KPI-de arvutamise, visualiseerimise ja tulemuste eksportimise üheks terviklikuks töövooks.

Pipeline käivitatakse ühe käsuga ning selle etapid toimuvad automaatselt.

## Pipeline'i käivitamine

Pipeline käivitatakse terminalis käsuga:

```bash
python pipeline.py
```

Eduka käivitamise korral läbib pipeline järgmised etapid:

1. andmete pärimine Supabase'ist;
2. andmete puhastamine ja valideerimine;
3. nädalakoondite arvutamine;
4. KPI-de arvutamine;
5. andmestike ühendamine;
6. visualiseeringute loomine;
7. tulemuste eksport `output` kausta.

## Demo käigus näidatavad väljundid

Pipeline loob `output` kausta järgmised väljundfailid:

- `weekly_revenue.html` – nädalapõhise müügitulu visualiseering;
- `kpi_summary.html` – KPI-de kokkuvõte;
- `rfm_20260812.csv` – eksporditud RFM-andmestik.

## Peamine järeldus

Automatiseeritud pipeline võimaldab kogu andmetöötluse ja analüüsi käivitada ühe käsuga, vähendades käsitsi tehtavaid samme ning muutes analüüsi korratavaks.

## Otsus

Sama pipeline'i saab kasutada analüüsi uuesti käivitamiseks pärast Supabase'i andmete uuenemist, ilma et andmeid oleks vaja käsitsi CSV-failide kaudu liigutada ja kogu töövoogu uuesti koostada.

## Mis meid üllatas?

Pipeline'i terviklikuks tööks peavad erinevate moodulite kasutatavad andmeväljad ja funktsioonid olema omavahel täpselt kooskõlas. Väike erinevus andmestruktuuris või veeru nimetuses võib mõjutada kogu pipeline'i tööd.

## Demo käik

1. Käivitame terminalis käsu `python pipeline.py`.
2. Näitame, et pipeline läbib kõik etapid ja lõpetab töö edukalt.
3. Näitame terminalis pipeline'i töötlemise tulemust.
4. Avame `output` kausta.
5. Näitame `weekly_revenue.html` visualiseeringut.
6. Näitame pipeline'i loodud väljundfaile.
7. Vastame ühele sünteesiküsimusele.

## Pipeline'i töövoog

**Supabase → `data_fetcher.py` → `transform.py` → `visualize_export.py` → `pipeline.py` → `output`**

Pipeline ühendab meeskonnaliikmete loodud moodulid üheks automatiseeritud tervikuks.
