class WebDeveloperProjectsController < ApplicationController
  def index
    @web_developer = WebDeveloper.singleton
    @projects = @web_developer.sorted_projects
  end

  def show
    @project = WebDeveloperProject.find(params[:id])
  end
end
