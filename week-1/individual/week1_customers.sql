Nädal 1: SQL Basics -- UrbanStyle'i andmete uurimine

## Mida ma tegin
- Uurisin customers tabelit SQL päringutega
- Leidsin 3150 klienti.
  Puuduvad eesnimed - 0
  Puuduvad emailid 380
  Kokku_emaile 3150
  unikaalseid_emaile 2640

  - Osalesin meeskonna andmemaastiku koostamisel

## Peamised õpid
- uued SQL päringud

## Failid
- `week1_[tabel]_exploration.sql` -- minu SQL päringud
- `week1_results_screenshot.png` -- tulemuste pilt

## Meeskonna töö
- [Link meeskonna Data Landscape slaidile]

SELECT COUNT(*) AS klientide_arv FROM customers;
SELECT * FROM customers LIMIT 10; 

SELECT * FROM customers    WHERE city = 'Tallinn'    ORDER BY last_name ASC    LIMIT 15; 
SELECT MIN(registration_date) AS vanim,           MAX(registration_date) AS uusim    FROM customers;
SELECT COUNT(*) - COUNT(first_name) AS puuduvad_eesnimed    FROM customers;
SELECT COUNT(*) - COUNT(email) AS puuduvad_emailid    FROM customers; 
SELECT DISTINCT city FROM customers; 
SELECT COUNT(*) AS kokku_emaile, COUNT(DISTINCT email) AS unikaalseid_emaile   FROM customers;   -- Vahe = duplikaadid!   
SELECT city, COUNT(*) AS klientide_arv   FROM customers   GROUP BY city   ORDER BY klientide_arv DESC; 
SELECT * FROM customers   WHERE registration_date >= '2024-07-01'   ORDER BY registration_date DESC; 
