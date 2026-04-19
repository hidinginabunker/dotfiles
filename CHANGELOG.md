# Changelog

## Unreleased

### Added
- `starship.toml` — Gruvbox dark theme with git status, language versions, time, and OS segments
- `zprofile` — Homebrew environment initialization (`brew shellenv`)
- `~/.gitconfig.local` pattern — git identity (name/email) moved out of the committed config into an untracked local file; `gitconfig` includes it via `[include] path = ~/.gitconfig.local`
- `*.local` added to `.gitignore` to prevent accidental commits of local override files

### Changed
- `zshrc` — replaced oh-my-zsh + agnoster setup with Starship prompt; updated gcloud SDK path to `~/Downloads/google-cloud-sdk`
- `gitconfig` — removed `[user]` block in favor of `[include]`; added GitHub SSH URL rewrite (`https://github.com/` → `git@github.com:`)
- `install.conf.yaml` — removed stale `~/.oh-my-zsh` symlink; added `~/.zprofile` and `~/.config/starship.toml` symlinks
- `README.md` — updated prerequisites, file table, and install instructions to reflect current setup; added Local Overrides section

## 2024 — Modernize configs (c2519d7)

- Fixed broken syntax and outdated paths across multiple configs
- Expanded thin configs with more complete settings

## Earlier

- Added EditorConfig, ESLint (React + Babel, ES2017)
- Added tmux config (mouse support, vi mode, Ctrl-a prefix)
- Added git aliases (`hist`, `s`, `ph`, `c`)
- Added iTerm2 shell integration
- Added gcloud and miniconda PATH setup
- Initial vim, zsh, git, and profile configs
