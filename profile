#!/usr/bin/env sh

# Environment
export EDITOR=vim

# Aliases
alias servedir="python3 -m http.server"

# Machine-specific overrides (not committed)
# Interactive per-machine variables (STARSHIP_CONFIG, ...). Not for secrets: every shell, and every
# program started from one, would see them.
test -e "${HOME}/.local.env" && . "${HOME}/.local.env"
