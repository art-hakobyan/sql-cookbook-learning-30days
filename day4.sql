-- Day 4 SQL Exercises (Calculated fields)

-- 1. Show Track Name and length in minutes (Milliseconds / 60000.0)

-- 2. Show InvoiceId and Total with 20% tax added as "TotalWithTax"

-- 3. Show Customer Name and Email in one concatenated field

-- Day 4 SQL Exercises (Calculated Fields)

-- 1. Show Track Name and length in minutes (Milliseconds / 60000.0)
SELECT Name,
       ROUND(Milliseconds / 60000.0, 2) AS LengthMinutes
FROM Track
ORDER BY LengthMinutes DESC
LIMIT 10;

-- 2. Show InvoiceId and Total with 20% tax added as "TotalWithTax"
SELECT InvoiceId,
       Total,
       ROUND(Total * 1.2, 2) AS TotalWithTax
FROM Invoice
ORDER BY TotalWithTax DESC
LIMIT 10;

-- 3. Show Customer Name and Email in one concatenated field
SELECT FirstName || ' ' || LastName || ' <' || Email || '>' AS ContactInfo
FROM Customer
ORDER BY LastName, FirstName;

-- 4. (Optional Challenge) Find the average track length in minutes
SELECT ROUND(AVG(Milliseconds) / 60000.0, 2) AS AvgTrackLengthMinutes
FROM Track;