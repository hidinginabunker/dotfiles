# dotfiles

Personal dotfiles for the Macs and the Linux machines (thebunker0, the homelab's workbench VM), linked into `$HOME` by a plain bash `install` script.

## What's Included

| Tool | File | Notes |
|------|------|-------|
| Zsh | `zshrc` | vi keys (Ctrl-R still searches history), 100k-line history saved per terminal, completion, Starship prompt, `~/.local/bin` on PATH, gcloud and bun where installed, `~/.zshrc.local` for per-machine additions |
| Zsh profile | `zprofile` | Homebrew's environment, on the Macs only (Apple silicon and Intel paths) |
| Shell env | `profile` | `$EDITOR`, `servedir` alias, `~/.local.env` override |
| Starship | `starship.toml`, `starship-purple.toml` | Gruvbox dark theme with git, language, time, and hostname (SSH only) segments; purple accent variant selectable via `STARSHIP_CONFIG` in `~/.local.env` |
| Ghostty | `ghostty/config` | Terminal config symlinked to `~/.config/ghostty/config`; IBM 5153 CGA (Black) theme |
| Claude Code | `claude/CLAUDE.md` (Macs only) | Global instructions. `claude/settings.json` is kept for reference but not linked: Claude Code rewrites its settings file |
| SSH | `ssh/config` (Macs only), `ssh/known_hosts` | No agent forwarding by default; GitHub's host keys are appended to the machine's own `known_hosts` if missing |
| Git | `gitconfig` | `push.default = simple` with auto upstream, pull with rebase, prune on fetch, histogram diffs, zdiff3 conflicts, rerere; colors, aliases (`hist`, `s`, `ph`, `c`, `amend`), SSH URL rewrite for GitHub; identity only from `~/.gitconfig.local` |
| Git ignore | `gitignore` | Global ignores (macOS, editors, Python, Node) |
| Vim | `vimrc` | Pathogen, line numbers, 2-space indent, syntax highlighting |
| Tmux | `tmux.conf` | Mouse support, 50k scrollback, focus-events, extended keys, 10 ms Esc, clipboard over ssh (OSC 52), passthrough, true colour, current-path splits (`\|`, `-`) |
| EditorConfig | `editorconfig` | Cross-editor indent/whitespace consistency |
| ESLint | `eslintrc` | React + Babel, ES2017 |

## Prerequisites

- **Zsh** — the primary shell
- **Homebrew** — used in `zprofile` for environment setup
- **Starship** — cross-shell prompt ([install](https://starship.rs))
- **Git** — for cloning and submodule initialization

No other dependencies required — the install script is plain bash.

### Optional

- **Ghostty** — terminal emulator ([install](https://ghostty.org)); `ghostty/config` only takes effect if it's installed
- **Google Cloud SDK** — if installed at `~/Downloads/google-cloud-sdk`, `gcloud` PATH and completions are sourced automatically

## Installation

```sh
git clone https://github.com/hidinginabunker/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install
```

The `install` script links your home directory to this repo. It detects the machine with `uname`:

- **every machine:** zsh, git, vim, tmux, Starship and editor configs;
- **macOS only:** Ghostty, the ssh config and Claude Code's global `CLAUDE.md`. On Linux, `~/.ssh` and `~/.claude` are left to the machine: the homelab workbench's Ansible role manages them, and thebunker0 keeps its own.

It never overwrites: a real file where a link should go is moved aside as `<name>.pre-dotfiles.<timestamp>`, and only dead links that point into this repo are removed. It is safe to re-run.

## Local Overrides

Git identity (name and email) is intentionally not committed. After installation, create `~/.gitconfig.local`:

```ini
[user]
    name = Your Name
    email = you@example.com
```

`gitconfig` includes this file automatically via `[include] path = ~/.gitconfig.local`.

### Machine-specific env vars

Create `~/.local.env` for machine-specific variables, such as `STARSHIP_CONFIG`. `profile` sources it automatically if present, and it is never committed. Keep secrets out of it: every shell, and every program started from one, would see them.

For zsh-only per-machine additions (a version manager, an alias), use `~/.zshrc.local`.
