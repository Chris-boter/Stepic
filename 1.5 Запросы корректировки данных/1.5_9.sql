-- STEP 9
-- Запросы на удаление

/*
ЗАДАНИЕ: Удалить из таблицы supply книги тех авторов, общее количество экземпляров книг которых в таблице book превышает 10.

*/

DELETE FROM supply 
HAVING amount IN (
        SELECT amount < 10
        FROM book
        GROUP BY author
      );


SELECT * FROM supply;