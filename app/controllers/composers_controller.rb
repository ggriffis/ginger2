class ComposersController < ApplicationController
  def show
    @composer = Composer.find(params[:id])
    @musician = @composer.genre.musician
    add_necessary_breadcrumbs
    @pieces = @composer.ordered_pieces
  end

  def add_necessary_breadcrumbs
    add_breadcrumb "Gigs", musician_gigs_path(@musician)
    add_breadcrumb "Samples", musician_musician_video_links_path(@musician)
    add_breadcrumb "Repertoire", musician_pieces_path(@musician)
    add_breadcrumb "Testimonials", musician_musician_endorsements_path(@musician)
    add_breadcrumb "Photo Gallery", musician_musician_images_path(@musician)
    add_breadcrumb "Composer", composer_path(@composer)
  end
end
