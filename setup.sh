# install necessary stuff
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux-tmp/

# add configs
git clone https://github.com/lachlan-ikeguchi/htop ~/.config/htop
git clone https://github.com/lachlan-ikeguchi/tmux ~/.config/tmux
mkdir ~/.config/tmux/plugins
mkdir ~/.config/tmux/plugins/tpm
mv ~/.config/tmux-tmp/* ~/.config/tmux/plugins/tpm
rm -rf ~/.config/tmux-tmp
git clone https://github.com/lachlan-ikeguchi/nvim ~/.config/nvim

# allow for adding aliases
echo '# ---------- added by script ---------- #
if command -v tmux > /dev/null; then
  if [ -z "$TMUX" ]; then
    if tmux list-sessions > /dev/null 2>&1; then
      tmux attach-session -d || tmux new-session
    else
      tmux new-session
    fi
  fi
fi

export HISTFILE=".bash_history"
export HISTSIZE=-1
export HISTCONTROL=ignorespace
export HISTIGNORE="clear":"ls":"ll":"l":"history":"nh"
export HISTTIMEFORMAT="%A, %F %T "

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
# ------------------------------------- #' >> ~/.bashrc

# aliases
echo '############ added by script ############
# ---------- quality of life ---------- #
alias alias-edt="nvim ~/.bash_aliases"
alias bash-edt="nvim ~/.bashrc"
alias nh="nvim ~/.bash_history"
alias refresh="source ~/.bashrc"
alias grep="grep --color=auto"
alias l="ls -CF"
alias ll="ls -la"
alias ls="ls --color=auto"
alias pub-ip="curl ident.me"
#########################################' >> ~/.bash_aliases
