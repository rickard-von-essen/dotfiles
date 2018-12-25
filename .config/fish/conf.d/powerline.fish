test -d /usr/share/powerline/fish; and \
  set fish_function_path $fish_function_path /usr/share/powerline/fish

test -d "$HOME/src/powerline/powerline/bindings/fish"; and \
  set fish_function_path $fish_function_path "$HOME/src/powerline/powerline/bindings/fish"

  #test -d "$HOME/Library/Python/3.7/lib/python/site-packages/powerline/bindings/fish"; and \
  #set fish_function_path $fish_function_path "$HOME/Library/Python/3.7/lib/python/site-packages/powerline/bindings/fish"

powerline-setup
