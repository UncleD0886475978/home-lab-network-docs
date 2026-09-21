# 🔀 VLAN Design

![VLANs](https://img.shields.io/badge/VLANs-5-blue)

| VLAN ID | Name | Subnet | Purpose |
|---|---|---|---|
| 🟦 10 | Management | 10.10.10.0/24 | Proxmox mgmt, iDRAC/iLO |
| 🟩 20 | Servers | 10.10.20.0/24 | VM/container workloads |
| 🟨 30 | Storage | 10.10.30.0/24 | NAS/iSCSI traffic |
| 🟧 40 | Lab-Test | 10.10.40.0/24 | Isolated sandbox VMs |
| 🟥 99 | Guest/IoT | 10.10.99.0/24 | Untrusted devices |

## Design Notes
- Inter-VLAN routing handled at the firewall
- Guest/IoT fully isolated from Management and Servers
