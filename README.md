# dotfiles

Personal dotfiles managed with [dotbot](https://github.com/anishathalye/dotbot).

## What's Included

| Tool | File | Notes |
|------|------|-------|
| Zsh | `zshrc` | Starship prompt, `~/.local/bin` on PATH, gcloud integration |
| Zsh profile | `zprofile` | Homebrew environment setup |
| Shell env | `profile` | `$EDITOR`, `servedir` alias, Conda PATH |
| Starship | `starship.toml` | Gruvbox dark theme with git, language, and time segments |
| Git | `gitconfig` | Colors, aliases (`hist`, `s`, `ph`, `c`), SSH URL rewrite for GitHub |
| Git ignore | `gitignore` | Global ignores (macOS, editors, Python, Node) |
| Vim | `vimrc` | Pathogen, line numbers, 2-space indent, syntax highlighting |
| Tmux | `tmux.conf` | Mouse, vi mode, Ctrl-a prefix, pane splits, status bar |
| EditorConfig | `editorconfig` | Cross-editor indent/whitespace consistency |
| ESLint | `eslintrc` | React + Babel, ES2017 |

## Prerequisites

- **Zsh** — the primary shell
- **Homebrew** — used in `zprofile` for environment setup
- **Starship** — cross-shell prompt ([install](https://starship.rs))
- **Git** — for cloning and submodule initialization

### Optional

- **Conda (miniconda3)** — if installed at `~/miniconda3`, added to `$PATH` automatically
- **Google Cloud SDK** — if installed at `~/Downloads/google-cloud-sdk`, `gcloud` PATH and completions are sourced automatically

## Installation

```sh
git clone --recursive https://github.com/hidinginabunker/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install
```

If you cloned without `--recursive`, initialize submodules first:

```sh
git submodule update --init --recursive
./install
```

The `install` script uses dotbot to create symlinks from your home directory to this repo. See `install.conf.yaml` for the full mapping.

## Local Overrides

Git identity (name and email) is intentionally not committed. After installation, create `~/.gitconfig.local`:

```ini
[user]
    name = Your Name
    email = you@example.com
```

`gitconfig` includes this file automatically via `[include] path = ~/.gitconfig.local`.
