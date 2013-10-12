class MentorImage < ActiveRecord::Base
  attr_accessible :description, :image
  belongs_to :mentor

  mount_uploader :image, MentorImageUploader
end
