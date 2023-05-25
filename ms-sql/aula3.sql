SELECT * FROM PERSON.PERSON
WHERE BusinessEntityID = 5
OR BusinessEntityID = 111
OR BusinessEntityID = 23 


/*
AND - E 
OR - OU
NOT - ACOMPANHADO

=
>
<
<>
>=
<=

*/

SELECT Weight FROM Production.Product
WHERE Weight > 500
AND Weight <= 700

SELECT * FROM HumanResources.Employee
WHERE MaritalStatus = 'M'
AND SalariedFlag = '1'
AND BirthDate <= '1983/01/01'

SELECT * FROM PERSON.Person
WHERE FirstName = 'Peter'
AND LastName = 'Krebs'

SELECT * FROM PERSON.EmailAddress
WHERE BusinessEntityID = 26 

  SELECT COUNT(*) AS 'QTDE DE PRODUTOS' FROM Production.Product

  SELECT DISTINCT NAME FROM Production.Product

  SELECT DISTINCT TITLE FROM PERSON.Person

  SELECT DISTINCT (TITLE) FROM Person.Person
WHERE Title = 'Ms.'
SELECT DISTINCT TITLE FROM Person.Person

SELECT ListPrice FROM Production.Product
WHERE ListPrice >= 1000
AND ListPrice <= 1500

SELECT LISTPRICE FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500

SELECT * FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'

SELECT * FROM PERSON.PERSON
WHERE BusinessEntityID = 5
OR BusinessEntityID = 111
OR BusinessEntityID = 23 

SELECT * FROM Person.Person
WHERE BusinessEntityID IN (5,111,23)

SELECT * FROM Person.Person
WHERE FirstName LIKE 'Ro_'

/*

SELECT * FROM Person.Person
WHERE FirstName LIKE 'R%'

*/

SELECT COUNT(*) AS 'PRODUTOS ACIMA DE 1500' FROM Production.Product

SELECT COUNT(*) AS 'SOBRENOME COMECA COM P' FROM Person.Person

SELECT COUNT(DISTINCT CITY) AS 'QUANTIDADE DE CIDADES' FROM Person.Address






  
