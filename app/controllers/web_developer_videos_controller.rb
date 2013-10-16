class WebDeveloperVideosController < ApplicationController
  add_breadcrumb "Jobs", :web_developer_jobs_path
  add_breadcrumb "Education", :web_developer_trainings_path
  add_breadcrumb "Projects", :web_developer_projects_path
  add_breadcrumb "Endorsements", :web_developer_endorsements_path
    add_breadcrumb "Videos", :web_developer_videos_path

  def show
    @video = WebDeveloperVideo.find(params[:id])
    add_breadcrumb "Video", web_developer_video_path(@video)
  end

  def index
    @web_developer = WebDeveloper.singleton
    @musician = @web_developer
    @video_links = @web_developer.sorted_videos.in_groups(2, false)
    @video_links1 = @video_links[0]
    @video_links2 = @video_links[1]
  end
end
