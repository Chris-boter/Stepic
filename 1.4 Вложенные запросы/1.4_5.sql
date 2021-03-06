-- STEP 5
-- Вложенный запрос, операторы ANY и ALL
-- ANY ~= &&    ALl ~= ||

/*
ЗАДАНИЕ: Вывести информацию о книгах(автор, название, цена), цена которых меньше самой большой из минимальных цен, вычисленных для каждого автора.

1. Начинаем с конца  -  нам нужно определить минимальную цену книг для каждого автора . это будет наш подзапрос
2. теперь нужно составить основной запрос - он простой, и группировка там не нужна
3. и теперь нужно сравнение в WHERE  - цена которых меньше - результата вложенного запроса. именно тут можно применить ANY, как написано в уроке.
*/

SELECT 
    author, 
    title, 
    price
FROM book
WHERE price < ANY (
        SELECT MIN(price) 
        FROM book 
        GROUP BY author 
    );

SELECT MIN(price) 
FROM book 
GROUP BY author;


/*
Вспомните порядок выполнения запросов:
 1. FROM
 2. WHERE
 3. GROUP BY
 4. HAVING
 5. SELECT
 6. ORDER BY

*/