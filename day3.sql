-- Day 3 SQL Exercises (ORDER BY & DISTINCT)

-- 1. List all customers ordered by LastName (ascending)
SELECT FirstName, LastName, Country
FROM Customer
ORDER BY LastName ASC;

-- 2. List all invoices ordered by Total (descending)
SELECT InvoiceId, CustomerId, Total
FROM Invoice
ORDER BY Total DESC;

-- 3. Find all distinct billing countries from Invoice
SELECT DISTINCT BillingCountry
FROM Invoice
ORDER BY BillingCountry;

-- 4. Get the top 10 longest tracks (by Milliseconds)
SELECT Name, Milliseconds
FROM Track
ORDER BY Milliseconds DESC
LIMIT 10;

-- 5. Find the 5 most expensive invoices (by Total).
SELECT *
FROM Invoice
ORDER BY total DESC
LIMIT 5;

-- 6. List all customers ordered by Country, then City.
SELECT *
FROM Customer
WHERE State != ''
ORDER BY Country ASC;

-- 7. Select the 3 shortest tracks, showing Name and Milliseconds.
SELECT Name, Milliseconds
FROM Track
ORDER BY Milliseconds ASC
LIMIT 3;


-- 8. Show invoices from the USA ordered by BillingPostalCode (descending)
SELECT *
FROM Invoice
WHERE BillingCountry LIKE '%USA%'
ORDER BY BillingPostalCode DESC;