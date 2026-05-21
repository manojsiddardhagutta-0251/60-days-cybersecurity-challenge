# Intro to LAN

# LAN Topologies

## Star Topology
All devices connect to one central switch/router.

Example:
PC -> Switch -> PCs

Advantages:
- Fast
- One PC failure won't affect others

Disadvantages:
- Cost
- If central switch fails entire network affected

---

## Bus Topology
All devices connect to single backbone cable.

Advantages:
- Cheap

Disadvantages:
- Slow
- Main cable cut ayithe full network dead

---

## Ring Topology
Devices connected in circle.

Advantages:
- Less traffic collisions

Disadvantages:
- Data may travel through many devices
- Not efficient

---

# Switch

Switch sends packet only to correct device.

Not everyone.

Works inside same local network.

Example:
PC1 -> Message -> PC5

Switch forwards only to PC5.

---

# Router

Router connects different networks.

Main job:
Best path choose cheyyadam.

Example:
Home Network -> Internet

Router decides where packet should travel.

---

# Subnetting

Large network ni small groups ga divide cheyyadam.

Example:
Company departments:
- HR
- Finance
- Accounts

Reasons:
- Better management
- Less traffic

---

# Network Address vs Host Address

Example IP:
192.168.1.100

Usually:
- First part -> Network
- Last part -> Host/device

---

# Default Gateway

Gateway means:
Exit door to outside network.

Example flow:
PC -> Router/Gateway -> Internet

---

# Subnet Mask

Determines:
- Which part is network
- Which part is host

Example:
192.168.1.0/24

First 3 octets:
Network

Last octet:
Host

---

# ARP (Address Resolution Protocol)

ARP converts:
IP Address -> MAC Address

Because actual local communication uses MAC addresses.

Flow:
1. PC asks:
"Who has this IP?"
2. Target device replies with MAC address
3. Stored in ARP cache

---

# DHCP

DHCP = Dynamic Host Configuration Protocol

Automatically gives:
- IP address
- Gateway
- Subnet mask

DORA Process:
1. Discover
2. Offer
3. Request
4. Acknowledge

Example:
Phone connects to WiFi ->
DHCP automatically assigns IP.
