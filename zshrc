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
export ABBR_USER_ABBREVIATIONS_FILE="$HOME/.config/zsh-abbr/user-abbreviations"
source "$(brew --prefix)/share/zsh-abbr/zsh-abbr.zsh"

# PATH
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
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

# fzf
source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
source "$(brew --prefix)/opt/fzf/shell/completion.zsh"

# zsh-autosuggestions
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$(brew --prefix)/share/zsh-autosuggestions-abbreviations-strategy/zsh-autosuggestions-abbreviations-strategy.zsh"

# zsh-autopair
source "$(brew --prefix)/share/zsh-autopair/autopair.zsh"

# done notifications (notify via terminal-notifier when a command takes > 10s)
_done_preexec() {
  _done_start=$SECONDS
  _done_cmd=$1
}
_done_precmd() {
  local elapsed=$(( SECONDS - _done_start ))
  if (( _done_start > 0 && elapsed >= 10 )); then
    terminal-notifier -title "Done (${elapsed}s)" -message "$_done_cmd" -sound default 2>/dev/null
  fi
  _done_start=0
}
autoload -Uz add-zsh-hook
add-zsh-hook preexec _done_preexec
add-zsh-hook precmd _done_precmd

# zoxide (z)
eval "$(zoxide init zsh)"

# Powerlevel10k config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh-syntax-highlighting (must be last)
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
