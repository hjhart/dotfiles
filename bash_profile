eval "$(rbenv init -)"
PATH=./bin:$PATH

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

# Path to the bash it configuration
export BASH_IT="~/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='wanelo'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
if [ -f $BASH_IT/bash_it.sh ]; then
  source $BASH_IT/bash_it.sh
fi