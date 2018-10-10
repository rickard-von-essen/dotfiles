#set fisher_home ~/.local/share/fisherman
#set fisher_config ~/.config/fisherman
#source $fisher_home/fisher.fish

#for file in $HOME/.config/fish/custom_pre/*.load
#  source $file
#end
#
#for file in $HOME/.config/fish/custom_post/*.load
#  source $file
#end

functions -e fish_right_prompt

set -u fish_vi_mode true

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
