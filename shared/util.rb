class Util

  def self.repo_owner
    string = `git remote -v | grep fetch | grep origin`
    regex = /.*:(.*)\/.*/
    match_data = string.match(regex)
    match_data.to_a.last
  end

  def self.branch_name
    (`git symbolic-ref HEAD`).gsub(%r[refs/heads/],'').strip
  end

  def self.repo_name
    `git rev-parse --show-toplevel`.split('/').last.strip
  end

end
