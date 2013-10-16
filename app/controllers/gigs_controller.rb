class GigsController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    add_other_breadcrumbs
    @gigs = @musician.upcoming_gigs
    @past_gigs = @musician.past_gigs
  end

  def show
    @gig = Gig.find(params[:id])
    @musician = @gig.musician
    add_other_breadcrumbs
    add_breadcrumb "Gig", gig_path(@gig)
  end

  def add_other_breadcrumbs
    add_breadcrumb "Samples", musician_musician_video_links_path(@musician)
    add_breadcrumb "Repertoire", musician_pieces_path(@musician)
    add_breadcrumb "Testimonials", musician_musician_endorsements_path(@musician)
    add_breadcrumb "Photo Gallery", musician_musician_images_path(@musician)
    add_breadcrumb "Gigs", musician_gigs_path(@musician)
  end
end
