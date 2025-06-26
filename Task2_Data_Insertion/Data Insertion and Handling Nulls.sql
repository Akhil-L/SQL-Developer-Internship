USE LibraryDB;

-- INSERT INTO Categories
INSERT INTO Categories (CategoryName) VALUES
('Science Fiction'),
('Philosophy'),
('Technology');

-- INSERT INTO Authors
INSERT INTO Authors (AuthorName) VALUES
('Isaac Asimov'),
('Plato'),
('Charles Dickens');

-- INSERT INTO Members
INSERT INTO Members (FullName, Email) VALUES
('Akhil L', 'akhil@gmail.com'),
('John Doe', NULL),  -- NULL email
('Jane Smith', 'jane@gmail.com');

-- INSERT INTO Books
INSERT INTO Books (Title, ISBN, PublishedYear, CategoryID) VALUES
('Foundation', '978-0-553-80371-0', 1951, 1),
('The Republic', '978-0-19-283370-9', NULL, 2),  -- NULL published year
('Tesla Vision', '978-0-452-28423-4', 2021, 3);

-- INSERT INTO BookAuthors
INSERT INTO BookAuthors (BookID, AuthorID) VALUES
(1, 1),
(2, 2),
(3, 3);

-- INSERT INTO Loans
INSERT INTO Loans (BookID, MemberID, LoanDate, ReturnDate, Returned) VALUES
(1, 1, '2024-06-01', NULL, FALSE), -- Not returned yet
(2, 2, '2024-06-03', '2024-06-10', TRUE),
(3, 3, '2024-06-05', NULL, FALSE);

-- UPDATE statement to fill missing return date
UPDATE Loans
SET ReturnDate = '2024-06-20'
WHERE BookID = 1 AND ReturnDate IS NULL;

-- DELETE a loan record for a specific user and book
DELETE FROM Loans
WHERE MemberID = 2 AND BookID = 2;