-- STEP 12
-- Задание

/*
ЗАДАНИЕ: CREATIVITY TIME
- how to declare constant in SQL?
- CONCAT
- Rewrite a string


DECLARE
new_author CONSTANT VARCHAR := "Донцова Дарья"; 
new_title CONSTANT VARCHAR := "Евлампия романова "; 
END;
*/




SELECT
    "Донцова Дарья" as author,
    CONCAT("Евлампия романова и ", title) AS title,
    ROUND((price * 1.42), 2) AS price
FROM book 
ORDER BY 3 DESC, 2 DESC;


