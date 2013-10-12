class GigImage < ActiveRecord::Base
  attr_accessible :description, :image
  belongs_to :gig

  mount_uploader :image, GigImageUploader
end
