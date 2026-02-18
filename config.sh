git clone git@github.com:lachlan-ikeguchi/nvim ~/.config/nvim

git clone git@github.com:lachlan-ikeguchi/sway ~/.config/sway

git clone git@github.com:lachlan-ikeguchi/alacritty ~/.config/alacritty

git clone git@github.com:lachlan-ikeguchi/htop ~/.config/htop

echo "

#################################################################################################
Remember to export protonmail bridge TLS certificates and run 'sudo trust anchor --store' on them
#################################################################################################

"

git clone git@github.com:lachlan-ikeguchi/aerc ~/.config/aerc

git clone git@github.com:lachlan-ikeguchi/tmux ~/.config/tmux
mkdir ~/.config/tmux/plugins
mkdir ~/.config/tmux/plugins/tpm

git clone git@github.com:tmux-plugins/tpm.git ~/.config/tmux-tmp/
mv ~/.config/tmux-tmp/* ~/.config/tmux/plugins/tpm
rm -rf ~/.config/tmux-tmp
