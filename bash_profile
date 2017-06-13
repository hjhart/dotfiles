export PATH="/usr/local/bin:~/bin:./bin:$PATH"

# Path to the bash it configuration
export BASH_IT="/Users/wanelo/.bash_it"

# Lock and Load a custom theme file
export BASH_IT_THEME="wanelo"

# Load Bash It
source $BASH_IT/bash_it.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

[[ -s "/Users/wanelo/.gvm/scripts/gvm" ]] && source "/Users/wanelo/.gvm/scripts/gvm"
