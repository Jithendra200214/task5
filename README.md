## Task 5: SQL Joins (Inner, Left, Right, Full)

### Objective
Learn how to combine data from multiple tables using different join types.

### Tools
- DB Browser for SQLite / MySQL Workbench

### What I Did
- Created sample `Customers`, `Orders`, `Products`, and `Order_Items` tables with data that demonstrate matched and unmatched rows.
- Wrote and tested queries using:
  - `INNER JOIN` (only matching rows)
  - `LEFT JOIN` (all left rows + matches)
  - `RIGHT JOIN` (MySQL) and equivalent left-swap for SQLite
  - `FULL OUTER JOIN` emulation using `UNION` (since MySQL/SQLite lack native support)
- Practiced aggregates combined with joins (sales per product).

### Outcome
- Gained practical mastery of how different joins affect results and how to emulate joins not supported by the DB engine.
