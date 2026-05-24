## DNS Record Types

DNS records are instructions stored in DNS.

They tell browsers/services:
- Website ekkada undhi
- Mail ekkadiki pampali
- Alias enti
- Verification details enti

---

### A Record
Connects:
Domain → IPv4 Address

Example:
google.com → 142.250.183.14

---

### AAAA Record
Same as A record but for IPv6 addresses.

---

### CNAME Record
Alias record.

One domain ni inkoka domain ki point chestundi.

Example:
shop.website.thm
→ shops.shopify.com

Meaning:
Actual service Shopify handle chestundi.

---

### MX Record
Mail Exchange Record.

Decides:
Domain ki vachina emails e mail server handle cheyali.

Example:
hello@siddu.com

DNS checks:
siddu.com MX record enti?

Reply:
mail.google.com

Mail akkada deliver avtundi.

---

### TXT Record
Stores text information.

### Uses
- Domain verification
- SPF
- DKIM
- Security policies
