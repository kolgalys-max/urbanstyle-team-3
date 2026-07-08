# Week 3 - INNER JOIN , LEFT JOIN , RIGHT JOIN

Meeskond: 

Roll A: Müük + Kliendid                         - Robi

Roll B: Kliendid ilma ostudeta                  - Germo

Roll C: Tooted + Inventuur                      - Paul  

Roll D: Müügikanalid + Kliendid                 - Liis 

Roll E: Valideerimine & QA + ärisüntees         - Dmitri

---------

Roll A: Müük + Kliendid  - Robi

UrbanStyle’i parimad kliendid on peamiselt Tallinnast pärit ja kuuluvad lojaalsusprogrammi Gold-tasemele, mis kinnitab, et meie praegune preemiasüsteem töötab efektiivselt
. Enim müüke ja suurim kogutulu pärineb Tallinna kauplusest ja sealselt kliendibaasilt, kuigi Tartu kliendid näitavad samuti tugevat potentsiaali
. Kõige kasumlikum segment on ootuspäraselt Gold-tase, kuhu on koondunud meie kõige lojaalsemad ja suurema ostukorviga kliendid
. See analüüs annab meile selge aluse suunata järgmine kampaania just Tallinna piirkonna VIP-klientidele.


Roll B: Kliendid ilma ostudeta - Germo

Kadunud klientide raport (SLAIDILE INFO)

Ostuta kliendid: 599 registreerunud kasutajat ei ole sooritanud veel ühtegi ostu.

Kriitilised piirkonnad: Üle poole passiivsetest klientidest asub Tallinnas (231) ja Tartus (138).

Soovitus tagasivõitmiseks: Käivitada sihitud e-maili kampaania (fookusega suurlinnadele), mis pakub ostule suunamiseks piiratud kehtivusajaga esmaostusoodustust.

Lisaanalüüsi äriline järeldus
Talvine registreerimiste hüpe (nov 2024 – veebr 2025) tõi lehele peamiselt kampaaniaturiste; see näitab, et kuigi uute kontaktide hankimine (Lead Gen) on edukas, on registreerumisjärgne konversioon esmaostuks ebaefektiivne ja vajab optimeerimist.


Roll C: Tooted + Inventuur - Paul/Germo

📊 MÜÜGIVEDURID JA TOP KATEGOORIAD
-------------------------------------------------------------------------------------------
• Peamised käibemootorid: JALANÕUD (774 k€) ja MEESTE RIIDED (750 k€).
• Tegevus: Tagada nende kategooriate püsiv tarnekindlus ja hoida fookust turunduses.


📉 SURNUD VARUD JA LAO OPTIMEERIMINE
-------------------------------------------------------------------------------------------
• Probleem: Tuvastatud 12 TOODET, mida pole kunagi müüdud (sale_id IS NULL).
• Tegevus: Vabastada laopind – eemaldada tooted sortimendist või müüa allahindlusega.


📦 KRIITILISED VARUD JA JUURDETELLIMINE
-------------------------------------------------------------------------------------------
• Probleem: Osa tooteid on langenud alla reorder-punkti (staatus: "TELLI JUURDE").
• Tegevus: Täiendada varusid koheselt, prioriseerides top-müügihitte:
  - Õhuline sünteetiline sporditossud (35 müüki | 27,3 k€)
  - Trendikas goretex oxfordid (32 müüki | 23,4 k€)


Roll D: Müügikanalid + Kliendid - Liis 

Tulemused

Analüüs näitas, et UrbanStyle kasutab kahte müügikanalit: **pood** ja **online**.

Füüsiline pood teenindas **2287 klienti**, kellelt tehti **6656 ostu**, kogumüügiga **2 847 955,50 €**. Veebikanalis oli **1730 klienti**, **3462 ostu** ning kogumüük **1 526 275,77 €**.

Müük ühe kliendi kohta oli füüsilises poes **1245,28 €**, veebikanalis **882,24 €**, mis näitab, et füüsiline pood oli selle näitaja põhjal efektiivsem.

Linnade võrdluses oli suurima müügiga **Tallinn** nii veebi- kui ka poekanalis. Tootekategooriate lõikes moodustasid suurima käibe meeste riided, jalanõud ja naisteriided.

## Järeldus

Tulemuste põhjal on füüsiline pood UrbanStyle kõige tugevam müügikanal nii kogumüügi kui ka müügi ühe kliendi kohta. Analüüs aitab hinnata müügikanalite tulemuslikkust ning toetab turundus- ja müügiotsuste tegemist.


Roll E: Valideerimine & QA + ärisüntees - Dmitri

Soovitatavad järgmised sammud:

Käivitada 2-nädalane sihitud e-mail + SMS kampaania Tallinna ja Tartu Gold + ostuta klientidele (esmaostu soodustus).
Tagada top-toodete (õhulised sporditossud, goretex oxfordid jne) laoseis.
Optimeerida registreerumisjärgset konversiooni (talvine leadide hüpe ei muutu müügiks).
