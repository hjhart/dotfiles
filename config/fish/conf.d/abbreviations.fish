echo "Loading abbreviations"

abbr -a gco git checkout

abbr -a gst git status
abbr -a gpr git pull --rebase

abbr -a gs git status
abbr -a gc git checkout
abbr -a gb git checkout -b
abbr -a gd git diff
abbr -a gi git commit
abbr -a gm git commit -m
abbr -a nv --no-verify
abbr -a gl git log
abbr -a gp git push -u origin head
abbr -a gpom git pull --rebase origin main
abbr -a gpu git pull

abbr -a b bundle
abbr -a be bundle exec
abbr -a ga git add
abbr -a gaa git add -A
abbr -a gap git add -p
abbr -a gdc git diff --cached
abbr -a gca git commit --amend --no-verify --no-edit
abbr -a gpfwl git push --force-with-lease
abbr -a gmm git merge main
abbr -a ci hub ci-status --verbose
abbr -a ci1 hub ci-status --verbose HEAD~1
abbr -a ci2 hub ci-status --verbose HEAD~2
abbr -a ci3 hub ci-status --verbose HEAD~3

abbr -a pr hub pull-request
abbr -a comp hub compare



abbr -a vabbr vim ~/.config/fish/conf.d/abbreviations.fish
abbr -a sabbr source ~/.config/fish/conf.d/abbreviations.fish
abbr -a valiases vim ~/.config/fish/conf.d/aliases.fish
abbr -a saliases source ~/.config/fish/conf.d/aliases.fish

abbr -a dc docker-compose

abbr -a ss ./script/server
abbr -a sc ./script/console
abbr -a sdd ./script/diff-deploy --log
abbr -a sd ./script/deploy production
abbr -a su ./script/update
abbr -a d docker
