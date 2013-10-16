class WebDeveloperEndorsementsController < ApplicationController
  add_breadcrumb "Jobs", :web_developer_jobs_path
  add_breadcrumb "Education", :web_developer_trainings_path
  add_breadcrumb "Projects", :web_developer_projects_path
  add_breadcrumb "Videos", :web_developer_videos_path
  add_breadcrumb "Endorsements", :web_developer_endorsements_path

  def index
    @web_developer = WebDeveloper.singleton
    @endorsements = @web_developer.sorted_endorsements
  end

  def show
    @endorsement = WebDeveloperEndorsement.find(params[:id])
    add_breadcrumb "Endorsement", web_developer_endorsement_path(@endorsement)
  end
end
