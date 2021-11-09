-- ШАГ 7  
-- ЗАДАНИЕ создание таблицы

CREATE TABLE book(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    author VARCHAR(30),
    -- DECIMAL(8,2) 8 знаков до ','  2 знака после  + и - и (,) не учитываются
    price DECIMAL(8,2),
    amount INT
);