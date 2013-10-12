class MusicalEnsembleGigsController < ApplicationController
  def index
    @ensemble = MusicalEnsemble.find(params[:musical_ensemble_id])
    @musician = @ensemble.musician
    @gigs = @ensemble.upcoming_gigs
    @past_gigs = @ensemble.past_gigs
  end

  def show
    @gig = MusicalEnsembleGig.find(params[:id])
  end
end
