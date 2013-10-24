class MusicalEnsembleGigsController < ApplicationController
  def index
    @ensemble = MusicalEnsemble.find(params[:musical_ensemble_id])
    @musician = @ensemble.musician
    add_necessary_breadcrumbs
    @gigs = @ensemble.upcoming_gigs
    @past_gigs = @ensemble.past_gigs
  end

  def show
    @gig = MusicalEnsembleGig.find(params[:id])
    @ensemble = @gig.musical_ensemble
    add_necessary_breadcrumbs
    add_breadcrumb @ensemble.name + " Gig", musical_ensemble_gig_path(@gig)
  end

  def add_necessary_breadcrumbs
    add_breadcrumb @ensemble.name, @ensemble
    add_breadcrumb @ensemble.name + " Samples", musical_ensemble_musical_ensemble_video_links_path(@ensemble)
    add_breadcrumb @ensemble.name + " Photo Gallery", musical_ensemble_musical_ensemble_images_path(@ensemble)
    add_breadcrumb @ensemble.name + " Gigs", musical_ensemble_musical_ensemble_gigs_path(@ensemble)
  end
end
