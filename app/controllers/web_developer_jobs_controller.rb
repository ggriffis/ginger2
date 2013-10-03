class WebDeveloperJobsController < ApplicationController
  def index
    @web_developer = WebDeveloper.singleton
    @jobs = @web_developer.sorted_jobs
  end

  def show
    @job = WebDeveloperJob.find(params[:id])
  end
end
