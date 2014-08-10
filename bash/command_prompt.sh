# configure command prompt
#
# \n: newline
# \u : the username of the current user
# \w : the current working directory, with $HOME abbreviated with a tilde
# \e : an ASCII escape character (033)
# In this case \e[ starts the color scheme
# 36;1m color pair to use
# \] end of color scheme
#

a="\n\[\033[38m\]\u\[\033[01;34m\] \w \[\033[31m\]"
e="$\[\033[00m\] "

function parse_git_url {
  git config --get remote.origin.url | sed 's/\.git$//;s/\(.*[:/]\)\([^/]*\)\/\([^/]*\)\(\.git\)\{0,1\}$/(\2\/\3)/'
}

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function custom_git_prompt {
  branch=$(git branch 2> /dev/null) || return
  echo "$(parse_git_url) -> $(parse_git_branch)" 
}

function ruby_version() {
  ruby -e "print RUBY_VERSION"
}

PS1="$a\$(ruby_version) \$(custom_git_prompt)\n$e"

