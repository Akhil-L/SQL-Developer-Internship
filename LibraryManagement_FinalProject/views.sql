-- views.sql: Borrowed and Overdue Books

-- View: Borrowed Books
CREATE VIEW BorrowedBooks AS
SELECT M.FullName, B.Title, L.LoanDate, L.ReturnDate
FROM Loans L
JOIN Members M ON L.MemberID = M.MemberID
JOIN Books B ON L.BookID = B.BookID
WHERE L.ReturnDate IS NULL;

-- View: Overdue Books (Assume due is 14 days from loan)
CREATE VIEW OverdueBooks AS
SELECT M.FullName, B.Title, L.LoanDate
FROM Loans L
JOIN Members M ON L.MemberID = M.MemberID
JOIN Books B ON L.BookID = B.BookID
WHERE L.ReturnDate IS NULL AND L.LoanDate < CURDATE() - INTERVAL 14 DAY;
