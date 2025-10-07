-- Q1: Total payment amount for each payment date (latest 5)
SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Q2: Average credit limit per customer
SELECT customerName, country, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- Q3: Total price of products ordered
SELECT productCode, quantityOrdered, 
       SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Q4: Highest payment amount for each check number
SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
