# dotfiles

Personal dotfiles managed with [dotbot](https://github.com/anishathalye/dotbot).

## What's Included

| Tool | File | Notes |
|------|------|-------|
| Zsh | `zshrc` | Starship prompt, `~/.local/bin` on PATH, gcloud integration |
| Zsh profile | `zprofile` | Homebrew environment setup |
| Shell env | `profile` | `$EDITOR`, `servedir` alias, `~/.local.env` override |
| Starship | `starship.toml`, `starship-purple.toml` | Gruvbox dark theme with git, language, time, and hostname (SSH only) segments; purple accent variant selectable via `STARSHIP_CONFIG` in `~/.local.env` |
| Claude Code | `claude/settings.json`, `claude/CLAUDE.md` | User-level Claude Code settings and global instructions |
| SSH | `ssh/config`, `ssh/known_hosts` | Agent forwarding enabled; GitHub host keys pre-seeded |
| Git | `gitconfig` | Colors, aliases (`hist`, `s`, `ph`, `c`), SSH URL rewrite for GitHub |
| Git ignore | `gitignore` | Global ignores (macOS, editors, Python, Node) |
| Vim | `vimrc` | Pathogen, line numbers, 2-space indent, syntax highlighting |
| Tmux | `tmux.conf` | Mouse support, 50k scrollback, focus-events, current-path splits (`\|`, `-`) |
| EditorConfig | `editorconfig` | Cross-editor indent/whitespace consistency |
| ESLint | `eslintrc` | React + Babel, ES2017 |

## Prerequisites

- **Zsh** — the primary shell
- **Homebrew** — used in `zprofile` for environment setup
- **Starship** — cross-shell prompt ([install](https://starship.rs))
- **Git** — for cloning and submodule initialization

No other dependencies required — the install script is plain bash.

### Optional

- **Google Cloud SDK** — if installed at `~/Downloads/google-cloud-sdk`, `gcloud` PATH and completions are sourced automatically

## Installation

```sh
git clone https://github.com/hidinginabunker/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install
```

The `install` script creates symlinks from your home directory to this repo and removes any dead symlinks from `~`. It also checks for required tools and prints a warning for any that aren't installed. See `install` for the full mapping.

## Local Overrides

Git identity (name and email) is intentionally not committed. After installation, create `~/.gitconfig.local`:

```ini
[user]
    name = Your Name
    email = you@example.com
```

`gitconfig` includes this file automatically via `[include] path = ~/.gitconfig.local`.

### Machine-specific env vars

Create `~/.local.env` for secrets, tokens, and machine-specific exports:

```sh
export GITHUB_TOKEN=...
export ANTHROPIC_API_KEY=...
```

`profile` sources it automatically if present. It is gitignored and never committed.
