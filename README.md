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
| `week-8` | Python APIs ja automatiseeritud andmepipeline |
| `week-9` | Karjääri ettevalmistus |
| `week-10` | Lõppprojekt |

## Week 1 - SQL Basics

Käesolev dokument võtab kokku projekti esimese nädala tegevused, mille fookuses oli SQL-i baasteadmiste rakendamine UrbanStyle andmestiku uurimisel. 
Analüüsi eesmärk oli kaardistada andmete seisukord müügi, klientide, toodete ja müügikanalite lõikes.

Meeskond ja rollijaotus

Analüüsi teostas meeskond järgmises koosseisus:

Liis Kolga (Roll A): Müügianalüüs
Dmitri Postolaki (Roll B): Kliendiandmete analüüs
Paul Vossotski (Roll C): Tooteandmete analüüs
Robi Tikas (Roll D): Müügikanalite analüüs ja NotebookLM
Germo Matt: Puudus esimesel nädalal

Rollipõhise analüüsi tulemused

Müük (Sales)

Müügiandmete analüüs keskendus tehingute mahule ja väärtustele. 
Tuvastati kriitilised kohad andmete kvaliteedis, mis vajavad edasist täpsustamist.

Müügikirjete koguarv: 15 234
Suurim tehing: 2170,40 €
Väikseim tehing: -1405,32 €
Puuduvad kliendi ID-d: 1487 kirjet
Järeldus: Andmeid on piisavalt, kuid negatiivsed summad ja puuduvad seosed klientidega nõuavad kontrolli.

Kliendid (Customers)

Kliendiandmete analüüs keskendus andmebaasi täielikkusele ja unikaalsusele.

Kliente kokku: 3150
Puuduvad eesnimed: 0
Puuduvad e-posti aadressid: 380
Unikaalsed e-posti aadressid: 2640
Järeldus: Kliendiandmed on üldiselt kvaliteetsed, kuid esineb dubleerimist e-posti aadresside tasandil.

Tooted (Products)

Tooteandmete analüüs keskendus sortimendi ja hinnastuse ülevaatele.

Tegevused: Kontrolliti toodete koguarvu, analüüsiti kategooriaid ja hinnavahemikke.
Järeldus: Andmestik on korrektne ja võimaldab teostada põhjalikku kategooriapõhist müügianalüüsi.

Müügikanalid (Sales Channels)

Analüüsiti UrbanStyle'i kahekanalilist müügimudelit (veebipood ja füüsilised kauplused).

Kaupluste asukohad: Tallinn, Tartu, Pärnu.
Makseviisid: Pangakaart, sularaha ja järelmaks.
Tehniline märkus: Veebimüügi kirjete puhul on store_location väärtus alati NULL. 
See on ootuspärane, kuna e-müük ei ole seotud konkreetse füüsilise asukohaga.

Peamised andmekvaliteedi tähelepanekud

Analüüsi käigus koondati olulisemad andmetega seotud leiud järgmisse tabelisse:

Soovitused andmete parendamiseks

Põhjalikuma ärianalüüsi tegemiseks on soovitatav astuda järgmised sammud:

Andmelünkade täitmine: Uurida, miks 1487 müügikirjel puudub customer_id ning püüda täita puuduvad 380 e-posti aadressi kliendibaasis.
Negatiivsete summade valideerimine: Teha kindlaks, kas negatiivsed total_price väärtused tähistavad tagastusi, tühistamisi või sisestusvigu.
Duplikaatide kontroll: Selgitada välja, kas korduvad e-posti aadressid viitavad samadele isikutele või on tegemist andmekvaliteedi probleemiga.
Müügikanalite kontroll: Veenduda, et füüsiliste kaupluste müügid sisaldaksid alati korrektset asukohainfot.
Dokumentatsiooni täiendamine: Lisada selgitused veergude ja ärireeglite kohta, et tagada andmete ühene mõistmine kõigile analüütikutele.

Kokkuvõte ja õpiväljundid

Esimese nädala jooksul omandas meeskond praktilisi oskusi SQL-i kasutamisel andmete uurimiseks (EDA - Exploratory Data Analysis). Analüüsiti UrbanStyle'i müügi-, kliendi-, toote- ja müügikanalite andmeid. Tulemusena on meeskonnal selge ülevaade andmestiku struktuurist ja kvaliteedist. Tuvastatud andmevead ja nende parandamine loob usaldusväärse aluse järgmiste nädalate süvitsi minevatele analüüsidele ja äriliste otsuste tegemisele.

