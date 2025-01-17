abbr -a gco git checkout

abbr -a gst git status
abbr -a gpr git pull --rebase

abbr -a grhh git reset --hard HEAD~1
abbr -a gs git status
abbr -a gc git checkout
abbr -a gb git checkout -b
abbr -a gd git diff
abbr -a gi git commit
abbr -a gcom git checkout main
abbr -a gcod git checkout develop
abbr -a gm git commit -m
abbr -a gce git commit --allow-empty --no-edit -m
abbr -a gl git log
abbr -a gp git push -u origin head
abbr -a gpom git pull --rebase origin main
abbr -a gpu git pull
abbr -a gba git branch -a 



abbr -a gsta git stash
abbr -a gstap git stash pop

abbr -a b bundle
abbr -a be bundle exec
abbr -a ga git add
abbr -a gaa git add -A
abbr -a gap git add -p
abbr -a gdc git diff --cached
abbr -a gca git commit --amend --no-verify --no-edit
abbr -a gpfwl git push --force-with-lease
abbr -a gmm git merge main
abbr -a gmd git merge develop
abbr -a ci hub ci-status --verbose
abbr -a hc hub compare
abbr -a ci1 hub ci-status --verbose HEAD~1
abbr -a ci2 hub ci-status --verbose HEAD~2
abbr -a ci3 hub ci-status --verbose HEAD~3

abbr -a pr hub pull-request
abbr -a comp hub compare



abbr -a vab vim ~/.config/fish/conf.d/abbreviations.fish
abbr -a sab source ~/.config/fish/conf.d/abbreviations.fish
abbr -a val vim ~/.config/fish/conf.d/aliases.fish
abbr -a sal source ~/.config/fish/conf.d/aliases.fish

abbr -a dc docker-compose
abbr -a dcud docker-compose up -d
abbr -a dcd docker-compose down

abbr -a ss ./script/server
abbr -a sr ./script/run
abbr -a sn ./script/ngrok-server
abbr -a sc ./script/console
abbr -a sdd ./script/diff-deploy --log
abbr -a sd ./script/deploy production
abbr -a su ./script/update
abbr -a d docker
abbr -a a aptible
abbr -a al aptible login --email="james@claritypediatrics.com" --lifetime 7d 
abbr -a sl script/lint
abbr -a sls script/lint --staged

abbr -a gcf git commit -m \"Fix specs\"
abbr -a gcl git commit -m Lint
abbr -a rr rails routes
abbr -a orw overmind restart web

abbr -a sec security list-keychains
abbr -a dbc defaultbrowser chrome
abbr -a dbf defaultbrowser firefox


abbr -a fd fly deploy

abbr -a ext bin/extract 
abbr -a exh bin/extract_for_henry

abbr -a nu nvm use 22
