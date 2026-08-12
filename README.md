# UrbanStyle Team 3

**DACA G3 – Andmeanalüütiku Karjäärikiirendi**

## Projekti ülevaade

UrbanStyle Team 3 on DACA G3 õppeprogrammi raames moodustatud meeskond, kelle ülesanne on lahendada praktilisi andmeanalüüsi juhtumeid UrbanStyle näidisandmestiku põhjal.

Repositoorium koondab meeskonnatöö käigus valminud SQL-lahendused, analüüsid, Power BI aruanded, Python-lahendused ja dokumentatsiooni ning kajastab projekti arengut nädalate lõikes.

## Meeskond

- Liis Kolga
- Dmitri Postolaki
- Robi Tikas
- Paul Vossotski
- Germo Matt

## Repositooriumi struktuur

| Kaust | Sisu |
|---|---|
| `week-0` | Projekti ettevalmistus |
| `week-1` | SQL Basics |
| `week-2` | SQL Data Cleaning |
| `week-3` | SQL JOINs |
| `week-4` | SQL Aggregation |
| `week-5` | Visualiseerimise disain ja Power BI dashboard |
| `week-6` | Power BI dashboard’id ja andmelood |
| `week-7` | Python ja pandas |
| `week-8` | Python API ja automatiseeritud andmepipeline |
| `week-9` | Täiendamisel |
| `week-10` | Lõppprojekt |

## Week 7 – Python ja pandas

Nädal 7 keskendus Pythoni ja pandas’e kasutamisele andmeanalüüsis.

Õppetöö käigus rakendati Pythonit andmete lugemiseks, töötlemiseks ja analüüsimiseks ning pandas’e võimalusi andmetabelitega töötamiseks.

Nädal 7 pani aluse järgmise nädala automatiseeritud andmepipeline’i loomisele.

## Week 8 – Python API ja automatiseeritud andmepipeline

Nädal 8 keskendus Pythoni, pandas’e ja Supabase API ühendamisele üheks automatiseeritud andmepipeline’iks.

Eesmärk oli vähendada andmete käsitsi töötlemist ning luua lahendus, mis suudab andmed automaatselt pärida, töödelda, analüüsida, visualiseerida ja tulemused salvestada.

### Pipeline'i töövoog

Pipeline'i põhivoog on:

**Supabase → `data_fetcher.py` → `transform.py` → `visualize_export.py` → `pipeline.py` → `output/`**

Pipeline:

1. pärib müügi- ja kliendiandmed Supabase API kaudu;
2. puhastab ja valideerib andmed;
3. arvutab vajalikud näitajad;
4. ühendab müügi- ja kliendiandmestikud;
5. loob visualiseeringud;
6. ekspordib tulemused automaatselt `output/` kausta.

### Week 8 failid

- `data_fetcher.py` – Supabase API ja andmete pärimine
- `transform.py` – andmete puhastamine ja transformatsioon
- `visualize_export.py` – visualiseerimine ja tulemuste eksport
- `pipeline.py` – automatiseeritud tervikpipeline
- `week8RollA.ipynb` – Roll A tööfail
- `output/` – pipeline'i loodud väljundid

### Pipeline'i käivitamine

Pipeline käivitatakse terminalist ühe käsuga:

```bash
python pipeline.py
```

Supabase'i ühenduse jaoks peavad vajalikud ühendusandmed olema seadistatud keskkonnamuutujatena.

### Pipeline'i testimine

Pipeline'i lõpptest õnnestus.

Eduka käivitamise käigus:

- andmed loeti Supabase'ist;
- andmed puhastati ja valideeriti;
- vigase summaga read eemaldati;
- nädalakoond loodi;
- KPI-d arvutati;
- müügi- ja kliendiandmed ühendati;
- visualiseeringud loodi;
- tulemused eksporditi automaatselt.

Pipeline töötles lõpptestis **2859 rida** ning kogu protsess töötas edukalt algusest lõpuni.

### KPI tulemused

Pipeline arvutas järgmised põhinäitajad:

- kogukäive: **2 967 023,41**
- unikaalseid kliente: **2540**
- keskmine tellimuse väärtus: **299,0**

### Loodud väljundid

Pipeline salvestas `output/` kausta kolm tulemust:

- `weekly_revenue.html` – nädalakäibe interaktiivne visualiseering
- `kpi_summary.html` – KPI-de visualiseering
- `rfm_20260812.csv` – analüüsi tulemustabel

### Tulemus

Nädala 8 grupitöö tulemusena valmis terviklik automatiseeritud andmepipeline, mis ühendab API kaudu andmete pärimise, andmete töötlemise, analüüsi, visualiseerimise ja tulemuste salvestamise.

Lahendus vähendab käsitsi tehtavaid samme ning võimaldab sama analüüsi korrata uuendatud Supabase'i andmetega ilma CSV-faile käsitsi edasi-tagasi liigutamata.

Pipeline'i osad on jaotatud eraldi failidesse, mis muudab lahenduse loetavaks ning võimaldab eri etappe eraldi hallata ja testida.

## Kasutatud tehnoloogiad

- PostgreSQL
- Supabase
- Supabase API
- SQL
- Python
- pandas
- GitHub
- NotebookLM
- Power BI
- VS Code
- Python logging

## Projekti eesmärk

Projekti eesmärk on rakendada andmeanalüüsi põhimõtteid praktiliste ärijuhtumite lahendamisel ning arendada oskusi alates andmete kontrollimisest ja SQL-analüüsist kuni visualiseerimise ja automatiseeritud andmetöötluseni.

Iga nädal keskendub erinevale analüüsiteemale ning selle käigus valmivad päringud, analüüsid, visualiseeringud, dashboard’id, Python-lahendused ja dokumentatsioon, mis talletatakse käesolevas repositooriumis.

## Märkused

Kõik analüüsid põhinevad UrbanStyle õppeandmestikul ning on koostatud DACA Andmeanalüütiku Karjäärikiirendi õppetöö raames.
