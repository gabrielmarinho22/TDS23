SELECT FirstName, title, MiddleName FROM Person.Person
WHERE title = 'Mr.'
union
SELECT FirstName, title, MiddleName FROM Person.Person
where MiddleName = 'A'
AND Title IS NOT NULL
AND MiddleName IS NOT NULL
order by FirstName asc

USE northwind

SELECT * FROM Funcionarios

SELECT F1.NOME, F1.DataAdmissao, F2.NOME, F2.DataAdmissao 
FROM Funcionarios F1, Funcionarios F2
WHERE DATEPART(YEAR, F1.DataAdmissao) = DATEPART(YEAR, F2.DataAdmissao)

USE AdventureWorks2012

SELECT * FROM Sales.SalesOrderDetail

SELECT AVG(TotalDue), DATEPART(MONTH, OrderDate) Mês
FROM SALES.SalesOrderHeader
GROUP BY  DATEPART(MONTH, OrderDate)
ORDER BY 2 ASC

SELECT AVG(TotalDue) Media, DATEPART(YEAR, OrderDate) Ano
FROM SALES.SalesOrderHeader
GROUP BY  DATEPART(YEAR, OrderDate)
ORDER BY 2 ASC

SELECT ProductID, ListPrice FROM Production.Product AS P
WHERE ListPrice < (SELECT AVG(ListPrice) FROM Production.Product)
ORDER BY 2



