class Util

  def repo_owner
    command = find_repo_owner_command

    if command.include? 'origin	git@github.com'
      regex = /.*:(.*)\/.*/
      match_data = command.match(regex)
    else
      regex = Regexp.new('origin\s*https:\/\/github\.com\/(.*)\/.*')
      match_data = command.match(regex)
    end

    match_data.to_a.last
  end

  def branch_name
    (`git symbolic-ref HEAD`).gsub(%r[refs/heads/],'').strip
  end

  def repo_name
    `git rev-parse --show-toplevel`.split('/').last.strip
  end

  private

  def find_repo_owner_command
    `git remote -v | grep fetch | grep origin`
  end

end
