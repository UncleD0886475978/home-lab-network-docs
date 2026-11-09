# home-lab-network-docs — BUILD

## One-line install (fresh Ubuntu/Debian VM)

```bash
curl -fsSL https://raw.githubusercontent.com/UncleD0886475978/home-lab-network-docs/main/setup.sh | bash
```

The script installs its own prerequisites — base tools only (git and curl, plus ca-certificates/gnupg if missing) via apt — then clones or updates the repo and verifies/opens the docs. It is docs-only: Proxmox VE and the other platforms the docs describe are NOT installed (they run on the lab host/switching gear); the doc-related tools the original script checked for (`ip`, `ping`, `curl`, `ssh`, `pvesh`) remain harmless presence checks only. On non-apt platforms it falls back to checking for git and printing install guidance.

Alternative (clone and run):

```bash
git clone https://github.com/UncleD0886475978/home-lab-network-docs.git
cd home-lab-network-docs
./setup.sh
```

- Repo: UncleD0886475978/home-lab-network-docs
- Visibility/fork: public (per sweep brief); not a fork noted
- Docs-only: YES
- Stack/content actually found (GitHub API root listing, 2026-11-09): `README.md` (1,043 B), `firewall/`, `proxmox/`, `topology/`, `vlans/`. No scripts, code, manifests, or compose files at root. Deeper README/subdir reads were cut off by a GitHub API HTTP 429 rate-limit — noted here; listing above is the verified portion.
- What setup.sh does: verify & open only — bootstraps base tools (git, curl) on Ubuntu/Debian, uses current checkout or clones/pulls into `~/repos/home-lab-network-docs`, lists the key doc areas with descriptions, and notes/checks the assumed platforms (Proxmox VE, VLAN-capable switching) without installing them.
- Issue it prevents: Applying stale Proxmox/VLAN/firewall notes to the live lab without first pulling the current documented design.
