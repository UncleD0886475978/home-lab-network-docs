# 🔥 Firewall Rules

![Firewall](https://img.shields.io/badge/Firewall-pfSense%2FOPNsense-red)

## Key Rules
| Rule | Source | Destination | Action |
|---|---|---|---|
| Block Guest→Mgmt | VLAN 99 | VLAN 10 | ❌ Deny |
| Allow Mgmt→All | VLAN 10 | Any | ✅ Allow |
| Allow Servers→Storage | VLAN 20 | VLAN 30 | ✅ Allow |
| Default Deny | Any | Any | ❌ Deny |

## Notes
- Default-deny posture; explicit allow rules only
