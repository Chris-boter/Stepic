-- STEP 1
-- Создание пустой таблицы

/*
ЗАДАНИЕ: Создать таблицу поставка (supply), которая имеет ту же структуру, что и таблиц book.


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