class PiecesController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    @pieces = @musician.songs
  end

  def show
    @piece = Piece.find(params[:id])
  end
end