## Week 2 - SQL Data Cleaning

## Roll A: Müügiandmete puhastamine – Germo

Soovitus: mida peaks Toomas esimesena parandama? Toomas peaks esimesena parandama DUPLIKAADID (4013 probleemi).

Põhjendus:

    Duplikaadid moonutavad ettevõtte kõige olulisemat näitajat – käivet. 4013 topeltarvet tähendab, et finantsraportid näitavad ebarealistlikult suurt tulu.

    Töömahu vähenemine: Suur tõenäosus on, et osa neist 1487-st puuduvast kliendiviitest
    (NULL customer_id) asuvad just nendes samades duplikaat-ridades. Kui Toomas eemaldab esmalt topeltrread, võib "NULL customer_id" probleemide arv automaatselt kahaneda, säästes aega ja vaeva. Pärast duplikaatide eemaldamist tuleb kohe lahendada allesjäänud NULL customer_id read, et taastada andmebaasi seoste terviklikkus.

## Roll B: Kliendiandmete puhastamine – Liis

Tulemused

Algne ridade arv: 3150 Puuduv eesnimi: 0 Puuduv perenimi: 0 Puuduv e-post: 380 Puuduv linn: 0

Linnade kirjapildid ühtlustati. Pärast puhastamist jäi andmestikku 12 erinevat linna.

Kokkuvõte: Customers tabel oli üldiselt heas kvaliteedis. Peamised tähelepanekud olid ebaühtlased linnade kirjapildid ja 380 puuduva e-posti aadressiga kirjet. Linnade kirjapildid ühtlustati ning andmed on valmis edasiseks analüüsiks.

## Roll C: Tooteandmete puhastamine - Liis

Tulemused: Algne ridade arv: 362 Pärast duplikaatide eemaldamist: 350 Eemaldatud duplikaate: 12 Puuduvad väärtused: 0 Negatiivseid hindu: 0 Üle 1000 € hinnaga tooteid: 0

Kokkuvõte: Products tabel puhastati edukalt. Duplikaadid eemaldati ning puuduvad väärtused ja vigased hinnad puudusid. Pärast puhastamist sisaldab tabel 350 kvaliteetset kirjet, mis on valmis edasiseks analüüsiks.

## Roll D: Ristvalideerimine ja kvaliteedikontroll - Dmitri

-Miks võivad hinnad erineda? (allahindlused, hulgiost, andmeviga?) Enamasti müüakse odavamalt → viitab allahindlustele. Mõnel tootel müüakse kallimalt → see on tõenäoliselt andmeviga. Suurimad erinevused on naiste riietel ja jalanõudel. -Miks võivad hinnad erineda? (allahindlused, hulgiost, andmeviga?) Enamasti müüakse odavamalt → viitab allahindlustele. Mõnel tootel müüakse kallimalt → see on tõenäoliselt andmeviga. Suurimad erinevused on naiste riietel ja jalanõudel.

Soovitus Toomasele: Kõige kriitilisem probleem Võttes arvesse auditi tulemusi, on Toomase jaoks kõige kriitilisem probleem vaimklientide suur hulk (592).See viitab kas ebaefektiivsele kliendihaldusele või vigasele registreerimisprotsessile, kus suur hulk potentsiaalseid kliente ei jõua tehinguni.Teisejärgulise, kuid kohest sekkumist vajava probleemina tuleb käsitleda hinnahälbeid (20 juhtu), eriti neid, kus müügihind on tootehinnast kõrgem, kuna see viitab selgetele andmevigadele, mis moonutavad müügistatistikat.

## Roll E: Valideerimine & QA + ärisüntees - Robi

Soovitame Toomasel keskenduda süsteemide integratsioonile, et vältida edasisi duplikaate, ning Kristi Tammel esitada investoritele ainult puhastatud, unikaalsetel arvetel põhinevat käibeanalüüsi [x] Soovitus põhineb tegelikel andmetel, mitte oletustel Kõik järeldused põhinevad PostgreSQL andmebaasist (Supabase) pärit reaalsetel kirjetel ja Toomas Kase poolt tuvastatud andmeprobleemidel Analüüs ei sisalda spekulatsioone, vaid tugineb audit logile ja valideeritud SQL-päringute tulemustele Toomas Kask võib nüüd olla kindel, et andmed on "kirurgiliselt" puhastatud ja valmis juhatuse koosolekuks

## Week 3 - SQL JOINs

## Roll A: Müük + Kliendid – Robi

