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
abbr -a grc git rebase --continue
abbr -a gra git rebase --abort
abbr -a gpu git pull
abbr -a gba git branch -a 
abbr -a grp git reset -p
abbr -a gcp git cherry-pick 



abbr -a gsta git stash
abbr -a gsp git stash pop

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

abbr -a d docker
abbr -a a aptible
abbr -a al aptible login --email="james@claritypediatrics.com" --lifetime 7d 

abbr -a gcf git commit -m \"Fix specs\"
abbr -a gcc git commit -n -m Changeset
abbr -a gcl git commit -m Lint -n
abbr -a rr rails routes
abbr -a orw overmind restart web

abbr -a sec security list-keychains
abbr -a dbc defaultbrowser chrome
abbr -a dbf defaultbrowser firefox


abbr -a fd fly deploy

abbr -a ext bin/extract 
abbr -a exh bin/extract_for_henry

abbr -a nu nvm use 22
abbr -a pps DEBUG='"prisma:*"' pnpm prisma studio
abbr -a referral pnpm with-env pnpm script:run ./scripts/generate-test-referrals.ts add -d F90.0 -l Hart -f James -c Henry -e 
abbr -a td turbo dev
abbr -a tr turbo reset
abbr -a tt turbo typecheck
abbr -a tl turbo lint
abbr -a pc pnpm changeset
abbr -a pp pnpm prettier
abbr -a ptu pnpm test:unit
abbr -a ptuc pnpm test:unit:ci


abbr -a om open ~/Music


abbr -a tzla sudo systemsetup -settimezone America/Los_Angeles
abbr -a tzny sudo systemsetup -settimezone America/New_York
