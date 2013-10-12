class MusicalEnsembleImagesController < ApplicationController
  def index
    @ensemble = MusicalEnsemble.find(params[:musical_ensemble_id])
    @musician = @ensemble.musician
    @images = @ensemble.musical_ensemble_images.in_groups(3, false)
    @images1 = @images[0]
    @images2 = @images[1]
    @images3 = @images[2]
  end
end
