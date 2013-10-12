class MusicalEnsembleGigImage < ActiveRecord::Base
  attr_accessible :description, :image
  belongs_to :musical_ensemble_gig

  mount_uploader :image, MusicalEnsembleGigImageUploader
end
