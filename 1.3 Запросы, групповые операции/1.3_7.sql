-- STEP 7
-- Выборка данных по условию, групповые функции, WHERE и HAVING

/*
ЗАДАНИЕ: Посчитать стоимость всех экземпляров каждого автора без учета книг «Идиот» и «Белая гвардия».
    В результат включить только тех авторов, у которых суммарная стоимость книг более 5000 руб.
    Вычисляемый столбец назвать Стоимость.
    Результат отсортировать по убыванию стоимости.

*/

-- SELECT
--     author,
--     amount * price AS Стоимость,
--     MAX(price) AS Максимальная_цена
-- FROM book
-- GROUP BY author
-- HAVING SUM(price * amount) > 5000 AND  <> 'Идиот' AND title <> 'Белая гвардия';

SELECT
    author,
    SUM(amount * price) AS Стоимость
FROM
    book
WHERE
    title NOT IN ('Идиот', 'Белая гвардия')
GROUP BY
    author 
HAVING
    SUM(amount * price) > 5000
ORDER BY
    SUM(amount * price) DESC;