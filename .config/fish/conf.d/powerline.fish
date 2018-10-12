test -d /usr/share/powerline/fish; and \
  set fish_function_path $fish_function_path /usr/share/powerline/fish

test -d "$HOME/src/powerline"; and \
  set fish_function_path $fish_function_path "$HOME/src/powerline/fish"

powerline-setup
