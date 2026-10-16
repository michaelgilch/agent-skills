# Agent Skills

My personal skills for coding agents. Each top-level folder with a `SKILL.md` is one skill, and this repo is the source of truth for all of them. Agents get a symlink to a skill rather than a copy, so edits here take effect immediately.

## Skills

| Skill              | What it does                                                      |
|:-------------------|:------------------------------------------------------------------|
| `bee-cli`          | Pulls recent conversations and life context from the Bee wearable |
| `chrome-bookmarks` | Edits the Chrome bookmarks file directly                          |
| `code-explorer`    | Guided walkthroughs of a codebase or a set of changes             |
| `repo-docs`        | Generates a single-page HTML doc for a repo                       |
| `thinking-modes`   | Structured frameworks for analysis and critique                   |

## Installing

Install one skill into one agent at a time:

```sh
./install.sh <claude|gemini|codex> <skill>
./install.sh claude thinking-modes
```

| Agent    | Installs to        |
|:---------|:-------------------|
| `claude` | `~/.claude/skills` |
| `gemini` | `~/.gemini/skills` |
| `codex`  | `~/.agents/skills` |

Running it again for the same skill replaces the existing symlink. If a real file or folder already sits at the target, the script stops instead of overwriting it.
