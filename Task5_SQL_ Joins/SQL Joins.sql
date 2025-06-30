-- Use the library database
USE LibraryDB;

--  1. INNER JOIN: Get all books with their category names
SELECT b.Title, c.CategoryName
FROM Books b
INNER JOIN Categories c ON b.CategoryID = c.CategoryID;

--  2. LEFT JOIN: Get all books and their authors (including books with no authors assigned yet)
SELECT b.Title, a.AuthorName
FROM Books b
LEFT JOIN BookAuthors ba ON b.BookID = ba.BookID
LEFT JOIN Authors a ON ba.AuthorID = a.AuthorID;

--  3. RIGHT JOIN: Members who borrowed books (right join not supported in all systems, use LEFT JOIN flipped)
SELECT m.FullName, l.LoanDate
FROM Loans l
RIGHT JOIN Members m ON l.MemberID = m.MemberID;

--  4. FULL OUTER JOIN: Emulated using UNION (Books and Loans)
SELECT b.Title AS BookTitle, l.LoanDate
FROM Books b
LEFT JOIN Loans l ON b.BookID = l.BookID
UNION
SELECT b.Title, l.LoanDate
FROM Books b
RIGHT JOIN Loans l ON b.BookID = l.BookID;

--  5. SELF JOIN: Members who share the same membership date
SELECT m1.FullName AS Member1, m2.FullName AS Member2, m1.MembershipDate
FROM Members m1
JOIN Members m2 ON m1.MembershipDate = m2.MembershipDate AND m1.MemberID < m2.MemberID;

--  6. CROSS JOIN: Get all combinations of books and categories
SELECT b.Title, c.CategoryName
FROM Books b
CROSS JOIN Categories c;

--  7. NATURAL JOIN equivalent (Books and Categories via CategoryID)
SELECT b.Title, c.CategoryName
FROM Books b
JOIN Categories c ON b.CategoryID = c.CategoryID;

--  8. JOIN without foreign key: Authors and books by matching IDs manually (assumes data matches)
SELECT a.AuthorName, b.Title
FROM Authors a
JOIN BookAuthors ba ON a.AuthorID = ba.AuthorID
JOIN Books b ON ba.BookID = b.BookID;
