class MusicalEnsembleVideoLinksController < ApplicationController
  def index
    @ensemble = MusicalEnsemble.find(params[:musical_ensemble_id])
    @musician = @ensemble.musician
    add_necessary_breadcrumbs
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
    @ensemble = @video_link.musical_ensemble
    add_necessary_breadcrumbs
    add_breadcrumb @ensemble.name + " Sample", musical_ensemble_video_link_path(@video_link)
  end

  def add_necessary_breadcrumbs
    add_breadcrumb @ensemble.name + " Gigs", musical_ensemble_musical_ensemble_gigs_path(@ensemble)
    add_breadcrumb @ensemble.name + " Photo Gallery", musical_ensemble_musical_ensemble_images_path(@ensemble)
    add_breadcrumb @ensemble.name + " Samples", musical_ensemble_musical_ensemble_video_links_path(@ensemble)
  end
end
