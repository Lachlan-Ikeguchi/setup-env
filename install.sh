# scripts
mkdir ~/bin
cp -r ./bin/* ~/bin/

# worktree
git clone https://github.com/lachlan-ikeguchi/worktree ~/worktree
~/worktree/install.bash
~/worktree/install_completion.bash

# neovim
./install-neovim.sh

# macro
git clone https://github.com/lachlan-ikeguchi/macro ~/macro
cd ~/macro
make build
make install
