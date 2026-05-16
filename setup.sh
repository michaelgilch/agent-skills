#!/usr/bin/env bash
set -euo pipefail

SKILLS_DIR="$(cd "$(dirname "$0")/skills" && pwd)"

declare -A TARGETS=(
    ["Claude Code"]="$HOME/.claude/skills"
    ["Gemini CLI"]="$HOME/.gemini/skills"
    ["Codex"]="$HOME/.agents/skills"
)

link() {
    local name="$1"
    local target="$2"

    mkdir -p "$(dirname "$target")"

    if [[ -L "$target" ]]; then
        echo "$name: replacing existing symlink at $target"
        rm "$target"
    elif [[ -e "$target" ]]; then
        echo "$name: ERROR -- $target exists and is not a symlink, skipping"
        return 1
    fi

    ln -s "$SKILLS_DIR" "$target"
    echo "$name: $target -> $SKILLS_DIR"
}

for name in "${!TARGETS[@]}"; do
    link "$name" "${TARGETS[$name]}"
done
