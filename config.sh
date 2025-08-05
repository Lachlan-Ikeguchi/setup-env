git clone git@github.com:lachlan-ikeguchi/sway ~/.config/sway
git clone git@github.com:lachlan-ikeguchi/alacritty ~/.config/alacritty
git clone git@github.com:lachlan-ikeguchi/htop ~/.config/htop
git clone git@github.com:lachlan-ikeguchi/tmux ~/.config/tmux
mkdir ~/.config/tmux/plugins
mkdir ~/.config/tmux/plugins/tpm
mv ~/.config/tmux-tmp/* ~/.config/tmux/plugins/tpm
rm -rf ~/.config/tmux-tmp
git clone git@github.com:lachlan-ikeguchi/nvim ~/.config/nvim
