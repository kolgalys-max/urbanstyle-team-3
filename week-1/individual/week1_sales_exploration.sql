-- Roll A - Sales Exploration

-- Mitu rida on sales tabelis?
SELECT COUNT(*) AS ridade_arv
FROM sales;

-- Vaata tabeli sisu
SELECT *
FROM sales
LIMIT 10;

-- Tallinna müügid
SELECT *
FROM sales
WHERE store_location = 'Tallinn'
ORDER BY sale_date DESC
LIMIT 15;

-- 10 suurimat tehingut
SELECT *
FROM sales
ORDER BY total_price DESC
LIMIT 10;

-- 10 väikseimat tehingut
SELECT *
FROM sales
ORDER BY total_price ASC
LIMIT 10;

-- Puuduv kliendiinfo
SELECT COUNT(*) - COUNT(customer_id) AS puuduv_klient
FROM sales;
