
PRIMERA PARTE

Ejercicio 01:

SELECT firstname, lastname title FROM customers;
SELECT *
FROM Customer
WHERE Country = 'Brazil';


Ejercicio 02:

SELECT lastname FROM employees WHERE title = 'Sales Support Agent';



Ejercicio 03:

SELECT Track.*
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
WHERE Artist.Name = 'AC/DC';



Ejercicio 04:

SELECT
    CustomerId AS ID,
    FirstName || ' ' || LastName AS NombreCompleto,
    Country
FROM Customer
WHERE Country <> 'USA';



Ejercicio 05:

SELECT
    FirstName || ' ' || LastName AS NombreCompleto,
    Address,
    City,
    State,
    Country,
    Email
FROM Employee
WHERE Title LIKE '%Sales%';



Ejercicio 06:

SELECT DISTINCT billingcountry FROM invoices



Ejercicio 07:

SELECT COUNT(*)state FROM customers WHERE country 'USA' GROUP BY state


Ejercicio 08:

SELECT COUNT(trackid) FROM Invoice_items WHERE InvoiceId in(37)


Ejercicio 09:

SELECT COUNT(*) AS TotalCanciones
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
WHERE Artist.Name = 'AC/DC';


Ejercicio 10:

SELECT COUNT(*) AS TotalFacturas FROM invoices BY billingcountry;


Ejercicio 11:

SELECT COUNT(InvoiceId), billingCountry FROM invoices GROUP BY billingcountry


Ejercicio 12:

SELECT strftime('%Y', Invoicedate) AS año, COUNT(InvoiceId) FROM Invoices WHERE año IN ('2009','2011')


Ejercicio 13:

SELECT COUNT(Invoicedate) FROM Invoices WHERE Invoicedate BETWEEN '2009-01-01'AND'2011-01-01'


Ejercicio 14:

SELECT Country, COUNT(CustomerId) FROM customers WHERE country IN ('Spain', 'Brazil')
GROUP BY


Ejercicio 15:

SELECT name FROM Track WHERE Name LIKE 'You';



SEGUNDA PARTE

Ejercicio 01:

SELECT * FROM invoices
INNER JOIN customers c ON i CustomerId = CustomerId
WHERE c.COUNTRY


Ejercicio 02:

SELECT 

    FirstName || ' ' || LastName AS AgenteVentas,
    InvoiceId,
    InvoiceDate


Ejercicio 03:

SELECT
    FirstName || ' ' || c.LastName AS Cliente,
    Country,
    FirstName || ' ' || e.LastName AS Agente,
    Total



Ejercicio 04:

SELECT 
    InvoiceId,
    InvoiceLineId,
    Name AS Cancion,
    UnitPrice,
    Quantity



Ejercicio 05:

SELECT
    Name AS Cancion,
    Name AS Formato,
    Title AS Album,
    Name AS Genero



Ejercicio 06:

SELECT 
    Name AS Playlist,
    COUNT(TrackId) AS TotalCanciones



Ejercicio 07:

SELECT
    FirstName || ' ' || LastName AS Empleado,
    SUM(Total) AS TotalVendido



Ejercicio 08:

SELECT
    FirstName || ' ' || LastName AS Agente,
    SUM(Total) AS Total2009


Ejercicio 09:

SELECT
    Name AS Artista,
    SUM(UnitPrice * Quantity) AS TotalVendido