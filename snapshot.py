#!/usr/bin/env python3
import os
from pathlib import Path
import pathspec

# CONFIG
REPO_ROOT = Path(__file__).parent.resolve()
SNAPSHOT_FILE = REPO_ROOT / "repo_snapshot.txt"
INCLUDE_EXTENSIONS = {".py", ".tf", ".md", ".yaml", ".yml"}  # adjust if needed
EXCLUDE_FOLDERS = {
    ".git",
    ".venv",
    "venv",
    "__pycache__",
    ".pytest_cache",
    ".mypy_cache",
    "build",
    "dist",
    ".eggs",
    "*.egg-info",
}

def load_gitignore(repo_root: Path):
    gitignore_path = repo_root / ".gitignore"
    if not gitignore_path.exists():
        return pathspec.PathSpec.from_lines("gitwildmatch", [])
    with gitignore_path.open() as f:
        return pathspec.PathSpec.from_lines("gitwildmatch", f)

def should_include(file_path: Path, spec):
    # Exclude whole directories like .git
    if any(part in EXCLUDE_FOLDERS for part in file_path.parts):
        return False
    # Only allow certain extensions
    if file_path.suffix not in INCLUDE_EXTENSIONS:
        return False
    # Check against .gitignore
    rel_path = file_path.relative_to(REPO_ROOT)
    return not spec.match_file(str(rel_path))

def main():
    spec = load_gitignore(REPO_ROOT)

    if SNAPSHOT_FILE.exists():
        SNAPSHOT_FILE.unlink()

    with SNAPSHOT_FILE.open("w", encoding="utf-8") as out_file:
        for file_path in REPO_ROOT.rglob("*"):
            if file_path.is_file() and should_include(file_path, spec):
                rel_path = file_path.relative_to(REPO_ROOT)
                try:
                    content = file_path.read_text(encoding="utf-8")
                except UnicodeDecodeError:
                    # Skip binary or invalid text files
                    continue
                out_file.write(f"\n--- FILE: {rel_path} ---\n\n")
                out_file.write(content)
                out_file.write("\n")

    print(f"Snapshot created: {SNAPSHOT_FILE}")

if __name__ == "__main__":
    main()