UrbanStyle'i parimad kliendid on peamiselt Tallinnast pärit ja kuuluvad lojaalsusprogrammi **Gold**-tasemele, mis kinnitab, et praegune preemiasüsteem töötab efektiivselt.

Enim müüke ja suurim kogutulu pärineb Tallinna kauplusest ja sealselt kliendibaasilt, kuigi Tartu kliendid näitavad samuti tugevat potentsiaali.

Kõige kasumlikum segment on **Gold**-tase, kuhu kuuluvad ettevõtte kõige lojaalsemad ja suurema ostukorviga kliendid.

### Äriline soovitus

Järgmine lojaalsuskampaania tasub suunata Tallinna Gold-klientidele.

---

## Roll B: Kliendid ilma ostudeta – Germo

### Kadunud klientide raport

- **599** registreerunud klienti ei ole sooritanud ühtegi ostu.
- Kõige rohkem passiivseid kliente asub:
  - **Tallinnas – 231**
  - **Tartus – 138**
- Soovitus on käivitada sihitud e-posti kampaania, mis pakub uutele klientidele piiratud ajaga esmaostusoodustust.

### Äriline järeldus

Talvine registreerimiste kasv (november 2024 – veebruar 2025) tõi küll palju uusi kasutajaid, kuid suur osa neist ei jõudnud esimese ostuni. Registreerumisjärgset klienditeekonda tuleks optimeerida, et parandada konversiooni.

---

## Roll C: Tooted + Inventuur – Paul

### 📊 Müügivedurid ja TOP-kategooriad

- **Jalanõud** – **774 k€**
- **Meeste riided** – **750 k€**

**Soovitus:** tagada nende toodete pidev laoseis ning hoida neid turunduse keskmes.

### 📉 Surnud varud

Leiti **12 toodet**, mida pole kordagi müüdud.

**Soovitus:** eemaldada need sortimendist või realiseerida sooduskampaaniatega.

### 📦 Kriitilised laoseisud

Mitu toodet on langenud alla tellimispunkti.

Prioriteetsed juurde tellitavad tooted:

- Õhulised sünteetilised sporditossud (**35 müüki | 27,3 k€**)
- Trendikad Gore-Tex Oxfordid (**32 müüki | 23,4 k€**)

---

## Roll D: Müügikanalid + Kliendid – Liis

### Tulemused

Analüüs näitas, et UrbanStyle kasutab kahte müügikanalit:

- **Pood**
- **Online**

| Müügikanal | Kliente | Kogumüük | Müük kliendi kohta |
|------------|---------:|---------:|-------------------:|
| **Pood** | **2278** | **1 902 430 €** | **835,13 €** |
| **Online** | **1706** | **1 006 747 €** | **590,12 €** |

Analüüsi põhjal teenindas füüsiline pood rohkem kliente ning teenis suurema kogumüügi. Samuti oli keskmine müük ühe kliendi kohta kõrgem kui veebikanalis.

### Järeldus

SQL JOIN päringute abil ühendati müügi-, kliendi- ja tootetabelite andmed ning võrreldi UrbanStyle müügikanalite tulemuslikkust.

Analüüsi põhjal oli füüsiline pood edukam nii klientide arvu, kogumüügi kui ka keskmise müügi poolest ühe kliendi kohta.

---

## Roll E: Valideerimine & QA + ärisüntees – Dmitri

### Soovitatavad järgmised sammud

- Käivitada kahe nädala pikkune sihitud e-posti ja SMS-i kampaania Tallinna ning Tartu Gold-klientidele ja ostuta klientidele.
- Tagada enim müüdud toodete (õhulised sporditossud, Gore-Tex Oxfordid jne) pidev laoseis.
- Parandada registreerumisjärgset klienditeekonda, et suurendada esmaostu konversiooni.
- Jätkata müügikanalite ja kliendikäitumise regulaarset analüüsimist, et toetada andmepõhiseid äriotsuseid.


## Week 4 - SQL Aggregation

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

## Week 5 -  Visualiseerimise disain ja Power BI dashboard

Selle nädala eesmärgid

Töötav Power BI (Track A) või Plotly/Streamlit (Track B) keskkond, ühendatud Supabase'iga

    Valid õige diagrammitüübi iga äriküsimuse jaoks (joon-, tulp-, sektor-, hajuvusdiagramm, KPI kaart)

    Kavandad dashboard'i paigutuse, mis järgib visuaalset hierarhiat ja Z/F-mustrit

    Planeerid filtrite ja interaktiivsuse loogika, mis muudab staatilise dashboard'i dünaamiliseks

#Meeskonnatöö

