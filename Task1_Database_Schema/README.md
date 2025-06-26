# 📚 Library Management System – SQL Schema

## 📌 Objective
Design a normalized SQL database schema for a library. The goal is to manage books, authors, members, and book lending efficiently.

## 🧰 Tools Used
- MySQL Workbench (for SQL & ER diagram)
- GitHub (version control & submission)
- dbdiagram.io (for ER diagram visualization)

## 🗃️ Database Structure

### ✅ Tables Created:
- `Categories`: Classifies books into genres.
- `Authors`: Stores book author info.
- `Books`: Stores book details.
- `BookAuthors`: Manages many-to-many relation between books and authors.
- `Members`: Stores library member info.
- `Loans`: Tracks lending of books to members.

### 💡 Features
- Uses `AUTO_INCREMENT` for surrogate keys
- `UNIQUE` constraint on emails and ISBNs
- Many-to-Many and One-to-Many relationships
- Return tracking in loans (`Returned` boolean flag)

## 🖼 ER Diagram
Upload the provided ER diagram from dbdiagram.io or MySQL Workbench as `er-diagram.png`.

## 🚀 Innovation
- Added `MembershipDate` & `PublishedYear` to add real-world depth
- Added `Returned` flag for easy tracking
- Clean separation of relationships & constraints

## 📝 How to Use
- Import `schema.sql` in MySQL Workbench or your preferred SQL tool.
- Use `USE LibraryDB;` before querying the database.