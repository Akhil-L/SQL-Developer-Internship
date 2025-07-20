-- queries.sql: Aggregations and Reports

-- Number of books borrowed by each member
SELECT M.FullName, COUNT(*) AS BooksBorrowed
FROM Loans L
JOIN Members M ON L.MemberID = M.MemberID
GROUP BY M.MemberID;

-- Most borrowed books
SELECT B.Title, COUNT(*) AS TimesBorrowed
FROM Loans L
JOIN Books B ON L.BookID = B.BookID
GROUP BY L.BookID
ORDER BY TimesBorrowed DESC;