Week 5 meeskonnatöö link - https://github.com/kolgalys-max/urbanstyle-team-3/tree/main/week-5

Dmitri Roll B teha. ROLL: Marketing Dashboard (Anna — müügikanalite analüüs)

ÜLESANNE: Anna tahab näha, millised müügikanalid toovad kõige rohkem kliente ja müüki. Loo marketing dashboard , mis näitab kanalite efektiivsust ja kliendihankimise mustrit.

SISEND: sales, customers (Supabase või CSV)
VÄLJUND: 2 diagrammi + äritõlgendus (1-2 lauset per diagramm)


## Week 6 - Power BI dashboard’id ja andmelood

Selle nädala eesmärgid

Pärast töövihiku läbitöötamist sa:

    Lisad diagrammidele annotatsioonid, mis selgitavad andmete tähendust

    Kirjutad andmelugusid (data story), mis muudavad numbrid veenvaks narratiiviks

    Kohandad sama andmestiku esitlust vastavalt erinevatele sihtrühmadele (CEO, IT, turundus)

#Meeskonnatöö

Week 6 meeskonnatöö link - https://github.com/kolgalys-max/urbanstyle-team-3/tree/main/week-6

Roll C Pärnu kaupluse dashboard + narratiiv

ÜLESANNE:

Loo Pärnu kaupluse interaktiivne dashboard koos andmelooga. Pärnu on väikseim kauplus ja tugeva hooajalisusega (suvekuurort). Sinu ülesanne on näidata hooajalist mustrit ja selle ärilist tähendust.

SISEND:

Nädal 5 dashboard'i andmed (Supabase / kohalik CSV) Filter: store_location = 'Pärnu' Knaflic Ch 5-6 storytelling põhimõtted

VÄLJUND:

1 interaktiivne dashboard (3-5 diagrammi Pärnu andmetega) Juhtide kokkuvõte (3-5 peamist järeldust)

Vähemalt 2 annotatsiooni diagrammidel 1 viitejoon (eesmärk või keskmine)

Andmelugu: 3-4 lauset narratiivina


## Week 7 – Python ja pandas

Nädal 7 keskendus Pythoni ja pandas’e kasutamisele andmeanalüüsis.

Õppetöö käigus rakendati Pythonit andmete lugemiseks, töötlemiseks ja analüüsimiseks ning pandas’e võimalusi andmetabelitega töötamiseks.

Nädal 7 pani aluse järgmise nädala automatiseeritud andmepipeline’i loomisele.

## Week 8 – Python APIs ja automatiseeritud andmepipeline

Nädal 8 keskendus Pythoni, pandas’e ja Supabase API ühendamisele üheks automatiseeritud andmepipeline’iks.

Eesmärk oli vähendada andmete käsitsi töötlemist ning luua lahendus, mis suudab andmed automaatselt pärida, töödelda, analüüsida, visualiseerida ja tulemused salvestada.

### Meeskonna rollid

| Roll | Liige | Vastutus |
|---|---|---|
| Roll A | Dmitri Postolaki | Supabase API ühendus ja andmete pärimine |
| Roll B | Germo Matt | Andmete puhastamine, transformatsioon ja KPI-de arvutamine |
| Roll C | Robi Tikas | Visualiseerimine ja tulemuste eksport |
| Roll D | Liis Kolga | Pipeline’i automatiseerimine, integratsioon ja lõpptest |

### Pipeline’i töövoog

Pipeline’i põhivoog:

```text
Supabase
   ↓
data_fetcher.py
   ↓
transform.py
   ↓
visualize_export.py
   ↓
pipeline.py
   ↓
output/
```

Pipeline:

1. pärib müügi- ja kliendiandmed Supabase API kaudu;
2. puhastab ja valideerib andmed;
3. arvutab vajalikud näitajad;
4. ühendab müügi- ja kliendiandmestikud;
5. loob visualiseeringud;
6. ekspordib tulemused automaatselt `output/` kausta;
7. logib protsessi käigu ja võimaldab tuvastada võimalikke vigu.

### Week 8 failid

- `data_fetcher.py` – Supabase API ühendus ja andmete pärimine
- `transform.py` – andmete puhastamine, transformatsioon ja KPI-de arvutamine
- `visualize_export.py` – visualiseerimine ja tulemuste eksport
- `pipeline.py` – automatiseeritud tervikpipeline
- `week8RollA.ipynb` – Roll A tööfail
- `team/week8_pipeline_demo.md` – meeskonna pipeline’i demo kirjeldus
- `output/` – pipeline’i loodud väljundid

