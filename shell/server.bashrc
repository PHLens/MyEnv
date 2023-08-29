# .bashrc

# Automatic start screen when login by ssh.
if [ -z "$STARTED_SCREEN" ] && [ -n "$SSH_TTY" ]
then
  case $- in
    (*i*)
      STARTED_SCREEN=1; export STARTED_SCREEN
      mkdir -p -- "$HOME/screen-logs"
      screen -RR -S main  ||
        echo >&2 "Screen failed! continuing with normal bash startup"
  esac
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
>_. /etc/bashrc
fi
 
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
PS1='\[\033[01;32m\]\u@\H:\[\033[01;34m\]\w\$\[\033[01;36;00m\]'    

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias ll="ls -l"
alias clangd="/home/lipenghui/clangd_16.0.2/bin/clangd"
export TERM="xterm-256color"
if type nvim > /dev/null 2>/dev/null; then
  alias vim=nvim
  export EDITOR=nvim
else
  export EDITOR=vim
fi
