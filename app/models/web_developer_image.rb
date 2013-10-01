class WebDeveloperImage < ActiveRecord::Base
  attr_accessible :description, :image, :main_image
  belongs_to :web_developer

  mount_uploader :image, WebDeveloperImageUploader
end
