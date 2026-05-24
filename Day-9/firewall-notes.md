## Firewall Basics

### What is Firewall?
Firewall acts like a security guard for a network/device.

It decides:
- Which traffic should be allowed
- Which traffic should be blocked

### Stateful Firewall
Smart firewall.

### Features
- Remembers connections
- Observes TCP handshake:
  SYN → SYN/ACK → ACK
- Detects suspicious packets
- More secure

### Drawback
- Uses more memory/resources

### Stateless Firewall
Simple firewall.

### Features
- No memory
- Checks packet individually
- Very fast
- Handles huge traffic efficiently

### Drawback
- Less intelligent
- Less secure compared to stateful firewall
