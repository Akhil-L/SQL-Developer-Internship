USE LibraryDB;

-- 1. Create a view to show books with their category names
CREATE VIEW BooksWithCategories AS
SELECT B.BookID, B.Title, C.CategoryName
FROM Books B
JOIN Categories C ON B.CategoryID = C.CategoryID;

-- 2. Create a view to show members who borrowed more than 1 book
CREATE VIEW FrequentBorrowers AS
SELECT M.MemberID, M.FullName, COUNT(L.LoanID) AS LoanCount
FROM Members M
JOIN Loans L ON M.MemberID = L.MemberID
GROUP BY M.MemberID, M.FullName
HAVING COUNT(L.LoanID) > 1;

-- 3. Select from the views
SELECT * FROM BooksWithCategories;
SELECT * FROM FrequentBorrowers;

-- 4. Drop views (if needed)
-- DROP VIEW BooksWithCategories;
-- DROP VIEW FrequentBorrowers;
