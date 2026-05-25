## Cookies and Sessions

### What are Cookies
Small pieces of data stored in browser memory.

### Purpose
Maintain state between requests.

### Common Uses
- Login sessions
- Shopping carts
- User preferences
- Tracking

### Cookie Flow

1. User logs in
2. Server creates cookie
3. Browser stores cookie
4. Browser sends cookie in future requests

### Set-Cookie Header
Used by server to create cookies.

### Example
Set-Cookie: sessionid=abc123

### Request Cookie Header
Browser sends stored cookie back.

### Authentication
Most websites use cookies for:
- Session management
- Login persistence

### Extra Information

### Session Hijacking
If attacker steals session cookie:
They may access victim account.

### Secure Cookies
Modern websites use:
- HttpOnly
- Secure
- SameSite

To improve cookie security.

### Browser Developer Tools
Cookies can be inspected using:
Chrome → Inspect → Application → Cookies
