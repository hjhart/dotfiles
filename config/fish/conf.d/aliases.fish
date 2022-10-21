# Unix
alias ll="ls -al"
alias lt="ls -altr"

alias gprs="git stash && git pull --rebase && git stash pop"

alias gpp='git pull && git push'
alias gup='git checkout main && git pull --rebase && git checkout -'
alias barr='bundle exec rubocop --auto-correct && bundle exec rspec --format documentation --exclude "spec/features/**/*" && bundle exec rspec spec/features --format documentation'
alias gr="git recentb"
