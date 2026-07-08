-- =====================================================
-- Week 3 – Roll D: Sales Channels
-- Autor: Liis Kolga
-- =====================================================

-- 1. Müügikanalid
SELECT DISTINCT channel
FROM sales
ORDER BY channel;

-- 2. Müügikanalite ülevaade
SELECT
    channel AS müügikanal,
    COUNT(DISTINCT customer_id) AS kliente,
    COUNT(sale_id) AS oste,
    SUM(total_price) AS kogumüük
FROM sales
GROUP BY channel
ORDER BY kogumüük DESC;

-- 3. Müük kanalite ja linnade lõikes
SELECT
    s.channel AS müügikanal,
    c.city AS linn,
    COUNT(DISTINCT c.customer_id) AS kliente,
    SUM(s.total_price) AS kogumüük
FROM sales s
INNER JOIN customers c
    ON s.customer_id = c.customer_id
GROUP BY s.channel, c.city
ORDER BY s.channel, kogumüük DESC;

-- 4. Müük kanalite ja tootekategooriate lõikes
SELECT
    s.channel AS müügikanal,
    p.category AS tootekategooria,
    COUNT(DISTINCT c.customer_id) AS kliente,
    COUNT(s.sale_id) AS oste,
    SUM(s.total_price) AS kogumüük,
    ROUND(AVG(s.total_price), 2) AS keskmine_ost
FROM sales s
INNER JOIN customers c
    ON s.customer_id = c.customer_id
INNER JOIN products p
    ON s.product_id = p.product_id
GROUP BY s.channel, p.category
ORDER BY s.channel, kogumüük DESC;

-- 5. Müük kliendi kohta müügikanalite lõikes
SELECT
    s.channel AS müügikanal,
    COUNT(DISTINCT s.customer_id) AS kliente,
    SUM(s.total_price) AS kogumüük,
    ROUND(
        SUM(s.total_price) / COUNT(DISTINCT s.customer_id),
        2
    ) AS müük_per_klient
FROM sales s
GROUP BY s.channel
ORDER BY müük_per_klient DESC;
