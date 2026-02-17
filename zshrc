# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Powerlevel10k
source "$(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme"

# zsh-abbr
source "$(brew --prefix)/share/zsh-abbr/zsh-abbr.zsh"

# PATH
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# Aliases
alias ll="ls -al"
alias lt="ls -altr"
alias gprs="git stash && git pull --rebase && git stash pop"
alias gpp='git pull && git push'
alias gup='git checkout main && git pull --rebase && git checkout -'
alias barr='bundle exec rubocop --auto-correct && bundle exec rspec --format documentation --exclude "spec/features/**/*" && bundle exec rspec spec/features --format documentation'
alias gr="git recentb"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# zoxide (z)
eval "$(zoxide init zsh)"

# Powerlevel10k config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
