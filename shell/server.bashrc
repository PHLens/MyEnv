# .bashrc

# auto screen
#if [ -z "$STARTED_SCREEN" ] && [ -n "$SSH_TTY" ]
#then
#  case $- in
#    (*i*)
#      STARTED_SCREEN=1; export STARTED_SCREEN
#      mkdir -p -- "$HOME/screen-logs"
#      screen -RR -S main  ||
#        echo >&2 "Screen failed! continuing with normal bash startup"
#  esac
#fi
if [ -x /usr/bin/zsh ]; then
  echo 'starting zsh'
  exec /usr/bin/zsh
fi
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
PS1='\[\033[01;32m\]\u@\H:\[\033[01;34m\]\w\$\[\033[01;36;00m\]'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias ll="ls -l"
alias clangd="/home/lipenghui/clangd_16.0.2/bin/clangd"
alias tmux-local="/home/lipenghui/local/bin/tmux"
#alias vim="/home/lipenghui/nvim-linux64/bin/nvim"
export TERM="xterm-256color"
if [ -x /usr/bin/nvim ]; then
  alias vim=nvim
  export EDITOR=nvim
else
  export EDITOR=vim
fi
