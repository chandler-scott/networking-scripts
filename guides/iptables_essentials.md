# IPTables Essentials for NAT and Port Forwarding

## 📚 Basics of IPTables Tables and Chains

### Tables
- `filter`: Default table for packet filtering.
- `nat`: Used for Network Address Translation.
- `mangle`: For specialized packet alteration.
- `raw`: Used for configuration exemptions.

### Chains
- `INPUT`: Packets destined for the local system.
- `OUTPUT`: Packets originating from the local system.
- `FORWARD`: Packets routed through the system.
- `PREROUTING`: Alters packets as soon as they arrive.
- `POSTROUTING`: Alters packets as they are about to leave.

---

## 🔁 Basic NAT (Source NAT - SNAT/MASQUERADE)

### Enable IP forwarding
```bash
echo 1 > /proc/sys/net/ipv4/ip_forward
```

### Make IP forwarding persistent
Edit `/etc/sysctl.conf`:
```ini
net.ipv4.ip_forward=1
```
Then apply:
```bash
sudo sysctl -p
```

### Add a MASQUERADE rule (dynamic SNAT)
```bash
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
```

---

## 🔁 Port Forwarding (Destination NAT - DNAT)

### Forward external port 8080 to internal host 10.0.0.2:80
```bash
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 8080 -j DNAT --to-destination 10.0.0.2:80
```

### Allow forwarding of traffic to internal host
```bash
iptables -A FORWARD -p tcp -d 10.0.0.2 --dport 80 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
```

---

## 💾 Persisting IPTables Rules

### Install persistence package
```bash
sudo apt install iptables-persistent
```

### Save current rules
```bash
sudo netfilter-persistent save
```

### Reload rules on boot
```bash
sudo netfilter-persistent reload
```

---

## 🛠️ View Current Rules

### NAT table
```bash
sudo iptables -t nat -L -n -v
```

### Filter table
```bash
sudo iptables -L -n -v
```
