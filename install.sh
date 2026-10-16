#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

declare -A TARGETS=(
    ["claude"]="$HOME/.claude/skills"
    ["gemini"]="$HOME/.gemini/skills"
    ["codex"]="$HOME/.agents/skills"
)

usage() {
    echo "Usage: $0 <claude|gemini|codex> <skill>" >&2
    exit 1
}

[[ $# -eq 2 ]] || usage

harness="$1"
skill="${2%/}"
dir="${TARGETS[$harness]:-}"
src="$REPO_DIR/$skill"

[[ -n "$dir" ]] || { echo "Unknown harness: $harness" >&2; usage; }
[[ -f "$src/SKILL.md" ]] || { echo "Not a skill: $skill (no $src/SKILL.md)" >&2; exit 1; }

# Older versions of this script symlinked the whole skills folder here.
if [[ -L "$dir" ]]; then
    echo "removing whole-folder symlink at $dir"
    rm "$dir"
fi
mkdir -p "$dir"

target="$dir/$skill"
if [[ -L "$target" ]]; then
    echo "replacing existing symlink at $target"
    rm "$target"
elif [[ -e "$target" ]]; then
    echo "ERROR: $target exists and is not a symlink" >&2
    exit 1
fi

ln -s "$src" "$target"
echo "$target -> $src"
