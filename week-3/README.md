# Week 3 – INNER JOIN, LEFT JOIN, RIGHT JOIN

## Meeskond

- **Roll A:** Müük + Kliendid – Robi
- **Roll B:** Kliendid ilma ostudeta – Germo
- **Roll C:** Tooted + Inventuur – Paul
- **Roll D:** Müügikanalid + Kliendid – Liis
- **Roll E:** Valideerimine & QA + ärisüntees – Dmitri

---

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
