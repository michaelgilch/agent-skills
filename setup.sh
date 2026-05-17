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
    local src="$2"
    local target="$3"

    mkdir -p "$(dirname "$target")"

    if [[ -L "$target" ]]; then
        echo "$name: replacing existing symlink at $target"
        rm "$target"
    elif [[ -e "$target" ]]; then
        echo "$name: ERROR -- $target exists and is not a symlink, skipping"
        return 1
    fi

    ln -s "$src" "$target"
    echo "$name: $target -> $src"
}

for name in "${!TARGETS[@]}"; do
    link "$name" "$SKILLS_DIR" "${TARGETS[$name]}"
done

link "fetch-usage"      "$(cd "$(dirname "$0")/claude-scripts" && pwd)/fetch-usage.sh"      "$HOME/.claude/fetch-usage.sh"
link "statusline-command" "$(cd "$(dirname "$0")/claude-scripts" && pwd)/statusline-command.sh" "$HOME/.claude/statusline-command.sh"
