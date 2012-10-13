class ProjectController < ApplicationController
  def index
    github = Github.new(oauth_token: current_user.oauth_token)
    @repos = github.repos.all
    @issues = github.issues
    @milestones = github.issues.milestones 
  end

  def show
  end
end
