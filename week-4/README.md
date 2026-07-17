# Week 4 – SQL Aggregation

## UrbanStyle Team 3

### Meeskond

- Liis Kolga
- Dmitri Postolaki
- Robi Tikas
- Paul Vossotski
- Germo Matt

---

# Projekti eesmärk

Week 4 eesmärk oli kasutada SQL agregatsioonifunktsioone ettevõtte müügi-, kliendi-, inventuuri- ja turundusandmete analüüsimiseks ning koostada juhtkonnale ärilisi järeldusi toetavad raportid.

---

# Meeskonna töö

Week 4 jooksul valmisid järgmised analüüsid:

- müügi koondandmete analüüs;
- kliendigruppide analüüs;
- inventuuri ja laoseisu analüüs;
- turunduskanalite ROI analüüs;
- valideerimine ja ärisüntees.

Kõik analüüsid koostati PostgreSQL keskkonnas SQL agregatsioonifunktsioonide abil.

---

# Peamised tulemused

## Müügianalüüs

Analüüs näitas, et 2024. aasta oli ettevõtte jaoks tugeva kasvuga aasta.

- Tellimuste arv kasvas aasta jooksul 312-lt 550-ni.
- Parim kuu oli detsember, mille käive ulatus 170 623 euroni.
- Kõige suurema käibe tõid meeste riided, jalanõud ja naisteriided. :contentReference[oaicite:4]{index=4}

---

## Kliendianalüüs

Kliendid jaotati erinevatesse segmentidesse.

Peamised järeldused:

- ettevõttel on 245 Gold-taseme VIP-klienti;
- VIP-kliendid on ettevõtte kõige väärtuslikum segment;
- Regular-kliendid pakuvad suurimat kasvupotentsiaali;
- uute klientide korduvostude suurendamine on järgmise perioodi oluline eesmärk. :contentReference[oaicite:5]{index=5}

---

## Inventuuri analüüs

Inventuuri analüüs kinnitas, et enim müüdud toodete kategooriad olid kooskõlas laoseisu andmetega ning võimaldas hinnata toodete saadavust müügimahtude suhtes.

---

## Turundusanalüüs

Turunduskanalite võrdlus näitas selgeid erinevusi kanalite tulemuslikkuses.

Peamised tulemused:

- Google Organic tõi suurima müügikäibe;
- Facebook oli müügikäibelt teine kanal;
- e-mailiturundus oli kõige efektiivsem ühe kliendi kohta;
- Instagram andis tugeva müügimahu;
- Direct-kanal tõi palju tellimusi, kuid väiksema käibe kliendi kohta. :contentReference[oaicite:6]{index=6}

---

# Ärilised järeldused

Meeskonna analüüside põhjal selgus, et:

- ettevõtte müük kasvas kogu 2024. aasta jooksul;
- Gold-taseme VIP-kliendid moodustavad kõige väärtuslikuma kliendisegmendi;
- Google Organic on kõige tulemuslikum turunduskanal;
- enim müüdud toodete piisav laoseis on ettevõtte jaoks oluline;
- Regular-klientide arendamine VIP-segmenti pakub suurimat kasvuvõimalust. 

---

# Kokkuvõte

Week 4 analüüsid andsid tervikliku ülevaate UrbanStyle müügitulemustest, kliendikäitumisest, inventuuri seisust ja turunduskanalite tulemuslikkusest. Valideerimise käigus olulisi vastuolusid ei tuvastatud ning tulemused olid valmis esitamiseks juhtkonnale. :contentReference[oaicite:8]{index=8}

---

# Kasutatud tehnoloogiad

- PostgreSQL
- SQL
- Supabase
- GitHub
- NotebookLM
