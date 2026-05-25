## URL Structure and Web Requests

### URL Meaning
URL = Uniform Resource Locator

Example:
https://tryhackme.com/view-room?id=1#topics

### URL Components

#### Protocol
Defines communication method.
Examples:
- HTTP
- HTTPS
- FTP

### Host / Domain
Website or server name.

Example:
tryhackme.com

### Port
Specific service door on server.

Common Ports:
- 80 → HTTP
- 443 → HTTPS
- 21 → FTP
- 22 → SSH

### Path
Specific webpage or resource.

Example:
/view-room

### Query Parameters
Extra information sent in URL.

Example:
?id=1

### Fragment
Used for page navigation.

Example:
#topics

### Browser Workflow
1. Browser reads URL
2. DNS resolves domain to IP
3. Browser connects to server
4. HTTP request sent
5. Server responds
6. Browser renders webpage

### Extra Information

### DNS
DNS converts domain names into IP addresses.

Example:
google.com → server IP

### Query String Risks
Sensitive data should never be exposed in URLs because:
- URLs get logged
- Stored in browser history
- Visible to others

### Real World Use
Attackers inspect URLs for:
- Hidden parameters
- IDOR vulnerabilities
- Admin endpoints
- Information leakage
