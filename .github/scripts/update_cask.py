#!/usr/bin/env python3
"""Update a Homebrew cask with a new version and SHA256 from a GitHub release."""

import argparse
import hashlib
import re
import sys
import urllib.request
from pathlib import Path


def fetch_sha256(url: str) -> str:
    print(f"Downloading {url}")
    req = urllib.request.Request(url)
    with urllib.request.urlopen(req) as resp:
        h = hashlib.sha256()
        while True:
            chunk = resp.read(8192)
            if not chunk:
                break
            h.update(chunk)
    digest = h.hexdigest()
    print(f"SHA256: {digest}")
    return digest


def update_cask(cask_path: Path, version: str, sha256: str) -> bool:
    content = cask_path.read_text()
    original = content

    content = re.sub(
        r'(version\s+")[^"]+(")',
        rf"\g<1>{version}\2",
        content,
    )
    content = re.sub(
        r'(sha256\s+")[0-9a-fA-F]{64}(")',
        rf"\g<1>{sha256}\2",
        content,
    )

    if content == original:
        return False

    cask_path.write_text(content)
    return True


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cask", required=True, help="Cask name (e.g. codex-profile-switcher)")
    parser.add_argument("--tag", required=True, help="Release tag (e.g. v0.2.0)")
    parser.add_argument("--repository", required=True, help="GitHub repo (e.g. 4LAU/codex-profile-switcher)")
    parser.add_argument("--artifact", help="DMG filename template (default: CodexProfileSwitcher-{version}.dmg)")
    args = parser.parse_args()

    version = args.tag.lstrip("v")
    artifact = args.artifact or f"CodexProfileSwitcher-{version}.dmg"
    url = f"https://github.com/{args.repository}/releases/download/{args.tag}/{artifact}"

    cask_path = Path(__file__).resolve().parent.parent.parent / "Casks" / f"{args.cask}.rb"
    if not cask_path.exists():
        print(f"ERROR: cask not found: {cask_path}", file=sys.stderr)
        sys.exit(1)

    sha256 = fetch_sha256(url)
    changed = update_cask(cask_path, version, sha256)

    if changed:
        print(f"Updated {cask_path.name} to {version}")
    else:
        print(f"{cask_path.name} already at {version}")

    with open("CASK_UPDATED", "w") as f:
        f.write("true" if changed else "false")


if __name__ == "__main__":
    main()
