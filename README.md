# Library Management System – SQL Schema

# Objective
Designed a SQL database schema for a library.
The goal is to manage books, authors, members, and book lending efficiently.

# Tools Used
- MySQL Workbench (for SQL & ER diagram)
- GitHub (version control & submission)

# Database Structure

## Tables Created:
- 'Categories': Classifies books into genres.
- 'Authors': Stores book author info.
- 'Books': Stores book details.
- 'BookAuthors': Manages many-to-many relation between books and authors.
- 'Members': Stores library member info.
- 'Loans': Tracks lending of books to members.

# Task
- Identified key entities like Books, Authors, Members, Loans
- Identified Relationships like 'One-to-Many: Categories -> Books, Members -> Loans'
                                'Many-to-Many: Books -> Authors'
- Normalized the schema
- Used DDL to define tables and keys
- Added PRIMARY KEY and FOREIGN KEY constraints