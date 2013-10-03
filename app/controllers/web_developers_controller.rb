class WebDevelopersController < ApplicationController
  def show
    @web_developer = WebDeveloper.singleton
    @jobs = @web_developer.important_jobs
    @trainings = @web_developer.important_trainings
    @projects = @web_developer.important_projects
    @endorsements = @web_developer.important_endorsements
    if @web_developer && @web_developer.main_image
      @web_developer_image_url = @web_developer.main_image.image_url(:thumb).to_s
    else
      @web_developer_image_url = "web_dev.jpg"
    end
  end
end
