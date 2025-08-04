# install necessary stuff
git clone git@github.com:tmux-plugins/tpm.git ~/.config/tmux-tmp/
cp ./git-prompt.sh $HOME/.git-prompt.sh
git clone git@github.com:neovim/neovim.git ~/neovim
cd ~/neovim/
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
export PATH="$HOME/neovim/bin:$PATH"

# add configs
git clone https://github.com/lachlan-ikeguchi/htop ~/.config/htop
git clone https://github.com/lachlan-ikeguchi/tmux ~/.config/tmux
mkdir ~/.config/tmux/plugins
mkdir ~/.config/tmux/plugins/tpm
mv ~/.config/tmux-tmp/* ~/.config/tmux/plugins/tpm
rm -rf ~/.config/tmux-tmp
git clone https://github.com/lachlan-ikeguchi/nvim ~/.config/nvim

# allow for adding aliases
echo "# ---------- added by script ---------- #
source ~/.git-prompt.sh

function _prompt_container_or_host() {
  if [[ -n \"\$CONTAINER_ID\" ]]; then
    echo \"\\[\\033[33m\\]\$\(echo \"\$CONTAINER_ID\")\"
  else
    echo \"\\[\\033[31m\\]\\H\"
  fi
}

PROMPT_COMMAND='PS1=\"\\[\\033[35m\\][\`uname -s -r\`] \\[\\033[32m\\]\\u \\[\\033[00m\\]@ \$\(_prompt_container_or_host\)\\[\\033[32m\\]\$\(__git_ps1\) \\[\\033[34m\\]\\w \\[\\033[00m\\]\\$ \"'

if command -v tmux > /dev/null; then
  if [ -z '\$TMUX' ]; then
    if tmux list-sessions > /dev/null 2>&1; then
      tmux attach-session -d || tmux new-session
    else
      tmux new-session
    fi
  fi
fi

export PATH="$HOME/neovim/bin:$PATH"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM='auto'
export GIT_PS1_SHOWCONFLICTSTATE='yes'

export HISTFILE='~/.bash_history'
export HISTSIZE=-1
export HISTCONTROL=ignorespace
export HISTIGNORE='clear':'ls':'ll':'l':'history':'nh'
export HISTTIMEFORMAT='%A, %F %T '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
# ------------------------------------- #" >> ~/.bashrc

# aliases
echo "############ added by script ############
# ---------- quality of life ---------- #
alias alias-edt='nvim ~/.bash_aliases'
alias bash-edt='nvim ~/.bashrc'
alias nh='nvim ~/.bash_history'
alias refresh='source ~/.bashrc'
alias update-tools='cd ~/neovim/ && rm -r build/ && make CMAKE_EXTRA_FLAGS=\"-DCMAKE_INSTALL_PREFIX=$HOME/neovim\" && make install && cd'
alias grep='grep --color=auto'
alias l='ls -CF'
alias ll='ls -la'
alias ls='ls --color=auto'
alias pub-ip='curl ident.me'
#########################################" >> ~/.bash_aliases
