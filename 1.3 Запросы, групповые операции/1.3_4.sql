-- STEP 4
-- Выборка данных c вычислением, групповые функции

/*
ЗАДАНИЕ: Для каждого автора вычислить суммарную стоимость книг S (имя столбца Стоимость), а также вычислить налог на добавленную стоимость  для полученных сумм (имя столбца НДС ) , который включен в стоимость и составляет k = 18%,  а также стоимость книг  (Стоимость_без_НДС) без него.
    Значения округлить до двух знаков после запятой.
    В запросе для расчета НДС(tax)  и Стоимости без НДС(S_without_tax) использовать следующие формулы:


*/

SELECT 
    author, 
    SUM(price * amount) AS Стоимость,
    ROUND(SUM(price * amount * 0.1525424), 2) AS НДС, 
    ROUND(SUM(price * amount * 0.8474576), 2) AS Стоимость_без_НДС 
FROM book
GROUP BY author;


/*
why not ???

SELECT 
    author, 
    SUM(price * amount) AS Стоимость,
    ROUND((SUM(price * amount) / 1.18 * 0.18), 2) AS НДС, 
    (price - ROUND((SUM(price * amount) / 1.18 * 0.18), 2)) AS Стоимость_без_НДС
    ROUND((price / 1.18), 2) AS Стоимость_без_НДС
FROM book
GROUP BY author;
*/