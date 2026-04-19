#!/usr/bin/env sh

# Environment
export EDITOR=vim

# Aliases
alias servedir="python3 -m http.server"

# Machine-specific overrides (not committed)
test -e "${HOME}/.local.env" && source "${HOME}/.local.env"
