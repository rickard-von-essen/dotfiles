# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/rickard/local/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/rickard/local/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/rickard/local/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/rickard/local/google-cloud-sdk/completion.bash.inc'
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

