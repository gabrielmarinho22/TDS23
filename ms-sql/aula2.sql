use pubs
SELECT * FROM sys.tables

SELECT * FROM dbo.authors

SELECT au_fname,
       phone 
FROM dbo.authors ORDER BY au_fname DESC

SELECT TOP 5 
           ord_num, qty
FROM dbo.sales
ORDER BY qty DESC

SELECT * FROM dbo.authors 
WHERE state = 'CA'
AND contract = 0
ORDER BY city

SELECT SUM(qty) AS 'TOTAL SALES'
FROM dbo.sales

SELECT * FROM authors
SELECT * FROM titleauthor

SELECT authors.*,titleauthor.*
FROM authors, titleauthor
WHERE authors.au_id = titleauthor.au_id





