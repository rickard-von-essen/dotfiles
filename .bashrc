export PATH=$HOME/bin:/usr/local/bin:$PATH

if [ -d "$HOME/.rbenv/bin" ]; then
  export PATH=$HOME/.rbenv/bin:$PATH
fi

if [ -d "$HOME/.nodenv/bin" ]; then
  export PATH=$HOME/.nodenv/bin:$PATH
fi

export QSYS_ROOTDIR="$HOME/local/intelFPGA_lite/20.1/quartus/sopc_builder/bin"
