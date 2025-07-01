USE LibraryDB;

-- 1. Scalar subquery: Average book publish year
SELECT Title, PublishedYear,
    (SELECT ROUND(AVG(PublishedYear), 2) FROM Books) AS AvgPublished
FROM Books;

-- 2. IN subquery: Members who borrowed books
SELECT FullName
FROM Members
WHERE MemberID IN (SELECT MemberID FROM Loans);

-- 3. EXISTS subquery: Authors who wrote at least one book
SELECT AuthorName
FROM Authors A
WHERE EXISTS (
    SELECT 1
    FROM BookAuthors BA
    WHERE A.AuthorID = BA.AuthorID
);

-- 4. Correlated subquery: Members with more loans than average per member
SELECT FullName
FROM Members M
WHERE (
    SELECT COUNT(*) FROM Loans L WHERE L.MemberID = M.MemberID
) > (
    SELECT AVG(TotalLoans) FROM (
        SELECT COUNT(*) AS TotalLoans FROM Loans GROUP BY MemberID
    ) AS LoanCounts
);

-- 5. Subquery in FROM clause (derived table)
SELECT CategoryID, BookCount
FROM (
    SELECT CategoryID, COUNT(*) AS BookCount
    FROM Books
    GROUP BY CategoryID
) AS BookStats;
