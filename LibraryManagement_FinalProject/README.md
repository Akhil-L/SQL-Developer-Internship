# Library Management System – Final Project

# Overview
This is a complete SQL-based Library Management System. It helps manage books, members, authors, categories, and loan records. The project demonstrates the use of advanced SQL concepts such as JOINs, views, triggers, and data modeling.

# Tools Used
- MySQL Workbench
- dbdiagram.io (for ER diagram)

# Folder Contents
- 'schema.sql' – Table definitions for Books, Authors, Members, Loans, etc.
- 'data_inserts.sql' – Sample data
- 'views.sql' – Views for borrowed and overdue books
- 'queries.sql' – Aggregation queries
- 'triggers.sql' – Trigger to simulate return reminders
- 'Project_Report.pdf' – Final documentation
- 'ERD.png' – Entity Relationship Diagram

# Features
- Normalized schema with FKs
- Many-to-many bridge table (BookAuthors)
- Views for active/overdue books
- Trigger for due-date notification
- Aggregated reports

# How to Run
1. Run 'schema.sql' to create all tables.
2. Execute 'data_inserts.sql' to populate data.
3. Use 'views.sql', 'queries.sql', and 'triggers.sql' as needed.
