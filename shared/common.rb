require 'rubygems'
require 'open3'

require_relative './command_executor'
require_relative './util'

def repo_name
  Util.new.repo_name
end

def branch_name
  Util.new.branch_name
end

def ensure_hub_command_exists
  cmd = "hub --version"

  unless system(cmd)
    puts "hub command is not preset"
    abort "Please execute brew install hub"
  end
end

def install_launchy_if_needed
  begin
    require 'launchy'
  rescue LoadError
    execute_cmd "gem install 'launchy'"
    puts "gem launchy was missing. It has been installed. Please execute the command you ran once again to see the result."
  end
end

def open_url url
  puts url
  install_launchy_if_needed
  Launchy.open url
end

def repo_owner
  @_repo_owner ||= Util.new.repo_owner
end

def execute_cmd cmd
  CommandExecutor.new(cmd).process
end

def most_recent_production_tag
  execute_cmd "git fetch --tags"
  @_most_recent_production_tag ||= `git tag -l | grep production | sed 's/_/-/g' | sort -rg | head -n 1`.chomp
end
