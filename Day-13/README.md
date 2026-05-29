# Day 13 - SQL Injection

Today I focused on advanced SQL Injection concepts using PortSwigger Web Security Academy labs.

Topics Covered:

- SQL Injection UNION Attacks
- Retrieving Data from Other Tables
- Determining the Number of Columns
- ORDER BY Enumeration Technique
- UNION SELECT NULL Method
- Finding Columns with Compatible Data Types
- Retrieving Multiple Values in a Single Column
- Database Enumeration
- Information Schema Exploration
- Querying Database Version Information
- Database-Specific Syntax (MySQL, PostgreSQL, Oracle)
- Oracle DUAL Table
- Blind SQL Injection Fundamentals

Key Learnings:

- UNION attacks require the same number of columns.
- Compatible data types are necessary for successful UNION queries.
- ORDER BY can be used to identify the number of columns returned by a query.
- NULL values act as universal placeholders during column testing.
- Information Schema can reveal table names and column names.
- Different DBMS products use different SQL syntax.
- Blind SQL Injection occurs when query results and database errors are hidden from the user.

Labs Completed:

✔ Retrieving hidden data using UNION attacks  
✔ Finding the number of columns  
✔ Identifying useful columns for data extraction  
✔ Retrieving multiple values from a single column  
✔ Querying database version information  
✔ Listing database contents

Progress:

Completed SQL Injection Module up to Database Enumeration and started Blind SQL Injection concepts.

Platform:
PortSwigger Web Security Academy
