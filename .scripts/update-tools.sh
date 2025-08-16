cd ~/neovim/ 
git pull
rm -r build/ 
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim" 
make CMAKE_BUILD_TYPE=Release
make install 
cd
