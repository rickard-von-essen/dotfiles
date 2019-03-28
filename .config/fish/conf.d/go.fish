test -d $HOME/src/go-code/bin; and set -gx fish_user_path $fish_user_path $HOME/src/go-code/bin
test -d $HOME/src/go-code; and set -gx GOPATH $HOME/src/go-code
test -d $HOME/go/bin; and set -gx fish_user_path $HOME/go/bin $fish_user_path
