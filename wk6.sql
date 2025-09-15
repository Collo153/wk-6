-- ================================
-- Assignment: Joins and Relationships
-- answers.sql
-- ================================

-- Question 1 🧑‍💼
-- Get firstName, lastName, email, and officeCode of all employees
-- INNER JOIN employees with offices on officeCode
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees AS e
INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;


-- Question 2 🛍️
-- Get productName, productVendor, and productLine from products
-- LEFT JOIN products with productlines on productLine
SELECT p.productName, p.productVendor, pl.productLine
FROM products AS p
LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;


-- Question 3 📦
-- Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders
-- RIGHT JOIN customers with orders on customerNumber
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
