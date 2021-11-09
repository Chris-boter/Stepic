-- STEP 8 
-- Задание

/*
ЗАДАНИЕ: CREATIVITY TIME
- much more real work and analyze the data
*/

SELECT 
    SUM(price * amount) AS 'Total cost (TC)',
    SUM(amount) AS 'Total amount (TA)'
FROM 
    book;


SELECT 
    author,
    COUNT(title) AS Products, 
    SUM(amount) AS Copies, 
    ROUND(SUM(price * amount) / 26267.50 * 100, 1) AS Author_share_in_TC,
    ROUND(SUM(amount) / 46 * 100, 1) AS Author_share_in_TA
FROM 
    book
GROUP BY 
    author
ORDER BY
    Author_share_in_TC;


SELECT 
    title as 'Product name',
    ROUND((SUM(price * amount) / 26267.50 * 100) / SUM(amount), 1)  AS Copies_share_in_TC, 
    SUM(amount) AS Copies, 
    ROUND(SUM(price * amount) / 26267.50 * 100, 1) AS Product_share_in_TC,
    ROUND(SUM(amount) / 46 * 100, 1) AS Product_share_in_TA
FROM 
    book
GROUP BY 
    title
ORDER BY
    Product_share_in_TC;
