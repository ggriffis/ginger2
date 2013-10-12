class MusicianVideoLinksController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    @video_links = @musician.ordered_video_links.in_groups(2, false)
    @video_links1 = @video_links[0]
    @video_links2 = @video_links[1]
  end

  def show
    @video_link = MusicianVideoLink.find(params[:id])
  end
end
