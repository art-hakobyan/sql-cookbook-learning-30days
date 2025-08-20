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