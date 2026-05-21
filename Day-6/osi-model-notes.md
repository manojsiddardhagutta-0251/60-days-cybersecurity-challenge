# OSI Model

OSI = Open Systems Interconnection Model

7 Layers:
1. Physical
2. Data Link
3. Network
4. Transport
5. Session
6. Presentation
7. Application

Shortcut:
APS TNDP

(Application Presentation Session Transport Network DataLink Physical)

---

# Encapsulation

As data moves through layers,
each layer adds its own information.

This process is called:
Encapsulation.

---

# Layer 1 - Physical Layer

Bottom-most layer.

Main job:
Transfer raw bits/signals physically.

Uses:
- Ethernet cables
- Electrical signals
- Radio/WiFi signals

Converts:
Binary data -> Signals

---

# Layer 2 - Data Link Layer

Handles:
- MAC addresses
- Local device-to-device communication

Identifies:
Which local device should receive frame.

Works inside LAN.

---

# NIC Card

NIC = Network Interface Card

Allows device to connect to network.

Without NIC:
No internet/WiFi.

Each NIC has unique MAC address.

---

# Layer 3 - Network Layer

Handles:
- IP addresses
- Routing

Main job:
Data ni different networks madhya pampadam.

Example:
Laptop -> Google Server

Uses routers.

---

# Routing

Routers decide:
Which path packet should travel.

Example flow:
Laptop ->
Home Router ->
ISP ->
Internet Routers ->
Google Server

---

# Routing Protocols

Examples:
- OSPF
- RIP

Help routers choose:
- Fastest path
- Reliable path

---

# Packet Journey

Network Layer:
Where to go? (IP)

Data Link Layer:
Which local device? (MAC)

Physical Layer:
How to physically send? (Signals)
