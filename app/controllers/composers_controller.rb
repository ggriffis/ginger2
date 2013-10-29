class ComposersController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    add_necessary_breadcrumbs
    @composers = @musician.ordered_composers
  end

  def show
    @composer = Composer.find(params[:id])
    @musician = @composer.genre.musician
    @search = Piece.search(params[:search])
    add_necessary_breadcrumbs
    add_breadcrumb "Composer", composer_path(@composer)
    @pieces = @search.all
    @pieces.dup.each do |e|
      if !@composer.pieces.include?(e)
        @pieces.delete(e)
      end
    end
    if params[:search].nil?
      sort_by_name
    else
      special_sort
    end
  end

  def special_sort
    search_string = params[:search][:meta_sort]
    if search_string.nil?
      sort_by_name
    else
      search_strings = search_string.split(".")
      if search_strings.first == "genre"
        sort_by_genre
      end
    end
  end

  def sort_by_name
    @pieces.sort! {|a,b| a.name <=> b.name}
  end

  def sort_by_genre
    @pieces.sort! {|a,b| a.genre.title <=> b.genre.title}
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
