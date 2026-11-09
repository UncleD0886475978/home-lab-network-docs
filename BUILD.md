# home-lab-network-docs — BUILD

- Repo: UncleD0886475978/home-lab-network-docs
- Visibility/fork: public (per sweep brief); not a fork noted
- Docs-only: YES
- Stack/content actually found (GitHub API root listing, 2026-11-09): `README.md` (1,043 B), `firewall/`, `proxmox/`, `topology/`, `vlans/`. No scripts, code, manifests, or compose files at root. Deeper README/subdir reads were cut off by a GitHub API HTTP 429 rate-limit — noted here; listing above is the verified portion.
- What setup.sh does: verify & open only — checks git, uses current checkout or clones/pulls into `~/repos/home-lab-network-docs`, lists the key doc areas with descriptions, and notes/checks the assumed platforms (Proxmox VE, VLAN-capable switching) without installing anything.
- Issue it prevents: Applying stale Proxmox/VLAN/firewall notes to the live lab without first pulling the current documented design.
