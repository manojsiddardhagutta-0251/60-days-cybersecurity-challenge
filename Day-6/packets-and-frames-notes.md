# Packets & Frames

# Packet

Packet = Small piece of data.

Contains:
- Source IP
- Destination IP
- Actual data

Data travels in packets across internet.

---

# Frame

Frame = Outer cover of packet.

Real-life example:
Letter -> Packet  
Envelope -> Frame

Frame contains:
- Source MAC
- Destination MAC

Used for local delivery.

---

# Transport Layer (Layer 4)

Decides:
How data should be delivered.

Uses protocols:
- TCP
- UDP

---

# TCP

TCP = Transmission Control Protocol

Reliable and safe.

Checks:
- Correct order
- Missing packets
- Delivery confirmation

If packet missing:
Requests resend.

TCP is slower because:
- Continuous checking
- Maintaining connection

Use cases:
- File downloads
- Bank transactions

---

# TCP Three-Way Handshake

Before sending data:
TCP establishes connection.

Steps:

1. SYN
Client asks:
"Can we connect?"

2. SYN + ACK
Server replies:
"Okay ready."

3. ACK
Client confirms.

Now connection established.

---

# TCP Flags

- SYN -> Start connection
- ACK -> Acknowledgement
- FIN -> Proper close
- RST -> Abrupt close

---

# UDP

UDP = User Datagram Protocol

Fast but no guarantee.

No:
- Handshake
- Acknowledgement
- Packet checking

Basically:
"Just send fast."

Why use UDP?
Because sometimes:
Speed > Perfection

Use cases:
- Gaming
- Video streaming
- Voice/video calls

Small packet loss acceptable there.

---

# Common Ports

HTTP -> 80  
HTTPS -> 443  
SSH -> 22  
FTP -> 21  
SMB -> 445  
RDP -> 3389

---

# SSH vs RDP

## SSH
- Terminal/text-based
- Mostly Linux
- Lightweight

## RDP
- Full graphical desktop
- Mostly Windows
- More resource usage
