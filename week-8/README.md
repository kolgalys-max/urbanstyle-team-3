# Week 8 – Python APIs ja automatiseeritud andmepipeline

## UrbanStyle Team 3

### Meeskond

| Roll | Liige | Vastutus |
|------|-------|----------|
| Roll A | Dmitri Postolaki | Supabase API ühendus ja andmete pärimine |
| Roll B | Germo Matt | Andmete puhastamine, transformatsioon ja KPI-de arvutamine |
| Roll C | Robi Tikas | Visualiseerimine ja tulemuste eksport |
| Roll D | Liis Kolga | Pipeline'i automatiseerimine, integratsioon ja lõpptest |

---

## Projekti eesmärk

Nädala 8 eesmärk oli ühendada Python, pandas ja Supabase API üheks automatiseeritud andmepipeline'iks.

Varasema CSV-failide käsitsi liigutamise asemel loeb lahendus andmed otse Supabase'ist, töötleb need Pythonis, arvutab vajalikud koondnäitajad, loob visualiseeringud ning salvestab tulemused automaatselt.

### Pipeline'i põhivoog

**Supabase → data_fetcher.py → transform.py → visualize_export.py → pipeline.py → output**

Kogu protsess käivitatakse ühe käsuga:

`python pipeline.py`

---

## Kasutatud tööriistad

- Python
- pandas
- Supabase API
- VS Code
- GitHub
- Python logging

---

## Roll A – Dmitri Postolaki

### Supabase API ühendus ja andmete pärimine

Roll A ülesanne oli luua ühendus Supabase'iga ning tuua vajalikud andmed Pythonisse.

Fail: `data_fetcher.py`

Pipeline kasutab kahte põhifunktsiooni:

- `fetch_sales()` – müügiandmete pärimine;
- `fetch_customers()` – kliendiandmete pärimine.

Andmed pärinevad Supabase'i tabelitest:

- `sales`
- `customers`

Müügiandmete asukoha väli on `store_location`.

API ühenduse tulemusena saadakse andmed DataFrame'idena, mida kasutatakse pipeline'i järgmistes etappides.

Lõpptestis loeti Supabase'ist **10 118 müügirida**.

---

## Roll B – Germo Matt

### Andmete puhastamine ja transformatsioon

Roll B ülesanne oli valmistada API kaudu saadud andmed analüüsiks ette.

Fail: `transform.py`

Peamised tegevused:

- andmete puhastamine;
- vigaste ja puuduvate väärtuste kontroll;
- müügisummade valideerimine;
- nädalapõhiste koondite arvutamine;
- KPI-de arvutamine;
- müügi- ja kliendiandmete ühendamine.

Pipeline kasutab järgmisi funktsioone:

- `clean_data()`
- `calculate_weekly_aggregates()`
- `calculate_kpis()`
- `merge_datasets()`

### Andmete puhastamise tulemus

Algne müügiandmestik sisaldas **10 118 rida**.

Puhastamise käigus eemaldati **195 vigase summaga rida**.

Pärast puhastamist jäi analüüsi **9 923 müügirida**.

Nädalapõhise koondamise tulemusena loodi **183 nädala koond**.

### KPI-d

| KPI | Tulemus |
|-----|---------|
| Kogukäive | 2 967 023,41 € |
| Unikaalseid kliente | 2 540 |
| Keskmine tellimuse väärtus | 299,00 € |

---

## Roll C – Robi Tikas

### Visualiseerimine ja tulemuste eksport

Roll C ülesanne oli muuta töödeldud andmed visuaalselt loetavaks ning salvestada pipeline'i tulemused.

Fail: `visualize_export.py`

Pipeline loob visualiseeringud automaatselt pärast andmete töötlemist.

Lõpptestis loodi edukalt:

- nädalakäibe visualiseering;
- KPI-de kokkuvõte;
- CSV-väljund.

Tulemused salvestatakse automaatselt `output` kausta.

Lõpptesti käigus olid väljunditeks:

- `weekly_revenue.html`
- `kpi_summary.html`
- `rfm_20260812.csv`

---

## Roll D – Liis Kolga

### Pipeline'i automatiseerimine ja integratsioon

Roll D ülesanne oli ühendada Roll A, Roll B ja Roll C loodud komponendid üheks terviklikuks automatiseeritud pipeline'iks.

Fail: `pipeline.py`

Pipeline käivitab kogu protsessi järjest:

1. pärib müügi- ja kliendiandmed Supabase'ist;
2. kontrollib, et päringud ei tagastanud tühje andmestikke;
3. puhastab müügiandmed;
4. arvutab nädalakoondid;
5. arvutab KPI-d;
6. ühendab müügi- ja kliendiandmed;
7. ühildab pipeline'i eri osade väljade nimetused;
8. loob visualiseeringud;
9. ekspordib tulemused;
10. logib protsessi käigu ja täitmisaja.

### Integratsioon

Integratsiooni käigus tuli ühildada Roll B ja Roll C komponentides kasutatud väljade nimetused.

Pipeline ühildab vajadusel:

- `sale_date` → `week`
- `unique_customers` → `customer_count`

See võimaldab eri meeskonnaliikmete loodud komponente kasutada ühes pipeline'is ilma nende põhiloogikat ümber kirjutamata.

### Veakäsitlus

Pipeline sisaldab kontrolli ja veakäsitlust.

Kontrollitakse muu hulgas:

- kas müügiandmed saadi edukalt;
- kas kliendiandmed saadi edukalt;
- kas pipeline'i käigus tekib viga.

Protsessi käik salvestatakse logidesse.

Eduka käivitamise lõpus kuvatakse:

`Pipeline completed successfully!`

Vea korral kuvatakse:

`Pipeline failed`

koos vea kirjeldusega.

---

## Pipeline'i lõpptest

Pipeline testiti otsast lõpuni Supabase'ist pärinevate andmetega.

### Lõpptesti tulemused

| Näitaja | Tulemus |
|---------|---------|
| API kaudu saadud müügiread | 10 118 |
| Eemaldatud vigased read | 195 |
| Pärast puhastamist | 9 923 |
| Nädalakoondite arv | 183 |
| Kogukäive | 2 967 023,41 € |
| Unikaalsed kliendid | 2 540 |
| Keskmine tellimuse väärtus | 299,00 € |
| Ühendamise järel seotud read | 2 859 |
| Pipeline'i täitmisaeg lõpptestis | 4,07 sekundit |

Lõpptesti käigus:

- Supabase API päringud õnnestusid;
- andmete puhastamine õnnestus;
- nädalakoondid loodi;
- KPI-d arvutati;
- müügi- ja kliendiandmed ühendati;
- visualiseeringud loodi;
- tulemused eksporditi `output` kausta;
- pipeline lõpetas töö edukalt.

---

## Projekti failistruktuur

**week-8/**

- `data_fetcher.py` – Supabase API ja andmete pärimine
- `transform.py` – andmete puhastamine ja transformatsioon
- `visualize_export.py` – visualiseerimine ja eksport
- `pipeline.py` – automatiseeritud tervikpipeline
- `week8RollA.ipynb` – Roll A tööfail
- `output/` – pipeline'i loodud väljundid

**output/**

- `weekly_revenue.html`
- `kpi_summary.html`
- `rfm_20260812.csv`

---

## Pipeline'i käivitamine

Pipeline käivitatakse terminalist käsuga:

`python pipeline.py`

Supabase'i ühenduse jaoks peavad vajalikud ühendusandmed olema seadistatud keskkonnamuutujatena.

Pipeline'i eduka käivitamise järel luuakse tulemused automaatselt `output` kausta.

---

## Tulemused

Nädala 8 grupitöö tulemusena valmis terviklik automatiseeritud andmepipeline, mis ühendab API kaudu andmete pärimise, andmete töötlemise, analüüsi, visualiseerimise ja tulemuste salvestamise.

Lahendus vähendab käsitsi tehtavaid samme ning võimaldab sama analüüsi korrata uuenenud Supabase'i andmetega ilma CSV-faile käsitsi edasi-tagasi liigutamata.

Pipeline'i osad on jaotatud eraldi failidesse, mis muudab lahenduse loetavaks ning võimaldab eri etappe eraldi hallata ja testida.

---

## Kokkuvõte

Nädala 8 töö ühendas varasematel nädalatel õpitud Pythoni ja pandas'e oskused Supabase API ning automatiseerimisega.

Valminud pipeline:

**loeb andmed Supabase'ist → puhastab ja töötleb → arvutab KPI-d → ühendab andmestikud → loob visualiseeringud → salvestab tulemused.**

Lõpptest kinnitas, et pipeline töötab algusest lõpuni ning seda saab käivitada ühe käsuga.

See muudab analüüsi korratavaks ja vähendab vajadust andmefaile käsitsi liigutada.