### Pipeline’i käivitamine

Pipeline käivitatakse terminalist ühe käsuga:

```bash
python pipeline.py
```

Supabase’i ühenduse jaoks peavad vajalikud ühendusandmed olema seadistatud keskkonnamuutujatena.

### Pipeline’i testimine

Pipeline’i lõpptest õnnestus.

Eduka käivitamise käigus:

- andmed loeti Supabase’ist; ✅
- andmed puhastati ja valideeriti; ✅
- vigase summaga read eemaldati; ✅
- nädalakoond loodi; ✅
- KPI-d arvutati; ✅
- müügi- ja kliendiandmed ühendati; ✅
- visualiseeringud loodi; ✅
- tulemused eksporditi automaatselt. ✅

Pipeline töötles lõpptestis **2859 rida** ning kogu protsess töötas edukalt algusest lõpuni.

### KPI tulemused

Pipeline arvutas järgmised põhinäitajad:

| KPI | Tulemus |
|---|---:|
| Kogukäive | **2 967 023,41 €** |
| Unikaalseid kliente | **2540** |
| Keskmine tellimuse väärtus | **299,0 €** |

### Loodud väljundid

Pipeline salvestas `output/` kausta järgmised tulemused:

- `weekly_revenue.html` – nädalakäibe interaktiivne visualiseering;
- `kpi_summary.html` – KPI-de visualiseering;
- `rfm_20260812.csv` – analüüsi tulemustabel.

### Week 8 tulemus

Nädala 8 grupitöö tulemusena valmis terviklik automatiseeritud andmepipeline, mis ühendab API kaudu andmete pärimise, andmete töötlemise, analüüsi, visualiseerimise ja tulemuste salvestamise.

Lahendus vähendab käsitsi tehtavaid samme ning võimaldab sama analüüsi korrata uuendatud Supabase’i andmetega ilma CSV-faile käsitsi edasi-tagasi liigutamata.

Pipeline’i osad on jaotatud eraldi failidesse, mis muudab lahenduse loetavaks ning võimaldab eri etappe eraldi hallata ja testida.

## Week 9 - Karjääri ettevalmistus

 - CV Koostamine - Andmeanalüütiku Vaatepunktist
 - Intervjuu Ettevalmistus - Tehniline ja Käitumuslik
 -  LinkedIn ja Võrgustik - Nähtavus DA Turul
 -  Värbamis juhendi tegemine gruppitöös

## Week 10 - Lõputöö ja Portfoolio Kaitsmine

- GitHub profiili täiendamine
- Portfooliod vaadata üle, vajadusel täiendada vastavalt juhendile
- Terve kursuse tehtud tööde kokkuvõtte viimase esitlusega.


## Kasutatud tehnoloogiad

- PostgreSQL
- Supabase
- Supabase API
- SQL
- Python
- pandas
- Plotly
- GitHub
- NotebookLM
- Power BI
- VS Code
- Python logging

## Projekti eesmärk

Projekti eesmärk on rakendada andmeanalüüsi põhimõtteid praktiliste ärijuhtumite lahendamisel ning arendada oskusi alates andmete kontrollimisest ja SQL-analüüsist kuni visualiseerimise, dashboard’ide, Pythoni-põhise analüüsi ja automatiseeritud andmetöötluseni.

Iga nädal keskendub erinevale analüüsiteemale ning selle käigus valmivad päringud, analüüsid, visualiseeringud, dashboard’id, Python-lahendused ja dokumentatsioon, mis talletatakse käesolevas repositooriumis.

## Projekti areng

Projekti jooksul on meeskond liikunud samm-sammult terviklikuma andmeanalüüsi töövoo suunas:

- SQL-i põhikäskudest andmekvaliteedi kontrollini; ✅
- andmete puhastamisest tabelite ühendamiseni; ✅
- agregeerimisest äriliste järelduste koostamiseni; ✅
- visualiseerimisest Power BI dashboard’ide ja andmelugudeni; ✅
- Pythonist ja pandas’est automatiseeritud andmepipeline’ini. ✅

Week 8 tulemusena on varasemate nädalate eraldiseisvatele analüüsietappidele lisandunud automatiseeritud töövoog, kus andmete pärimine, töötlemine, analüüs, visualiseerimine ja eksport on ühendatud üheks protsessiks.

## Märkused

Kõik analüüsid põhinevad UrbanStyle õppeandmestikul ning on koostatud DACA Andmeanalüütiku Karjäärikiirendi õppetöö raames.
