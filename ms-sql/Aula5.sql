CREATE DATABASE aulajoin

Create table TabelaA(
id int,
nome varchar(10)
);

Create table TabelaB(
id int,
nome varchar(10)
);

INSERT INTO TabelaA (id,nome) values (1,'Robo')
INSERT INTO TabelaA (id,nome) values (2,'Macaco')
INSERT INTO TabelaA (id,nome) values (3,'Samurai')
INSERT INTO TabelaA (id,nome) values (4,'Monitor')

INSERT INTO TabelaB (id,nome) values (1,'Espada')
INSERT INTO TabelaB (id,nome) values (2,'Robo')
INSERT INTO TabelaB (id,nome) values (3,'Mario')
INSERT INTO TabelaB (id,nome) values (4,'Samurai')

SELECT * FROM TabelaA

SELECT * FROM TabelaB

SELECT * FROM TabelaA A 
INNER JOIN TabelaB B
on A.nome = B.nome

SELECT * FROM TabelaA A 
FULL OUTER JOIN TabelaB B 
ON A.nome = B.nome

SELECT * FROM TabelaA A 
LEFT JOIN TabelaB B 
ON A.nome = B.nome
WHERE B.nome IS NULL

USE AdventureWorks2012

SELECT ProductID, name, ProductNumber FROM Production.Product
WHERE NAME LIKE '%CHAI%'
UNION
SELECT ProductID, name, ProductNumber FROM Production.Product
WHERE NAME LIKE '%DECAL%'
ORDER BY NAME DESC

SELECT P.BusinessEntityID, P.FirstName, P.LastName, PE.EmailAddress, HR.JobTitle
FROM Person.Person P
INNER JOIN Person.EmailAddress PE
ON P.BusinessEntityID = PE.BusinessEntityID
INNER JOIN HumanResources.Employee HR
ON P.BusinessEntityID = HR.BusinessEntityID
WHERE HR.JobTitle LIKE '%DESI%'

SELECT * FROM HumanResources.Employee

SELECT PR.ListPrice AS PRECO, PR.Name AS PRODUTO, PC.Name AS SUBCATEGORIA
FROM Production.Product AS PR
INNER JOIN Production.ProductSubcategory AS PC
ON PR.ProductSubcategoryID = PC.ProductSubcategoryID

SELECT * FROM Person.PersonPhone
SELECT * FROM Person.PhoneNumberType

SELECT PP.BusinessEntityID, PN.FirstName AS NOME, PT.Name, PP.PhoneNumberTypeID, PP.PhoneNumber
FROM Person.PersonPhone AS PP
INNER JOIN PERSON.PhoneNumberType AS PT
ON PP.PhoneNumberTypeID = PT.PhoneNumberTypeID
INNER JOIN Person.Person AS PN 
ON PP.BusinessEntityID = PN.BusinessEntityID

SELECT PP.BusinessEntityID, PP.FirstName, PC.CreditCardID
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID

SELECT PP.BusinessEntityID, PP.FirstName, PC.CreditCardID, PE.EmailAddress
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC 
ON PP.BusinessEntityID = PC.BusinessEntityID
LEFT JOIN Person.EmailAddress PE
ON PP.BusinessEntityID = PE.BusinessEntityID
WHERE PC.CreditCardID IS NULL
AND PE.EmailAddress IS NOT NULL

SELECT ProductID, ListPrice FROM Production.Product
WHERE ListPrice > 438.6662

SELECT ProductID ListPrice FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

SELECT * FROM Person.Person
SELECT *FROM HumanResources.Employee
WHERE JobTitle = 'DESIGN ENGINEER'

SELECT FirstName FROM Person.Person
WHERE BusinessEntityID IN (5,6,15)

SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'DESIGN ENGINEER')





