## Port Forwarding

### Main Idea
Without port forwarding, services/websites inside a private network are only accessible within the same network.

### Example
Suppose:
- Website hosted on:
  192.168.1.10

Devices connected to same WiFi:
- Can open the website.

Outside network:
- Cannot access directly because private IPs don't work over internet.

### Router Role
Router has:
- Private Network Side
- Public IP Side

### Real Flow
Internet Request
→ Public IP
→ Router
→ Router forwards request
→ Internal Server
→ Website opens

### Usage
- Hosting websites
- SSH access
- CCTV remote access
- Game servers
