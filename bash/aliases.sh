alias ls='ls -G'

# List only directories
alias lsd='ls -l | grep "^d"'

alias h='history'

alias e='exit'

alias ..='cd ..' # move up 1 directory
alias ...='cd ../..' #  move up 2 directories
alias ....='cd ../../..' #  move up 3 directories
alias .....='cd ../../../..' #  move up 4 directories
alias ......='cd ../../../../..' #  move up 5 directories

alias i='instapusher'
alias mvim='mvim -g'
alias v='mvim .'

# UTILS
alias dns_flush='dscacheutil -flushcache'

function it {
  echo "API_KEY=xxx /Users/nsingh/code/instapusher_project/instapusher/bin/instapusher --local --debug"
  API_KEY=xxx /Users/nsingh/code/instapusher_project/instapusher/bin/instapusher --local --debug
}

function inet {
  echo "INSTAPUSHER_HOST=www.instapusher.net /Users/nsingh/code/instapusher_project/instapusher/bin/instapusher --debug"
  INSTAPUSHER_HOST=www.instapusher.net /Users/nsingh/code/instapusher_project/instapusher/bin/instapusher --debug
}

