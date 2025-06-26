USE LibraryDB;

-- 1. Select all columns from Books table
SELECT * FROM Books;

-- 2. Select specific columns: Title and PublishedYear
SELECT Title, PublishedYear FROM Books;

-- 3. Select members who have an email address (email is NOT NULL)
SELECT * FROM Members WHERE Email IS NOT NULL;

-- 4. Select books published between 1950 and 2022
SELECT * FROM Books WHERE PublishedYear BETWEEN 1950 AND 2022;

-- 5. Select members with name starting with 'J'
SELECT * FROM Members WHERE FullName LIKE 'J%';

-- 6. Select loans that are not yet returned
SELECT * FROM Loans WHERE Returned = FALSE;

-- 7. Select authors named either 'Plato' or 'Isaac Asimov'
SELECT * FROM Authors WHERE AuthorName IN ('Plato', 'Isaac Asimov');

-- 8. Select books in category 1 or 3 using OR
SELECT * FROM Books WHERE CategoryID = 1 OR CategoryID = 3;

-- 9. Sort books by PublishedYear descending
SELECT * FROM Books ORDER BY PublishedYear DESC;

-- 10. Select top 2 recently added members
SELECT * FROM Members ORDER BY MembershipDate DESC LIMIT 2;