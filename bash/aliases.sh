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

alias gits='git status'
alias gitcmw='git commit -m "wip"'
alias gitlog='git --no-pager log -n 20 --pretty=format:%h%x09%an%x09%ad%x09%s --date=short --no-merges'

alias gitb='git branch -v'
alias gphm='git push heroku master'

# http://blog.bigbinary.com/2013/09/13/how-to-keep-your-fork-uptodate.html
#
# useful when you want to bring your local rails repository uptodate with
# rails/rails repository
alias git_refresh='git fetch upstream;git rebase upstream/master'

#alias gitlog='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias timesheet='git --no-pager log -n 50 --pretty=format:%h%x09%an%x09%ad%x09%s --date=short --no-merges --branches --since=30.days --author=Neeraj'


alias rdbm='rake db:migrate'
alias bi='bundle install'
alias b="bundle"
alias be="bundle exec"
alias biv="bundle install --path vendor"

function is {
  INSTAPUSHER_HOST=107.170.11.75 API_KEY=9f2cae3d9a9cc8a4a1c0609604c703f7 /Users/nsingh/code/instapusher_project/instapusher/bin/instapusher --debug
}


function i2 {
  INSTAPUSHER_HOST=107.170.11.75 API_KEY=9f2cae3d9a9cc8a4a1c0609604c703f7 /Users/nsingh/code/instapusher_project/instapusher2/bin/instapusher2 --debug
}



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

