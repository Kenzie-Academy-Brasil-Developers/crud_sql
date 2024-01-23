SELECT * FROM books;

SELECT books.id AS "bookId", books."name" AS "bookName", books.pages, books."createdAt",
books."updatedAt", books_categories.id AS "books_categories_id", books_categories."bookId" 
AS "books_categories_bookId", books_categories."categoryId" AS "books_categories_categoryId",
categories.id AS "categoryId", categories."name" AS "categoryName"
FROM books 
JOIN books_categories ON books_categories."bookId" = books.id
JOIN categories ON books_categories."categoryId" = categories.id
WHERE categories."name" ILIKE 'fantasia';

SELECT books.id AS "bookId", books."name" AS "bookName", books.pages, books."createdAt",
books."updatedAt", books_categories.id AS "books_categories_id", books_categories."bookId" 
AS "books_categories_bookId", books_categories."categoryId" AS "books_categories_categoryId",
categories.id AS "categoryId", categories."name" AS "categoryName"
FROM books
JOIN books_categories ON  books_categories."bookId" = books.id
JOIN categories ON books_categories."categoryId" = categories.id;

SELECT books.id AS "bookId", books."name" AS "bookName", books.pages, books."createdAt",
books."updatedAt", authors.id AS "authorId", authors."name" AS "authorName", authors.bio
FROM books
JOIN authors ON books."authorId" = authors.id
WHERE authors."name" ILIKE 'j. k. rowling';