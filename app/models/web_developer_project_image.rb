class WebDeveloperProjectImage < ActiveRecord::Base
  attr_accessible :description, :image, :main_image
  belongs_to :web_developer_project

  mount_uploader :image, WebDeveloperProjectImageUploader
end
