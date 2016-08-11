eval "$(rbenv init -)"

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export WS=~/workspace
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export CDPATH=.:$HOME/workspace

# prompt
export PS1="\e[32m[\t]\e[0m \u@\h\e[33m [\w]\e[0m \n> "

export EDITOR=vim

. ~/.aliases
. ~/.joyent

#your OPSCODE username
export OPSCODE_USER=wanelo

export GIT_DUET_GLOBAL=true 

if [ -f $(brew --prefix)/etc/bash_completion  ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/bash_it_profile  ]; then
. ~/bash_it_profile
fi

PATH=./bin:$PATH
