test -d $HOME/src/go-code/bin; and fish_add_path $HOME/src/go-code/bin
test -d $HOME/src/go-code; and set -gx GOPATH $HOME/src/go-code
test -d $HOME/go/bin; and fish_add_path $HOME/go/bin
