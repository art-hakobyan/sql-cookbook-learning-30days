-- Day 2: Find tracks longer than 5 minutes

-- 1) Brazilian customers
SELECT FirstName, LastName, City
FROM Customer
WHERE Country = 'Brazil'

-- 2) Tracks > 5 minutes (300000 ms), longest first
SELECT Name, Milliseconds
FROM Track
WHERE Milliseconds > 300000
ORDER BY Milliseconds DESC;

-- 3) Titles containing 'love'
SELECT Name, AlbumId, Composer
FROM Track
WHERE Name NOT LIKE '%love%', Composer IS NOT NULL,

-- 4) Invoices with Totals between 10 and 15 (inclusive)
SELECT InvoiceId, InvoiceDate, BillingCountry, Total
FROM Invoice
WHERE Total BETWEEN 10 AND 15;

-- 5) Find all invoices from 2009
SELECT InvoiceId, InvoiceDate, Total
FROM Invoice
WHERE InvoiceDate LIKE '2009%';

-- 6) Find all employees who are Sales Agents
SELECT FirstName, LastName, Title
FROM Employee
WHERE Title = 'Sales Support Agent';

-- 7) Find all customers whose company field is not NULL
SELECT FirstName, LastName, Company
FROM Customer
WHERE Company IS NOT NULL;

--8) List all invoices where the billing country is Canada or USA
SELECT InvoiceId, InvoiceDate, BillingCountry, Total
FROM Invoice
WHERE BillingCountry IN ('Canada', 'USA');

