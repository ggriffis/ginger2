class WebDeveloperTrainingsController < ApplicationController
  def index
    @web_developer = WebDeveloper.singleton
    @trainings = @web_developer.sorted_trainings
    add_necessary_breadcrumbs
  end

  def show
    @training = WebDeveloperTraining.find(params[:id])
    add_necessary_breadcrumbs
    add_breadcrumb "Education Institution", web_developer_training_path(@training)
  end

  def add_necessary_breadcrumbs
    add_breadcrumb "Jobs", web_developer_jobs_path
    add_breadcrumb "Projects", web_developer_projects_path
    add_breadcrumb "Endorsements", web_developer_endorsements_path
    add_breadcrumb "Videos", web_developer_videos_path
    add_breadcrumb "Education", web_developer_trainings_path
  end
end
