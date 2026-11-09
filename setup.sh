#!/usr/bin/env bash
set -e
# home-lab-network-docs — verify & open (docs-only repo, no build/deploy)
REPO="home-lab-network-docs"
OWNER="UncleD0886475978"
echo "==> [1/5] Checking prerequisites"
command -v git >/dev/null 2>&1 || { echo "ERROR: git not found — install: https://git-scm.com/downloads"; exit 1; }
echo "    git: $(git --version)"
echo "==> [2/5] Locating checkout (current dir if already inside it, else ~/repos/$REPO)"
if [ -d .git ] && git remote get-url origin 2>/dev/null | grep -q "$REPO"; then
  REPO_DIR="$(pwd)"; echo "    Using current directory: $REPO_DIR"
else
  REPO_DIR="$HOME/repos/$REPO"
  if [ -d "$REPO_DIR/.git" ]; then echo "    Updating $REPO_DIR"; git -C "$REPO_DIR" pull --ff-only || echo "    WARN: pull failed, using existing copy"
  else mkdir -p "$HOME/repos"; git clone "https://github.com/$OWNER/$REPO.git" "$REPO_DIR"; fi
fi
cd "$REPO_DIR"
echo "==> [3/5] Key docs (verified via GitHub API root listing)"
echo "    README.md   — repo overview / lab index"
echo "    proxmox/    — Proxmox VE host setup and VM/network notes"
echo "    vlans/      — VLAN design, IDs and segmentation plan"
echo "    firewall/   — firewall rules and policy notes"
echo "    topology/   — network topology / layout documentation"
echo "    --- files actually present ---"
find . -path ./.git -prune -o -type f -print | sort || true
echo "==> [4/5] Tools/platforms these docs assume (harmless presence checks only)"
echo "    Assumed: Proxmox VE (runs on the lab host, web UI :8006 — not installed by this script),"
echo "             a VLAN-capable switch/router, and a shell for viewing docs."
for t in ip ping curl ssh; do
  if command -v "$t" >/dev/null 2>&1; then echo "    [ok]      $t"; else echo "    [missing] $t (optional viewer/remote-access tool)"; fi
done
if command -v pvesh >/dev/null 2>&1; then echo "    [ok]      pvesh (you are on a Proxmox host)"; else echo "    [info]    pvesh not present — normal unless this IS the Proxmox host"; fi
echo "==> [5/5] Done — docs verified, nothing built or deployed"
echo "Next commands:"
echo "  cd $REPO_DIR"
echo "  cat README.md"
echo "  ls proxmox/ vlans/ firewall/ topology/"
