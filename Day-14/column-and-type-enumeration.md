SQL Injection Column Enumeration
Before executing a structural UNION attack, the exact column footprint of the original backend database query must be identified. This is executed via trailing order parameters:
' ORDER BY 1--
' ORDER BY 2--
' ORDER BY 3--
Note: Continue incrementing until the application returns an error or a broken layout state. If ORDER BY 4 works but ORDER BY 5 throws an error, the query strictly handles exactly 4 columns.
The Mechanics of the Dual Table
Unlike common databases, an Oracle database strictly enforces a FROM clause for every SELECT execution. To run test strings without querying a live business table, leverage the built-in system table named DUAL.
DUAL Table Architecture: A special one-row, one-column tracking structure configured by default with a column named Dummy containing a value of X.
Memory Execution: Submitting SELECT NULL, NULL FROM DUAL acts as a static reference source, forcing the system memory (RAM) to create temporary rows inside the active display without data conflicts.
Finding Columns with Useful Data Types
Attackers prioritize tracking columns that can process and display TEXT or STRING characters, because critical assets like usernames, passwords, hashes, and database configuration logs are strictly processed as strings.
The Systematic Probe Vector
To systematically evaluate which column handles characters safely within an identified 4-column footprint, place an active character string ('a') sequentially across the parameter slots while keeping the rest as NULL:
' UNION SELECT 'a', NULL, NULL, NULL--
' UNION SELECT NULL, 'a', NULL, NULL--
Evaluation Metrics
Situation 1 (Error/Crash): The application database throws an explicit backend typing error. This confirms the column is strictly expecting another data type like numeric integers.
Situation 2 (Success/Render): The application handles the payload perfectly and displays the character 'a' on screen. This isolates the column as a verified string injection point.
SQL-Injection
