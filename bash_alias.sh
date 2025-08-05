echo "############ added by script ############
# ---------- quality of life ---------- #
alias alias-edt='nvim ~/.bash_aliases'
alias bash-edt='nvim ~/.bashrc'
alias nh='nvim ~/.bash_history'
alias refresh='source ~/.bashrc'
alias update-tools='cd ~/neovim/ && git pull && rm -r build/ && make CMAKE_EXTRA_FLAGS=\"-DCMAKE_INSTALL_PREFIX=\$HOME/neovim\" && make install && cd'
alias grep='grep --color=auto'
alias l='ls -CF'
alias ll='ls -la'
alias ls='ls --color=auto'
alias pub-ip='curl ident.me'
#########################################" >> ~/.bash_aliases
