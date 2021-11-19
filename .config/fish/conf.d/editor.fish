if which lvim > /dev/null
  set -x EDITOR lvim
else
  set -x EDITOR vim
end
