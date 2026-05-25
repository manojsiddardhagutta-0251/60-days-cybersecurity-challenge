## HTTP Methods

### GET
Used for fetching information.

Examples:
- Opening homepage
- Viewing profile

### Characteristics
- Data usually visible in URL
- Should not modify data

### POST
Used for sending data to server.

Examples:
- Login forms
- Signups
- File uploads

### Characteristics
- Data sent inside request body
- Safer than GET for sensitive input

### PUT
Used for updating existing data.

Example:
Updating profile information.

### DELETE
Used for deleting resources.

Example:
Deleting account or posts.

### Extra Information

### Why Methods Matter
Web applications rely heavily on proper method handling.

Improper handling may cause:
- Authentication bypass
- CSRF vulnerabilities
- Unauthorized actions

### REST APIs
Modern APIs heavily use:
- GET
- POST
- PUT
- DELETE

### Common Attack Idea
Changing:
GET → POST
or
POST → PUT

Sometimes reveals vulnerabilities.
