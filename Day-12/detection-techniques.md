SQL Injection Detection Techniques
Single Quote Testing
Payload:
SQL
'
Purpose
intentionally break query syntax
observe application behavior
Possible Responses
SQL syntax errors
database errors
blank pages
unexpected behavior
Boolean-Based Testing
Payloads:
SQL
' OR 1=1--
SQL
' OR 1=2--
Logic
1=1 → always TRUE
1=2 → always FALSE
Time-Based Testing
Payload:
SQL
' AND SLEEP(5)--
Purpose
create intentional delay
detect blind SQL Injection
Blind SQL Injection
Some applications:
hide SQL errors
hide visible differences
Attackers rely on:
timing analysis
logical testing
indirect response analysis
Main Learning
Focused on:
backend response analysis
manual vulnerability detection
logical testing methods
