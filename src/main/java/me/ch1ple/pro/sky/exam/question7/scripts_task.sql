-- Добавляю книги и авторов таблицы
INSERT into author (name)
VALUES
  ('J.S. Foer'),
  ('N.V. Gogol'),
  ('L.N. Tolstoy'),
  ('F.M. Dostoevskiy');

  INSERT into book (name)
  VALUES
     ('War & Peace'),
     ('Anna Karenina'),
     ('Childhood'),
     ('Everything Is Illuminated'),
     ('Extremely Loud & Incredibly Close'),
     ('Dead Souls'),
     ('Crime And Punishment');

-- SQL-запрос: вывестм все книги определенного автора
SELECT book.name, author.name
FROM book
        INNER JOIN author ON book.author_id = author.id
        WHERE author.name LIKE '%Foer%';