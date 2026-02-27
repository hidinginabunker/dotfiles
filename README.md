# dotfiles

Personal dotfiles managed with [dotbot](https://github.com/anishathalye/dotbot).

## What's Included

| Tool | File | Notes |
|------|------|-------|
| Zsh | `zshrc` | oh-my-zsh, agnoster theme, git plugin |
| Shell env | `profile` | `$EDITOR`, `servedir` alias, Conda PATH |
| Git | `gitconfig` | User info, colors, aliases (`hist`, `s`, `ph`, `c`) |
| Git ignore | `gitignore` | Global ignores (macOS, editors, Python, Node) |
| Vim | `vimrc` | Pathogen, line numbers, 2-space indent, syntax highlighting |
| Tmux | `tmux.conf` | Mouse, vi mode, Ctrl-a prefix, pane splits, status bar |
| EditorConfig | `editorconfig` | Cross-editor indent/whitespace consistency |
| ESLint | `eslintrc` | React + Babel, ES2017 |

## Prerequisites

- **Zsh** — the primary shell
- **oh-my-zsh** — managed as a git submodule (`oh-my-zsh/`)
- **Powerline fonts** — required by the agnoster theme ([install](https://github.com/powerline/fonts))
- **Git** — for cloning and submodule initialization

### Optional

- **Conda (miniconda3)** — if installed at `~/miniconda3`, it's added to `$PATH` automatically
- **Google Cloud SDK** — if installed at `~/dev/lib/google-cloud-sdk`, `gcloud` PATH and completions are sourced automatically

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
