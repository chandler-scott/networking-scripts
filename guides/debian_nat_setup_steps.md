# Step-by-Step: Turning a Debian Box into a Port-Forwarding NAT Router

## 🧰 Requirements
- A Debian machine with two interfaces:
  - `eth0`: External (e.g., bridged or NAT to host)
  - `eth1`: Internal (connected to internal network or VM)
- IP addresses assigned to both interfaces
- `iptables` installed (should be by default)
- `iptables-persistent` installed for saving rules

---

## 🔁 Step 1: Enable IP Forwarding

### Temporary:
```bash
echo 1 > /proc/sys/net/ipv4/ip_forward
```

### Permanent:
Edit `/etc/sysctl.conf`:
```ini
net.ipv4.ip_forward=1
```
Apply with:
```bash
sudo sysctl -p
```

---

## 🔁 Step 2: Set Up Basic NAT (MASQUERADE)

```bash
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
```

---

## 🔀 Step 3: Set Up Port Forwarding

### Example: Forward traffic from port 8080 on eth0 to 10.0.0.2:80
```bash
sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 8080 -j DNAT --to-destination 10.0.0.2:80
```

---

## 📡 Step 4: Allow Forwarding of the Port

```bash
sudo iptables -A FORWARD -p tcp -d 10.0.0.2 --dport 80 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
```

---

## 💾 Step 5: Save the Rules

### Install persistence package (if not already installed)
```bash
sudo apt install iptables-persistent
```

### Save current iptables rules
```bash
sudo netfilter-persistent save
```

---

## ✅ Done!

Your Debian box is now a full NAT router with port forwarding!
