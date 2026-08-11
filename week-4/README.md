# Week 4 – SQL Aggregation

## UrbanStyle Team 3

### Meeskond

| Roll | Liige | Vastutus |
|------|--------|-------------------------------|
| Roll A | Dmitri Postolaki | Müügi koondandmete analüüs |
| Roll B | Robi Tikas | Kliendigruppide analüüs |
| Roll C | Germo Matt | Inventuuri analüüs |
| Roll D | Paul Vossotski | Turunduskampaaniate ROI |
| Roll E | Liis Kolga | Valideerimine ja ärisüntees |

---

# Projekti eesmärk

Week 4 eesmärk oli õppida kasutama SQL agregatsioonifunktsioone, et analüüsida UrbanStyle müügi-, kliendi-, inventuuri- ja turundusandmeid ning teha nende põhjal ärilisi järeldusi.

Analüüsid koostati PostgreSQL andmebaasis kasutades funktsioone nagu `COUNT()`, `SUM()`, `AVG()`, `GROUP BY`, `HAVING`, CTE-d ja aknafunktsioonid.

---

# Roll A – Müügi koondandmete analüüs

**Vastutaja:** Dmitri Postolaki

Analüüsi eesmärk oli hinnata ettevõtte müügimahtu, kuiseid trende ja enim müüdud tootekategooriaid.

### Peamised tulemused

- 2024 aasta näitas tugevat kasvutrendi.
- Tellimuste arv kasvas 312-lt jaanuaris 550-ni detsembris.
- Käive suurenes 85 619 eurolt 170 623 euroni.
- Parim kuu oli detsember.
- Kõige suurema käibega kategooriad olid:
  - meeste riided
  - jalanõud
  - naiste riided

---

# Roll B – Kliendigruppide analüüs

**Vastutaja:** Robi Tikas

Analüüsi eesmärk oli jagada kliendid segmentidesse ning hinnata nende väärtust ettevõtte jaoks.

### Peamised tulemused

- Ettevõttel on 245 Gold-taseme VIP-klienti.
- VIP-kliendid on peamiselt Tallinna kliendid ning moodustavad ettevõtte kõige väärtuslikuma segmendi.
- Regular-kliendid Tartus ja Pärnus pakuvad suurimat kasvupotentsiaali.
- Uute klientide korduvostude suurendamine on järgmise perioodi oluline eesmärk.

---

# Roll C – Inventuuri analüüs

**Vastutaja:** Germo Matt

Analüüsi eesmärk oli hinnata laoseisu ning võrrelda inventuuri müügitulemustega.

[1. TULEMUSED & NUMBRID]
* Meeste riided: Suurim müügimaht (4121 tk).
* Jalanõud: Kalleim (kesk. 214€) ja suurima käibega.
* Laste riided: Suur tükimüük (3686 tk), aga odavaim (kesk. 85€).

[2. PROBLEEMIKOHT]
* Laste ja naiste osakonna hitid müüvad massiliselt, aga toovad vähe sisse.
* Võrdlus: Jalanõude TOP toode = 23k€ vs Laste TOP toode = 4.4k€.

[3. TEGEVUSPLAAN]
* Tõsta odavate, aga populaarsete hitt-toodete hinda.
* Loo komplektipakkumisi (bundle) koos kasumlike aksessuaaridega.
* Suuna turundusfookus enim sissetoovatele kategooriatele (jalanõud, meeste).

# Roll D – Turunduskampaaniate ROI

**Vastutaja:** Paul Vossotski

Analüüsi eesmärk oli hinnata turunduskanalite tulemuslikkust.

### Peamised tulemused

- **Google Organic** – suurima käibega turunduskanal (u 2,31 miljonit € ja 7 990 tellimust).
- **Facebook** – teine suurim kanal (u 1,78 miljonit € käivet ja 6 206 tellimust).
- **Instagram** – u 1,31 miljonit € käivet ja 4 597 tellimust.
- **Direct** – u 1,08 miljonit € käivet ja 3 864 tellimust.
- **E-mailiturundus** – kõige efektiivsem kanal kliendi kohta (keskmiselt u 1 090 € müügitulu kliendi kohta).

# Roll E – Valideerimine ja ärisüntees

**Vastutaja:** Liis Kolga

Valideerimise eesmärk oli kontrollida kõigi meeskonnaliikmete analüüside korrektsust ning koostada ühine äriline kokkuvõte.

### Valideerimise tulemused

- kontrolliti kõiki viit rolli;
- olulisi vastuolusid ei leitud;
- analüüsid olid omavahel kooskõlas;
- tulemused olid valmis esitamiseks juhatusele.

---

# Meeskonna peamised järeldused

- 2024 aasta oli ettevõtte jaoks tugeva kasvuga aasta.
- Detsember oli parim müügikuu.
- Meeste riided, jalanõud ja naisteriided tõid suurima käibe.
- Google Organic oli kõige tugevam turunduskanal.
- E-mailiturundus oli kõige efektiivsem kanal ühe kliendi kohta.
- Gold-taseme VIP-kliendid moodustavad ettevõtte kõige väärtuslikuma kliendisegmendi.
- Inventuuri tulemused kinnitasid müügianalüüsi tulemusi.
- Kõik meeskonnaliikmete analüüsid läbisid valideerimise.

---

# Kokkuvõte

Week 4 käigus valmis terviklik ülevaade UrbanStyle müügi-, kliendi-, inventuuri- ja turundusandmetest. SQL agregatsioonifunktsioonide abil leiti ettevõtte peamised müügitrendid, väärtuslikumad kliendisegmendid, tulemuslikumad turunduskanalid ning hinnati inventuuri vastavust müüginõudlusele.

Valideerimise tulemusena kinnitati, et kõik analüüsid olid omavahel kooskõlas ning moodustasid usaldusväärse aluse juhtkonnale soovituste esitamiseks.

---

# Kasutatud tehnoloogiad

- PostgreSQL
- SQL
- Supabase
- GitHub
- NotebookLM
- ChatGPT (dokumentatsiooni vormistamiseks)
