#!/usr/bin/env sh

# Environment
export EDITOR=vim

# Aliases
alias servedir="python3 -m http.server"

# Conda
if [ -d "$HOME/miniconda3/bin" ]; then
  export PATH=$PATH:$HOME/miniconda3/bin
fi
