## DNS Request Flow

### Example
You typed:
google.com

---

### Step 1 — Local Cache Check
Browser/system checks:
Already recent ga open chesama?

If yes:
- Direct IP use chestundi

---

### Step 2 — Recursive DNS Server
Usually ISP DNS:
- Jio DNS
- Airtel DNS
- Google DNS

Recursive DNS asks:
google.com IP enti?

---

### Step 3 — Root DNS Server
Root DNS says:
Exact IP telidu
But .com TLD server ekkado telusu.

---

### Step 4 — TLD Server
.com server knows:
google.com authoritative server ekkada undo.

---

### Step 5 — Authoritative DNS Server
Stores actual DNS records.

Returns:
google.com → Correct IP

Then:
Browser server ki connect ayi website open chestundi.

---

### TTL (Time To Live)
Defines:
DNS answer entha sepu cache lo undali.
