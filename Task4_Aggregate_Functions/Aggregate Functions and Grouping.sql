USE LibraryDB;

-- 1. Count total number of books
SELECT COUNT(*) AS TotalBooks FROM Books;

-- 2. Count number of members who registered
SELECT COUNT(*) AS TotalMembers FROM Members;

-- 3. Average published year of books (excluding NULLs)
SELECT ROUND(AVG(PublishedYear), 2) AS AverageYear FROM Books WHERE PublishedYear IS NOT NULL;

-- 4. Count books in each category
SELECT CategoryID, COUNT(*) AS BookCount
FROM Books
GROUP BY CategoryID;

-- 5. Count loans per member
SELECT MemberID, COUNT(*) AS TotalLoans
FROM Loans
GROUP BY MemberID;

-- 6. Show only members with more than 1 loan (HAVING)
SELECT MemberID, COUNT(*) AS TotalLoans
FROM Loans
GROUP BY MemberID
HAVING COUNT(*) > 1;

-- 7. Total books per author using join
SELECT A.AuthorName, COUNT(*) AS BooksWritten
FROM Authors A
JOIN BookAuthors BA ON A.AuthorID = BA.AuthorID
GROUP BY A.AuthorName;

-- 8. Total books returned vs not returned
SELECT Returned, COUNT(*) AS Total
FROM Loans
GROUP BY Returned;