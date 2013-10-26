class MusicianVideoLinksController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    add_necessary_breadcrumbs
    @video_links = @musician.ordered_video_links.in_groups(2, false)
    @video_links1 = @video_links[0]
    @video_links2 = @video_links[1]
  end

  def show
    @video_link = MusicianVideoLink.find(params[:id])
    @musician = @video_link.musician
    add_necessary_breadcrumbs
    add_breadcrumb "Sample", musician_video_link_path(@video_link)
  end

  def add_necessary_breadcrumbs
    add_breadcrumb "Gigs", musician_gigs_path(@musician)
    add_breadcrumb "Repertoire", musician_pieces_path(@musician)
    add_breadcrumb "Ensembles", musician_musical_ensembles_path(@musician)
    add_breadcrumb "Testimonials", musician_musician_endorsements_path(@musician)
    add_breadcrumb "Photo Gallery", musician_musician_images_path(@musician)
    add_breadcrumb "Samples", musician_musician_video_links_path(@musician)
  end
end
