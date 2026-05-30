--
# Error-Based SQL Injection: Forcing Direct Leaks via Type-Conversion Constraints

Error-based SQL Injection is a highly efficient exploitation technique. It is utilized when an application suppresses standard query results but fails to secure internal error reporting mechanisms, allowing database information to be leaked directly within system error logs.

## 💥 Forcing Data Type Mismatch Errors via `CAST`
The core methodology relies on forcing a database server to convert structured text strings (like a password hash) into an incompatible data type (such as a strict integer). 

### The Type Conversion Trap
When the database parser encounters a `CAST()` function demanding that text characters be handled as mathematical integers, it processes the interior query first. When it attempts to force convert the resulting text, the system encounters a type conversion constraint and throws a verbose runtime exception.

```text
[ Inject Payload ] ---> CAST((SELECT password FROM users) AS INT)
                                          |
                        [ DB Resolves Secret Password ]
                                 "abc@123"
                                          |
               [ DB Attempts to Convert "abc@123" into Integer ]
                                          |
+-----------------------------------------v-----------------------------------------+
|                        RAW VERBOSE DATABASE EXCEPTION LOG                         |
+-----------------------------------------------------------------------------------+
| ERROR: Conversion failed when converting the varchar value 'abc@123' to int.      |
+-----------------------------------------------------------------------------------+
🛠️ Real-World Scenario: Analyzing the Output Channel
When an analyst targets a vulnerable endpoint, appending a single quote might return an incomplete string error message:
Unterminated string literal started at position 95 in SQL SELECT * FROM tracking... Expected char
This indicates that the injected payload is being truncated by character limits. By optimizing the query length (e.g., using a shorter tracking ID or optimizing conditions), the query completes successfully and forces the database to output sensitive data within the conversion error message.
