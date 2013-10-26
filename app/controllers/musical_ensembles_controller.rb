class MusicalEnsemblesController < ApplicationController
  def show
    @ensemble = MusicalEnsemble.find(params[:id])
    @musician = @ensemble.musician
    @gigs = @ensemble.upcoming_gigs
    @video_links = @ensemble.ordered_video_links.take(2)
  end

  def index
    @musician = Musician.find(params[:musician_id])
    add_other_breadcrumbs
    @ensembles = @musician.ordered_by_name_musical_ensembles
  end

  def add_other_breadcrumbs
    add_breadcrumb "Samples", musician_musician_video_links_path(@musician)
    add_breadcrumb "Repertoire", musician_pieces_path(@musician)
    add_breadcrumb "Testimonials", musician_musician_endorsements_path(@musician)
    add_breadcrumb "Photo Gallery", musician_musician_images_path(@musician)
    add_breadcrumb "Gigs", musician_gigs_path(@musician)
    add_breadcrumb "Ensembles", musician_musical_ensembles_path(@musician)
  end
end
