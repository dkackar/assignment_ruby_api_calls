require 'github_api'
#require pp

class GithubForkcommit

  API_KEY = ENV["GITHUB_API_KEY"]

  def initialize
    @github = Github.new oauth_token: API_KEY
  end

  def create_repo
    state = @github.repos.create user: nil, name: 'forkD'
    #pp state
  end

  def create_readme
    status = system("touch README.BK")
  end 

  def git_add_all_files
    status = system("git add -A")
  end 

  def git_commit_all_files
    status = system("git commit -am \"Commit\"")
  end

  def clone_repo
   status = system("git clone https://github.com/dkackar/forkD.git")
  end
    
end  

x = GithubForkcommit.new
x.clone_repo