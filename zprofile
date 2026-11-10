# Homebrew's environment, on the Macs only: Apple silicon puts brew in /opt/homebrew, Intel in /usr/local.
for _brew in /opt/homebrew/bin/brew /usr/local/bin/brew; do
  if [[ -x $_brew ]]; then
    eval "$($_brew shellenv zsh)"
    break
  fi
done
unset _brew
