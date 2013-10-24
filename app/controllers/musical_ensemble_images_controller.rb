class MusicalEnsembleImagesController < ApplicationController
  def index
    @ensemble = MusicalEnsemble.find(params[:musical_ensemble_id])
    @musician = @ensemble.musician
    add_necessary_breadcrumbs
    @images = @ensemble.musical_ensemble_images.in_groups(3, false)
    @images1 = @images[0]
    @images2 = @images[1]
    @images3 = @images[2]
  end

  def add_necessary_breadcrumbs
    add_breadcrumb @ensemble.name, @ensemble
    add_breadcrumb @ensemble.name + " Gigs", musical_ensemble_musical_ensemble_gigs_path(@ensemble)
    add_breadcrumb @ensemble.name + " Samples", musical_ensemble_musical_ensemble_video_links_path(@ensemble)
    add_breadcrumb @ensemble.name + " Photo Gallery", musical_ensemble_musical_ensemble_images_path(@ensemble)
  end
end
