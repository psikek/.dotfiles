#██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
#██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
#██████╔╝███████║███████╗███████║██████╔╝██║     
#██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║     
#██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
#╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
stty -ixon 
HISTSIZE=1000 HISTFILESIZE=2000 #big but limited history

# check the window size after each command and updates size as needed.
shopt -s checkwinsize

#editor
VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR

PS1='\[\033[01;34m\]\w\[\033[00m\] > '
unset color_prompt force_color_prompt

#aliases
alias mkdir='mkdir -pv'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias ls='ls -l --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias twitch='mpv https://twitch.tv/'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
