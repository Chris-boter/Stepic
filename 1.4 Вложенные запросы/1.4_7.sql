-- STEP 7
-- Вложенный запрос после SELECT

/*
ЗАДАНИЕ: CREATIVITY TIME
- Now it sound more like real work and data analyze 
*/

SELECT 
    author, 
    title, 
    price, 
    amount,
    ROUND(((amount * price) / (SELECT SUM(price*amount) FROM book) * 100), 2) AS income_percent,
    amount * price AS income
FROM book
ORDER BY income_percent DESC;

SELECT SUM(price*amount) AS full_income
FROM book;