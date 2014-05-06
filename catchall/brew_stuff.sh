#!/usr/bin/env ruby

# Usage
# stand in the current directory and execute  ./brew_stuff.sh 

require_relative '../common.rb'

# Make sure we’re using the latest Homebrew
execute_cmd "brew update"

# Upgrade any already-installed formulae
execute_cmd "brew upgrade"

# Install Bash 4
execute_cmd "brew install bash"

# Install wget with IRI support
execute_cmd "brew install wget --enable-iri"

execute_cmd "brew install ack"
execute_cmd "brew install git"
execute_cmd "brew install rename"
execute_cmd "brew install tree"
execute_cmd "brew install ssh-copy-id"
execute_cmd "brew install git bash-completion"
execute_cmd "brew install hub"
execute_cmd "brew install imagemagick"

# this is needed for gem install pg to work
execute_cmd "brew install postgresql"

# Remove outdated versions from the cellar
execute_cmd "brew cleanup"
