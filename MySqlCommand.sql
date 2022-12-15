------All the sql command------
--Creating Database--
CREATE DATABASE databasename;
select Database databasename;
--Create Table--
CREATE TABLE customers (
    customer_id int,
    name varchar(255),
    age int
);
--Like Keyword--
SELECT name
FROM customers
WHERE name LIKE ‘%Bob%’;
--Between Keyword--
SELECT name
FROM customers
WHERE age BETWEEN 45 AND 55;
--And Keyword--
SELECT name
FROM customers
WHERE name = ‘Bob’ AND age = 55;
--Where Keyword--
SELECT name
FROM customers
WHERE name = ‘Bob’;
--For all data--
SELECT * FROM customers;
--Is null --
SELECT name
FROM customers
WHERE name IS NULL;
--Is not null--
SELECT name
FROM customers
WHERE name IS NOT NULL;
--Create Index--
CREATE INDEX idx_name
ON customers (name);
--Drop Database--
DROP DATABASE databasename;
--Drop Table--
DROP TABLE customers;
--Update--
UPDATE customers
SET age = 56
WHERE name = ‘Bob’;
--Delete--
DELETE FROM customers
WHERE name = ‘Bob’;
--Alter table--
>ALTER TABLE customers
ADD surname varchar(255);
>ALTER TABLE customers
DROP COLUMN surname;
--Count function--
SELECT COUNT(*)
FROM customers;
--Sum Function--
SELECT SUM(age)
FROM customers;
--Average--
SELECT AVG(age)
FROM customers;
--Minimum--
SELECT MIN(age)
FROM customers;
--Maximum--
SELECT MAX(age)
FROM customers;
--Group by--
SELECT name, AVG(age)
FROM customers
GROUP BY name;
--Order by--
SELECT name
FROM customers
ORDER BY age;
---Fetch---
SELECT name
FROM customers
ORDER BY age
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;
--If record exist--
SELECT name
FROM customers
WHERE EXISTS
(SELECT order FROM ORDERS WHERE customer_id = 1);
--Idenitfy a point in a transaction--
SAVEPOINT SAVEPOINT_NAME;
---Saving every transaction in the database---
 DELETE FROM customers
WHERE name = ‘Bob’;
COMMIT
--Undo transaction--
ROLLBACK TO SAVEPOINT_NAME;
--Union All--
SELECT name FROM customers
UNION
SELECT name FROM orders;