if which nvim > /dev/null
  set -x EDITOR nvim
else
  set -x EDITOR vim
end
