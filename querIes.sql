

--1.
SELECT * FROM customers; 

--2 
SELECT DISTINCT firstname FROM customers;

--3.
SELECT firstname  FROM customers WHERE customerid = 1;

--4
update customers
SET firstname = 'Lerato',
lastname = 'Mabitso'
WHERE customerid = 1;

--5.
DELETE FROM customers
WHERE customerid = 2;

--6.
SELECT status FROM orders;
SELECT COUNT(status) FROM orders;

--7
SELECT CONCAT('R', max(amount)) as MAXIMUM FROM payments;

--8.
SELECT * FROM customers 
order by country;

--9. 
SELECT CONCAT('R', buyprice) as "BETWEEN"
FROM products 
WHERE buyprice 
BETWEEN 100 and 600;

--10.
SELECT * FROM customers 
WHERE country = 'Germany' 
AND city = 'Berlin';

--11.
SELECT * from Customers 
WHERE City ='Cape Town' 
or City = 'Durban';

--12.
SELECT * FROM products WHERE 
buyprice > 500;

--13.
SELECT CONCAT('R', sum(amount)) 
as sum
FROM payments;

--14
SELECT COUNT(status) FROM orders
as COUNTER
WHERE status = 'Shipped';

--15.
SELECT CONCAT('$', round(avg(buyprice)/12)) 
as average FROM products;

--16
SELECT payments.customerid,
customers.firstname,
customers.lastname, 
customers.gender,
customers.address,
customers.phone,
customers.email,
customers.city,
customers.country,
CONCAT( payments.amount) as amount FROM customers
INNER JOIN payments ON payments.CustomerID = Customers.CustomerID;

--17
SELECT * FROM products
WHERE description LIKE '%Turnable front wheels%';


