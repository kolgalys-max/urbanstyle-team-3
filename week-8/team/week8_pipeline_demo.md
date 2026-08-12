# Week 8 – Pipeline demo

## UrbanStyle Team 3

### Meeskond

| Roll | Liige | Vastutus |
|------|-------|----------|
| Roll A | Dmitri Postolaki | Supabase API ühendus ja andmete pärimine |
| Roll B | Germo Matt | Andmete puhastamine, transformatsioon ja KPI-de arvutamine |
| Roll C | Robi Tikas | Visualiseerimine ja tulemuste eksport |
| Roll D | Liis Kolga | Pipeline'i automatiseerimine, integratsioon ja lõpptest |

---

## Demo eesmärk

Demo eesmärk on näidata Week 8 jooksul loodud automatiseeritud andmepipeline'i, mis ühendab andmete pärimise, puhastamise, töötlemise, KPI-de arvutamise, visualiseerimise ja tulemuste salvestamise üheks terviklikuks protsessiks.

Pipeline käivitatakse ühe käsuga:

```bash
python pipeline.py
```

---

## Pipeline'i töövoog

Pipeline ühendab meeskonnaliikmete loodud moodulid:

1. `data_fetcher.py` – andmete pärimine Supabase API kaudu
2. `transform.py` – andmete puhastamine, transformatsioon ja KPI-de arvutamine
3. `visualize_export.py` – tulemuste visualiseerimine ja eksport
4. `pipeline.py` – kogu protsessi automatiseerimine ja moodulite ühendamine

Pipeline'i põhivoog:

**Supabase → data_fetcher.py → transform.py → visualize_export.py → pipeline.py → väljundfailid**

---

## Demo käivitamine

Demo ajal käivitatakse terminalis:

```bash
python pipeline.py
```

Pipeline teeb automaatselt järgmised sammud:

1. pärib müügi- ja kliendiandmed Supabase'ist;
2. kontrollib ja puhastab andmed;
3. loob nädalapõhised koondandmed;
4. arvutab KPI-d;
5. ühendab vajalikud andmestikud;
6. loob visualiseeringud;
7. ekspordib tulemused failidesse;
8. logib protsessi käigu terminali.

Eduka käivitamise korral lõpetab pipeline töö veateateta ning terminalis kuvatakse:

```text
Pipeline completed successfully!
```

---

## Demo väljundid

Pipeline loob analüüsi tulemusena järgmised väljundid:

- `weekly_revenue.html` – nädalapõhise tulu visualiseering;
- `kpi_summary.html` – peamiste KPI-de visualiseering;
- `rfm_*.csv` – töödeldud RFM-andmestik.

HTML-väljundeid saab avada veebibrauseris ning CSV-faili kasutada edasiseks analüüsiks.

---

## Mida demo ajal näitame?

### 1. Pipeline'i käivitamine

Terminalis käivitatakse:

```bash
python pipeline.py
```

Näidatakse, kuidas pipeline läbib järjest andmete pärimise, puhastamise, analüüsi, ühendamise, visualiseerimise ja ekspordi etapid.

### 2. Edukas lõpptest

Terminalist näidatakse, et pipeline lõpetab töö edukalt:

```text
Pipeline completed successfully!
```

See kinnitab, et eraldi loodud moodulid töötavad ühe tervikliku protsessina.

### 3. Visualiseering

Avatakse üks pipeline'i loodud HTML-väljunditest:

- `weekly_revenue.html`

või

- `kpi_summary.html`

`weekly_revenue.html` võimaldab näidata nädalapõhise tulu muutumist ajas.

`kpi_summary.html` koondab pipeline'i arvutatud peamised KPI-d.

### 4. CSV-väljund

Vajadusel näidatakse ka pipeline'i loodud `rfm_*.csv` faili, mis sisaldab edasiseks analüüsiks eksporditud töödeldud andmeid.

---

## Peamine järeldus

Automatiseeritud pipeline võimaldab kogu andmetöötluse protsessi käivitada ühe käsuga.

Andmete pärimist, puhastamist, transformeerimist, KPI-de arvutamist, andmestike ühendamist, visualiseerimist ja tulemuste eksportimist ei ole enam vaja eraldi käsitsi käivitada.

---

## Mis otsus selle põhjal muutub?

Analüüsi saab edaspidi korrata uuendatud Supabase'i andmetega, käivitades sama pipeline'i uuesti.

See tähendab, et korduva analüüsi puhul ei ole vaja samu töötlusetappe iga kord käsitsi läbi teha.

Pipeline muudab protsessi:

- korratavaks;
- kiiremaks;
- paremini kontrollitavaks;
- vähem sõltuvaks käsitsi tehtavatest sammudest.

---

## Mis oli üllatav?

Pipeline'i integreerimisel selgus, kui oluline on erinevate moodulite omavaheline kooskõla.

Kuigi `data_fetcher.py`, `transform.py` ja `visualize_export.py` võivad eraldi töötada, peab tervikliku pipeline'i jaoks olema kokku lepitud:

- milliseid andmeid iga moodul vastu võtab;
- milliseid andmeid iga moodul tagastab;
- milliseid veerge kasutatakse;
- kuhu väljundid salvestatakse;
- kuidas vigu käsitletakse.

Ühes etapis tekkiv probleem võib mõjutada kõiki järgnevaid etappe.

---

## Demo ülesehitus

Demo kestus: **2–3 minutit**.

### 1. Pipeline'i käivitamine – umbes 30 sekundit

Käivitame terminalis:

```bash
python pipeline.py
```

Näeme terminalist, kuidas pipeline läbib järjest kõik tööetapid.

### 2. Väljundi näitamine – umbes 30 sekundit

Avame näiteks:

`weekly_revenue.html`

ja näitame pipeline'i automaatselt loodud visualiseeringut.

Vajadusel näitame lisaks:

`kpi_summary.html`

või

`rfm_*.csv`

### 3. Tulemuse selgitamine – umbes 1 minut

Selgitame:

- pipeline töötab algusest lõpuni ühe käivitusega;
- eraldi moodulid on ühendatud üheks protsessiks;
- tulemused luuakse automaatselt;
- sama protsessi saab uuesti kasutada värskendatud andmetega.

---

## Esitluse põhisõnum

**JÄRELDUS:**  
Week 8 tulemusena valmis töötav automatiseeritud pipeline, mis ühendab andmete pärimise, töötlemise, analüüsi, visualiseerimise ja ekspordi.

**OTSUS:**  
Sama analüüsi saab edaspidi uuesti käivitada ühe käsuga, ilma et kõiki töötlusetappe peaks käsitsi kordama.

**ÜLLATAV:**  
Pipeline'i töökindlus sõltub tugevalt sellest, et kõik eraldi moodulid kasutaksid omavahel sobivaid sisendeid ja väljundeid.

---

## Kokkuvõte

Week 8 jooksul valmis UrbanStyle Team 3 terviklik automatiseeritud andmepipeline.

Meeskonna rollid ühendati üheks töövooks:

**Supabase → andmete pärimine → puhastamine ja transformatsioon → KPI-d → visualiseerimine → eksport**

Pipeline'i käivitamiseks piisab ühest käsust:

```bash
python pipeline.py
```

Eduka käivitamise järel luuakse automaatselt analüüsi väljundid.

Demo keskendub eelkõige sellele, et näidata töötavat terviklahendust: pipeline käivitub, läbib vajalikud etapid, loob väljundid ning lõpetab töö edukalt.
