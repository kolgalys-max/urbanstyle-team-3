-- Nädal: 1          Meeskond: UrbanStyle Team 3         Roll: C


-- Toodete koguarvu
SELECT COUNT(*) AS toodete_arv FROM products;

-- Tabeli sisu
SELECT * FROM products LIMIT 10; 

-- Tootekategooriad
SELECT DISTINCT category FROM products;


-- Hinnavahemik
SELECT 
  product_name, 
  category, cost_price
  FROM products    
ORDER BY cost_price DESC    
LIMIT 10;

SELECT 
  product_name, 
  category, cost_price
  FROM products    
ORDER BY cost_price ASC    
LIMIT 10;


-- Filtreeritud kategooria järgi
SELECT * 
FROM products    
WHERE category = 'meeste_riided'    
ORDER BY cost_price DESC

-- Kontrollitud puuduvad väärtused
SELECT COUNT(*) - COUNT(cost_price) 
  AS puuduvad_hinnad    
FROM products;

SELECT COUNT(*) - COUNT(category) 
  AS puuduvad_kategooriad    
FROM products;

-- Tooted kategooriati kokku
SELECT category, 
  COUNT(*) 
  AS toodete_arv   
FROM products   
GROUP BY category   
ORDER BY toodete_arv DESC; 

-- Keskmised hinnad kategooriati
SELECT category,
  COUNT(*) 
  AS toodete_arv,
MIN(cost_price) AS min_hind,
MAX(cost_price) AS max_hind
FROM products  
GROUP BY category   
ORDER BY max_hind DESC;

-- Kombineeritud tingimused
SELECT * 
FROM products   
WHERE cost_price > 50 AND category = 'naiste_riided'   
ORDER BY cost_price DESC; 
