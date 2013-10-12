class Mentor < ActiveRecord::Base
  attr_accessible :description, :name, :url, :mentor_image_attributes
  belongs_to :musician

  has_one :mentor_image
  accepts_nested_attributes_for :mentor_image
end
