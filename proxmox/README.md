# 🖧 Proxmox Network Configuration

![Proxmox](https://img.shields.io/badge/Proxmox_VE-E57000?style=flat&logo=proxmox&logoColor=white)

## vSwitch / Bridge Setup
| Bridge | Type | VLAN Aware | Purpose |
|---|---|---|---|
| vmbr0 | Linux Bridge | ✅ Yes | Trunk to core switch |
| vmbr1 | Linux Bridge | ❌ No | Isolated lab-test network |

## Notes
- VLAN tagging handled per-VM via bridge + VLAN ID
- Management interface bound to VLAN 10 only
