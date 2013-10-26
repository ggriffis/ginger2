class ComposersController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    add_necessary_breadcrumbs
    @composers = @musician.ordered_composers
  end

  def show
    @composer = Composer.find(params[:id])
    @musician = @composer.genre.musician
    add_necessary_breadcrumbs
    add_breadcrumb "Composer", composer_path(@composer)
    @pieces = @composer.ordered_pieces
  end

  def add_necessary_breadcrumbs
    add_breadcrumb "Gigs", musician_gigs_path(@musician)
    add_breadcrumb "Samples", musician_musician_video_links_path(@musician)
    add_breadcrumb "Repertoire", musician_pieces_path(@musician)
    add_breadcrumb "Ensembles", musician_musical_ensembles_path(@musician)
    add_breadcrumb "Testimonials", musician_musician_endorsements_path(@musician)
    add_breadcrumb "Photo Gallery", musician_musician_images_path(@musician)
    add_breadcrumb "Genres", musician_genres_path(@musician)
    add_breadcrumb "Composers", musician_composers_path(@musician)
  end
end
