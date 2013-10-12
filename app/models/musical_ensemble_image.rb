class MusicalEnsembleImage < ActiveRecord::Base
  attr_accessible :description, :image, :main
  belongs_to :musical_ensemble

  mount_uploader :image, MusicalEnsembleImageUploader
end
