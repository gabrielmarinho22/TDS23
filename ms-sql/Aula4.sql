USE AdventureWorks2012


SELECT COUNT (*) AS 'PRODUTOS VERMELHOS' FROM Production.Product
WHERE Color = 'RED'
AND ListPrice BETWEEN '500' AND '1000'

SELECT * FROM Production.Product
WHERE NAME LIKE '%ROAD%'

SELECT TOP 10 * FROM SALES.SalesOrderDetail ORDER BY LineTotal DESC
SELECT * FROM SALES.SalesOrderDetail

SELECT SUM (linetotal) as 'TOTAL VENDAS'
From Sales.SalesOrderDetail

SELECT AVG (linetotal)
From Sales.SalesOrderDetail

/* MAX = maximo , MIN = minimo , AVG = media */

SELECT FirstName, COUNT(FirstName) FROM PERSON.PERSON
GROUP BY FirstName

SELECT SpecialOfferID, SUM(UnitPrice) AS 'TOTAL VENDAS' FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID 
ORDER BY SUM (UnitPrice) DESC

SELECT ProductID, COUNT(ProductID) AS ' QTDE PRODUTOS ATE HOJE' FROM Sales.SalesOrderDetail
GROUP BY ProductID

SELECT COLOR, AVG (ListPrice) FROM Production.Product
WHERE COLOR = 'Silver'
GROUP BY COlOR

SELECT MiddleName, COUNT(MiddleName) AS QTDE FROM Person.Person
GROUP BY MiddleName
ORDER BY MiddleName

SELECT ProductID, AVG(OrderQty) FROM Sales.SalesOrderDetail
GROUP BY ProductID

SELECT TOP 10 ProductID, SUM(LineTotal) FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM (LineTotal) DESC

SELECT ProductID, COUNT(ProductID) AS QTDE, AVG(OrderQty) AS MEDIA
FROM Production.WorkOrder
GROUP BY ProductID

SELECT FirstName, COUNT(FirStName) AS QTDE
FROM Person.Person
WHERE FirstName LIKE 'G%'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

SELECT ProductID, SUM(LineTotal) AS 'TOTAL VENDAS PRODUTO'
FROM SALES.SalesOrderDetail
GROUP BY ProductID
HAVING SUM (LineTotal) BETWEEN 162000 AND 500000

SELECT ProductID, AVG(LineTotal) FROM Sales.SalesOrderDetail 
GROUP BY ProductID
HAVING AVG (LineTotal) < 1000



