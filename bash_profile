#!/usr/bin/env bash

export BASH_SILENCE_DEPRECATION_WARNING=1

# Load ASDF
source $HOME/.asdf/asdf.sh

# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# Path to the bash it configuration
export BASH_IT="/Users/james/.bash_it"

export BASH_IT_THEME='bobby'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Load Bash It
source "$BASH_IT"/bash_it.sh

export PATH="./bin:$PATH"
