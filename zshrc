# ~/.zshrc -- interactive zsh, on every machine (macOS and Linux).

# PATH: ~/.local/bin first, no duplicates.
typeset -U path fpath
path=("$HOME/.local/bin" $path)

[[ -r ~/.profile ]] && . ~/.profile

# Keys: vi mode on every machine (EDITOR=vim would pick it on some and not others), with Ctrl-R kept
# as the incremental history search it is in emacs mode, and a short Esc delay.
bindkey -v
bindkey '^R' history-incremental-search-backward
KEYTIMEOUT=1

# History: saved on every machine (Debian's defaults keep 30 lines and never write a file). Each
# terminal keeps its own and writes it when it exits; duplicates are dropped and a line that starts
# with a space is never saved.
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt APPEND_HISTORY EXTENDED_HISTORY HIST_IGNORE_ALL_DUPS HIST_IGNORE_SPACE HIST_REDUCE_BLANKS HIST_VERIFY

# Completion, on purpose (it used to run only as a side effect of nvm or gcloud).
autoload -Uz compinit && compinit

# Google Cloud SDK, where it is installed in the home directory.
for _gc in ~/google-cloud-sdk ~/Downloads/google-cloud-sdk; do
  if [[ -r $_gc/path.zsh.inc ]]; then
    . $_gc/path.zsh.inc
    [[ -r $_gc/completion.zsh.inc ]] && . $_gc/completion.zsh.inc
    break
  fi
done
unset _gc

# bun, where it is installed.
if [[ -d ~/.bun ]]; then
  export BUN_INSTALL="$HOME/.bun"
  path=("$BUN_INSTALL/bin" $path)
  [[ -s "$BUN_INSTALL/_bun" ]] && . "$BUN_INSTALL/_bun"
fi

# Machine-specific additions, not committed (thebunker0's nvm, for example).
[[ -r ~/.zshrc.local ]] && . ~/.zshrc.local

# The prompt last, as starship's docs ask.
(( $+commands[starship] )) && eval "$(starship init zsh)"
