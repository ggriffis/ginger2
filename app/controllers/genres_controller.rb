class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @musician = @genre.musician
    @pieces = @genre.songs
  end
end
