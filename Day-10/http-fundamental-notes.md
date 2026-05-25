## HTTP Fundamentals

### What is HTTP
HTTP stands for HyperText Transfer Protocol.  
It is the communication rulebook used between a browser and a web server for transferring webpage data like HTML, CSS, JavaScript, images, videos, and API responses.

### Core Idea
Browser sends request → Server processes request → Server sends response back.

### HTTP
- Normal communication
- No encryption
- Data can be intercepted using packet sniffing
- Unsafe on public WiFi

### HTTPS
HTTPS = HTTP + TLS/SSL encryption

- Encrypts communication
- Prevents outsiders from reading sensitive data
- Safer authentication and login handling
- Used in banking, social media, and modern websites

### Important Point
HTTPS does NOT make you invisible.

Attackers may still see:
- Destination IP
- Domain name
- Packet size
- Traffic timing

Only the actual content is encrypted.

### Real Example
If you open:
https://instagram.com

An attacker may know:
- You are visiting Instagram
- Approximate traffic size

But cannot see:
- Username
- Password
- Messages
- Actual encrypted content

### Packet Sniffing
Attackers use tools like:
- Wireshark
- tcpdump

To inspect network packets.

### TLS/SSL
TLS creates encrypted secure channels between client and server.

### Extra Information
Modern websites automatically redirect:
HTTP → HTTPS

Using:
- 301 redirects
- HSTS policies

### Why HTTP Knowledge Matters
Almost every web attack:
- SQL Injection
- XSS
- Session Hijacking
- CSRF
- Authentication bypass

Depends on understanding HTTP properly.
