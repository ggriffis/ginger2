class MusicalEnsembleVideoLinksController < ApplicationController
  def index
    @ensemble = MusicalEnsemble.find(params[:musical_ensemble_id])
    @musician = @ensemble.musician
    @video_links = @ensemble.ordered_video_links
    middle = (@video_links.length/2) - 1
    if middle < 0
      @video_links1 = @video_links
      @video_links2 = []
    else
      @video_links1 = @video_links.slice(0..middle)
      @video_links2 = @video_links.slice((middle + 1)..@video_links.length - 1)
    end
  end

  def show
    @video_link = MusicalEnsembleVideoLink.find(params[:id])
  end
end
