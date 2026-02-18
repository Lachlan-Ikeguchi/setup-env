cp -r ./scripts/* ~/.scripts

git clone git@github.com:neovim/neovim.git ~/neovim
cd ~/neovim/
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make CMAKE_BUILD_TYPE=Release
make install
export PATH="$HOME/neovim/bin:$PATH"
