umask 027

export WS=~/workspace
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export NODE_PATH=/usr/local/share/npm
export PATH=$HOME/workspace/wanelo-cli/bin:$HOME/.rbenv/shims:$PATH:$HOME/bin:$NODE_PATH/bin

# set this to the location of your project,
# eg /Users/wanelo/workspace/ruby-web
export PROJ="${WS}/ruby-web"

# Joyent API
# See https://api.joyentcloud.com/docs/public/index.html#set-up-your-cli
export SDC_URL=https://us-west-1.api.joyentcloud.com
export SDC_ACCOUNT=wanelo
export SDC_KEY_ID=94:c9:24:8c:d1:de:aa:9c:02:9a:a1:5b:82:4c:e1:3a
export SDC_IDENTITY=$HOME/.ssh/id_rsa_wanelo

# Joyent Manta API
export MANTA_URL=https://us-east.manta.joyent.com
export MANTA_USER=$SDC_ACCOUNT
export MANTA_KEY_ID=$(ssh-keygen -l -f $HOME/.ssh/id_rsa_wanelo.pub | awk '{print $2}')

#your OPSCODE username
export OPSCODE_USER=wanelo

# newrelic agent for android
export NEWRELIC_HOME=${WS}/android-app/android/ext/newrelic

# prompt
export PS1="\e[32m[\t]\e[0m \u@\h\e[33m [\w]\e[0m \n> "

# nokogiri
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

export EDITOR=vim
export PGPASSWORD=w4n3l0

# go
export GOPATH=$WS/gocode
