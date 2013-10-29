class PiecesController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    @search = Piece.search(params[:search])
    add_other_breadcrumbs
    @pieces = @search.all
    @pieces.dup.each do |e|
      if !@musician.songs.include?(e)
        @pieces.delete(e)
      end
    end
    if params[:search].nil?
      sort_by_composer
    else
      special_sort
    end
  end

  def special_sort
    search_string = params[:search][:meta_sort]
    if search_string.nil?
      sort_by_composer
    else
      search_strings = search_string.split(".")
      if search_strings.first == "composer"
        sort_by_composer
      elsif search_strings.first == "genre"
        sort_by_genre
      end
    end
  end

  def sort_by_composer
    @pieces.sort! {|a,b| a.composer.last_name <=> b.composer.last_name}
  end

  def sort_by_genre
    @pieces.sort! {|a,b| a.genre.title <=> b.genre.title}
  end

  def show
    @piece = Piece.find(params[:id])
    @musician = @piece.musician
    add_other_breadcrumbs
    add_breadcrumb "Piece", piece_path(@piece)
  end

  def add_other_breadcrumbs
    add_breadcrumb "Gigs", musician_gigs_path(@musician)
    add_breadcrumb "Samples", musician_musician_video_links_path(@musician)
    add_breadcrumb "Ensembles", musician_musical_ensembles_path(@musician)
    add_breadcrumb "Testimonials", musician_musician_endorsements_path(@musician)
    add_breadcrumb "Photo Gallery", musician_musician_images_path(@musician)
    add_breadcrumb "Genres", musician_genres_path(@musician)
    add_breadcrumb "Composers", musician_composers_path(@musician)
    add_breadcrumb "Repertoire", musician_pieces_path(@musician)
  end
end
