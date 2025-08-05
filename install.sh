git clone git@github.com:tmux-plugins/tpm.git ~/.config/tmux-tmp/
cp ./git-prompt.sh $HOME/.git-prompt.sh
git clone git@github.com:neovim/neovim.git ~/neovim
cd ~/neovim/
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
export PATH="$HOME/neovim/bin:$PATH"
