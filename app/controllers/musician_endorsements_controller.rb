class MusicianEndorsementsController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    add_necessary_breadcrumbs
    @endorsements = @musician.ordered_musician_endorsements
  end

  def show
    @endorsement = MusicianEndorsement.find(params[:id])
    @musician = @endorsement.musician
    add_necessary_breadcrumbs
    add_breadcrumb "Testimonial", musician_endorsement_path(@endorsement)
  end

  def add_necessary_breadcrumbs
    add_breadcrumb "Gigs", musician_gigs_path(@musician)
    add_breadcrumb "Samples", musician_musician_video_links_path(@musician)
    add_breadcrumb "Repertoire", musician_pieces_path(@musician)
    add_breadcrumb "Ensembles", musician_musical_ensembles_path(@musician)
    add_breadcrumb "Photo Gallery", musician_musician_images_path(@musician)
    add_breadcrumb "Testimonials", musician_musician_endorsements_path(@musician)
  end
end
