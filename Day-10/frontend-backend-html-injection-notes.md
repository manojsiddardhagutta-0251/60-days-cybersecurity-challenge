## Frontend Backend and HTML Injection

### Frontend
Visible part users interact with.

Technologies:
- HTML
- CSS
- JavaScript

### Backend
Server-side logic and processing.

Handles:
- Databases
- Authentication
- APIs
- Dynamic content

### HTML Structure
Basic webpage structure:
- html
- head
- body

### IDs and Classes
Used for styling and JavaScript targeting.

### DOM
DOM = Document Object Model

JavaScript uses DOM to modify webpages dynamically.

### HTML Injection
Occurs when user input becomes raw HTML output.

### Dangerous Example
User enters:
<h1>Hacked</h1>

Browser renders actual HTML.

### Risks
- Defacement
- XSS attacks
- Credential theft

### Extra Information

### Never Trust User Input
Developers must:
- Sanitize input
- Escape dangerous characters
- Validate data

### Developer Tools Usage
Attackers inspect:
- Hidden fields
- Disabled buttons
- Comments
- JavaScript files

Using browser inspect tools.
