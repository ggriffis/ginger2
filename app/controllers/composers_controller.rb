class ComposersController < ApplicationController
  def show
    @composer = Composer.find(params[:id])
    @musician = @composer.genre.musician
    @pieces = @composer.ordered_pieces
  end
end
