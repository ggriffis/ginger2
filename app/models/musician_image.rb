class MusicianImage < ActiveRecord::Base
  attr_accessible :description, :image, :main
  belongs_to :musician

  mount_uploader :image, MusicianImageUploader
end
