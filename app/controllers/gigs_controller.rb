class GigsController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    @gigs = @musician.upcoming_gigs
    @past_gigs = @musician.past_gigs
  end

  def show
    @gig = Gig.find(params[:id])
  end
end
