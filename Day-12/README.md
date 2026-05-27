SQL Injection Fundamentals
What is SQL Injection?
SQL Injection (SQLi) is a web security vulnerability where attackers inject malicious SQL code into backend database queries.
Causes of SQL Injection
user input is not sanitized properly
backend trusts user-controlled data
SQL queries are dynamically generated
What Attackers Can Do
access hidden data
bypass authentication
manipulate backend logic
retrieve sensitive information
modify or delete data
SQL Query Structure
SQL
SELECT * FROM users WHERE username='siddu'
Query Breakdown
SELECT → retrieve data
* → all columns
FROM → target table
WHERE → filtering condition
Databases Learned
MySQL
PostgreSQL
Oracle SQL
Main Learning
Focused on:
backend query logic
query execution flow
understanding why vulnerabilities happen internally
