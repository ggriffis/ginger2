class WebDeveloperJobsController < ApplicationController
  add_breadcrumb "Education", :web_developer_trainings_path
  add_breadcrumb "Projects", :web_developer_projects_path
  add_breadcrumb "Endorsements", :web_developer_endorsements_path
  add_breadcrumb "Videos", :web_developer_videos_path
  add_breadcrumb "Jobs", :web_developer_jobs_path

  def index
    @web_developer = WebDeveloper.singleton
    @jobs = @web_developer.sorted_jobs
  end

  def show
    @job = WebDeveloperJob.find(params[:id])
    add_breadcrumb "Job", web_developer_job_path(@job)
  end
end
