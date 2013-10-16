class WebDeveloperProjectsController < ApplicationController
  def index
    @web_developer = WebDeveloper.singleton
    @projects = @web_developer.sorted_projects
    add_necessary_breadcrumbs
  end

  def show
    @project = WebDeveloperProject.find(params[:id])
    add_necessary_breadcrumbs
    add_breadcrumb "Project", web_developer_project_path(@project)
  end

  def add_necessary_breadcrumbs
    add_breadcrumb "Jobs", web_developer_jobs_path
    add_breadcrumb "Education", web_developer_trainings_path
    add_breadcrumb "Endorsements", web_developer_endorsements_path
    add_breadcrumb "Videos", web_developer_videos_path
    add_breadcrumb "Projects", web_developer_projects_path
  end
end
