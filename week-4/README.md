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

### Peamised tulemused

- Inventuuri tulemused olid kooskõlas müügianalüüsiga.
- Enim müüdud toodete kategooriad vastasid suurima käibega kategooriatele.
- Laoseisu jälgimine aitab vältida populaarsete toodete puudujääke.

---

# Roll D – Turunduskampaaniate ROI

**Vastutaja:** Paul Vossotski

Analüüsi eesmärk oli hinnata turunduskanalite tulemuslikkust.

### Peamised tulemused

| Kanal | Tulemus |
|-------|----------|
| Google Organic | suurim käive – ligikaudu 2,31 miljonit € |
| Facebook | ligikaudu 1,78 miljonit € käivet |
| Instagram | ligikaudu 1,31 miljonit € käivet |
| Direct | ligikaudu 1,08 miljonit € käivet |
| E-mailiturundus | kõige efektiivsem kanal kliendi kohta |

---

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
