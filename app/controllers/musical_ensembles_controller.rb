class MusicalEnsemblesController < ApplicationController
  def show
    @ensemble = MusicalEnsemble.find(params[:id])
    @musician = @ensemble.musician
    @gigs = @ensemble.upcoming_gigs
    @video_links = @ensemble.ordered_video_links.take(2)
  end
end
