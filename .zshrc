export TERM=screen-256color

export PATH=$HOME/bin:/usr/local/bin:$PATH

if [ -d $HOME/Library/Python/3.8/bin ]; then
  export PATH=$HOME/Library/Python/3.8/bin:$PATH
fi

if [ -d $HOME/.rbenv/bin ]; then
  export PATH=$HOME/.rbenv/bin:$PATH
fi

if [ -d $HOME/.nodenv/bin ]; then
  export PATH=$HOME/.nodenv/bin:$PATH
fi

if [ -f $HOME/.certs/cert.pem ]; then
  export CURL_CA_BUNDLE=$HOME/.certs/cert.pem
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
