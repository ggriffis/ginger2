class MusicianImagesController < ApplicationController
  def index
    @musician = Musician.find(params[:musician_id])
    @images = @musician.musician_images.in_groups(3, false)
    @images1 = @images[0]
    @images2 = @images[1]
    @images3 = @images[2]
  end
end
