class GenresController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    add_necessary_breadcrumbs
    @genres = @musician.ordered_by_name_genres
  end

  def show
    @genre = Genre.find(params[:id])
    @musician = @genre.musician
    add_necessary_breadcrumbs
    add_breadcrumb "Genre", genre_path(@genre)
    @pieces = @genre.songs
  end

  def add_necessary_breadcrumbs
    add_breadcrumb "Gigs", musician_gigs_path(@musician)
    add_breadcrumb "Samples", musician_musician_video_links_path(@musician)
    add_breadcrumb "Repertoire", musician_pieces_path(@musician)
    add_breadcrumb "Ensembles", musician_musical_ensembles_path(@musician)
    add_breadcrumb "Testimonials", musician_musician_endorsements_path(@musician)
    add_breadcrumb "Photo Gallery", musician_musician_images_path(@musician)
    add_breadcrumb "Composers", musician_composers_path(@musician)
    add_breadcrumb "Genres", musician_genres_path(@musician)
  end
end
