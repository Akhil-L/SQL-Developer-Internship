-- data_inserts.sql: Sample data for LibraryDB

INSERT INTO Authors (AuthorName) VALUES 
('J.K. Rowling'), ('George Orwell'), ('J.R.R. Tolkien');

INSERT INTO Categories (CategoryName) VALUES 
('Fiction'), ('Fantasy'), ('Science Fiction');

INSERT INTO Books (Title, PublishedYear, CategoryID) VALUES 
('Harry Potter', 1997, 2),
('1984', 1949, 3),
('The Hobbit', 1937, 2);

INSERT INTO BookAuthors (BookID, AuthorID) VALUES 
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Members (FullName, JoinDate) VALUES 
('Alice Johnson', '2024-06-01'),
('Bob Smith', '2024-06-05');

INSERT INTO Loans (BookID, MemberID, LoanDate, ReturnDate) VALUES 
(1, 1, '2024-07-01', NULL),
(2, 2, '2024-07-02', '2024-07-10');
