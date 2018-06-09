-- Step 1:
-- SELECT all the data FROM the Artist table.
/SELECT * 
FROM "Artist";

-- Step 2: 
-- SELECT the FirstName, LastName, and Country FROM the Employee table.
SELECT 
	"FirstName", "LastName", "Country"
FROM Employee;

-- Step 3: 
-- SELECT the Name, Composer, and Milliseconds FROM the Track table WHERE the Milliseconds are greater than 299000.
SELECT 
	"Name", "Composer", "Milliseconds"
FROM Track
WHERE "Milliseconds" > 299000;

-- Step 4: 
-- SELECT the count FROM the Track table WHERE the Milliseconds are greater than 299000.
SELECT COUNT(*) as Count
FROM Track
WHERE "Milliseconds" > 299000;

-- Black Diamond Exercises: 
/* 1: Find the average length of all tracks in Milliseconds */
SELECT AVG(Milliseconds) as "averageTrackLength"
FROM Track;
/* 2: Find the number of invoices in the USA */
SELECT 
	COUNT(CASE 
          	WHEN "BillingCountry" = 'USA' 
          	THEN "InvoiceId" 
          END) as "invoicesUSA"
FROM Invoice;
/* 3: Make a list of all the First Names of Customers that contain an 'a' */
SELECT *
FROM Customer
WHERE LOWER("FirstName") LIKE '%a%' /* It appears that Chinook doesn't support ILIKE ?? */;
/* 4: Make a list of the 10 longest tracks */
SELECT * 
FROM Track
ORDER BY "Milliseconds" DESC
LIMIT 10;
/* 5: Make a list of the 20 shortest tracks */
SELECT * 
FROM Track
ORDER BY "Milliseconds" ASC
LIMIT 20;
/* 6: Find all the customers that live in California or Washington */
SELECT *
FROM Customer
WHERE State IN ('CA', 'WA');
/* 7: Find all the customers that live in California, Washington, Utah, Florida, or Arizona (Use IN keyword) */
SELECT *
FROM Customer
WHERE State IN ('CA', 'WA', 'UT', 'FL', 'AZ');
/* 8: Insert an artist to the database */
INSERT INTO Artist("ArtistId", "Name")
VALUES
	(276, 'The Flaming Lips');
/* 9: Insert yourself as a customer to the database */
INSERT INTO Customer("CustomerId", "FirstName", "LastName", Company, Address, City, State, Country, "PostalCode", Phone, Fax, Email, "SupportRepId")
VALUES
	(60, 'Brad', 'Van Orman', 'Vandelay Industries', '123 Real Lane', 'Orem', 'UT', 'USA', '84057', '+1 (801) 867-5309', null, 'arealemail@legitdomain.rad', 3);
/* 10: Find a list of all Playlists that start with Classical */
SELECT * 
FROM Playlist
WHERE Name LIKE 'Classical%';