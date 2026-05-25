## HTTP Requests and Responses

### HTTP Request
When browser asks server for data.

### Example Request
GET / HTTP/1.1

### Important Request Headers

#### Host
Specifies website/domain.

#### User-Agent
Tells browser information.

Example:
Chrome, Firefox version.

#### Referer
Shows previous webpage source.

### HTTP Response
Server reply after processing request.

### Example Response
HTTP/1.1 200 OK

### Important Response Headers

#### Server
Shows server software.

Example:
nginx
apache

#### Content-Type
Type of data returned.

Examples:
- text/html
- image/png
- application/json

#### Content-Length
Size of response data.

### Request Lifecycle
Browser → Server → Processing → Response → Browser Render

### Extra Information

### Stateless Protocol
HTTP is stateless.

Server does not remember previous requests automatically.

Cookies and sessions solve this problem.

### Developer Tools
Chrome DevTools allows viewing:
- Requests
- Headers
- Cookies
- APIs
- Response data

### Security Importance
Attackers inspect requests to:
- Modify parameters
- Bypass authentication
- Manipulate APIs
- Test vulnerabilities
