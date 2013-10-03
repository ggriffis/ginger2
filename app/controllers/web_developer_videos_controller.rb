class WebDeveloperVideosController < ApplicationController
  def show
    @video = WebDeveloperVideo.find(params[:id])
  end
end
