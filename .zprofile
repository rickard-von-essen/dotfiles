export LC_ALL=en_US.UTF-8

# The next line updates PATH for the Google Cloud SDK.
if [ -f $HOME/local/google-cloud-sdk/path.bash.inc ]; then
  source "$HOME/local/google-cloud-sdk/path.zsh.inc"
fi

# The next line enables shell command completion for gcloud.
if [ -f $HOME/local/google-cloud-sdk/completion.zsh.inc ]; then
  source "$HOME/local/google-cloud-sdk/completion.zsh.inc"
fi

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

eval "$(/opt/homebrew/bin/brew shellenv)"
