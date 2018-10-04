export PATH=/opt/boxen/homebrew/bin:$PATH

export PATH=/opt/boxen/nodenv/shims:/opt/boxen/nodenv/bin:/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/rbenv/plugins/ruby-build/bin:/opt/boxen/bin:$HOME/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/rickard/local/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/rickard/local/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/rickard/local/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/rickard/local/google-cloud-sdk/completion.bash.inc'
fi
