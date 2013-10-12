class WebDeveloperVideosController < ApplicationController
  def show
    @video = WebDeveloperVideo.find(params[:id])
  end

  def index
    @web_developer = WebDeveloper.find(params[:web_developer_id])
    @musician = @web_developer
    @video_links = @web_developer.sorted_videos.in_groups(2, false)
    @video_links1 = @video_links[0]
    @video_links2 = @video_links[1]
  end
end
