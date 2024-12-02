--Создаю таблицу author
CREATE TABLE author
(
id SERIAL PRIMARY KEY,
name     TEXT NOT NULL
);
--Создаю таблицу book и связываю её с таблицей author через внешний ключ
CREATE TABLE book
(
id SERIAL PRIMARY KEY,
name TEXT NOT NULL,
author_id INT REFERENCES author (id)
)