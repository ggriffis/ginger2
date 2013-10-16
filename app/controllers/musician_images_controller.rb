class MusicianImagesController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    add_breadcrumb "Gigs", musician_gigs_path(@musician)
    add_breadcrumb "Samples", musician_musician_video_links_path(@musician)
    add_breadcrumb "Repertoire", musician_pieces_path(@musician)
    add_breadcrumb "Testimonials", musician_musician_endorsements_path(@musician)
    add_breadcrumb "Photo Gallery", musician_musician_images_path(@musician)
    @images = @musician.musician_images.in_groups(3, false)
    @images1 = @images[0]
    @images2 = @images[1]
    @images3 = @images[2]
  end
end
