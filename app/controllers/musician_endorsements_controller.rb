class MusicianEndorsementsController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    @endorsements = @musician.ordered_musician_endorsements
  end

  def show
    @endorsement = MusicianEndorsement.find(params[:id])
  end
end
