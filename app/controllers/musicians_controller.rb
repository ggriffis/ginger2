class MusiciansController < ApplicationController
  def show
    @links = @musician.musician_links
    @endorsements = @musician.ordered_musician_endorsements.take(3)
    @ensembles = @musician.musical_ensembles
    @mentors = @musician.ordered_mentors
    @video_link = @musician.ordered_video_links.first
    @genres = @musician.genres
    @gigs = @musician.upcoming_gigs.take(3)
    if @musician && @musician.main_image
      @image_url = @musician.main_image.image_url(:thumb).to_s
    else
      @image_url = @musician.default_image_file
    end
  end
end
