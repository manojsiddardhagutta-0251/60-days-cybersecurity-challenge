## HTTP Status Codes

### 200 Series → Success

#### 200 OK
Request successful.

#### 201 Created
New resource created successfully.

### 300 Series → Redirects

#### 301 Moved Permanently
Permanent redirect.

#### 302 Found
Temporary redirect.

### 400 Series → Client Errors

#### 400 Bad Request
Malformed request.

#### 401 Unauthorized
Authentication required.

#### 403 Forbidden
Access denied even after login.

#### 404 Not Found
Page/resource does not exist.

### 500 Series → Server Errors

#### 500 Internal Server Error
Server-side crash/problem.

#### 503 Service Unavailable
Server overloaded or unavailable.

### Extra Information

### Recon Importance
Status codes reveal valuable information to attackers.

Example:
- 403 → Resource exists but blocked
- 404 → Resource absent

### Bug Bounty Usage
Security researchers analyze:
- Error messages
- Unexpected redirects
- Debug pages

To discover vulnerabilities.
