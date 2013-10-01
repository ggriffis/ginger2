class WebDeveloperProject < ActiveRecord::Base
  attr_accessible :description, :github_url, :deployed_url, :web_developer_project_images_attributes
  belongs_to :web_developer
  has_many :web_developer_project_images

  accepts_nested_attributes_for :web_developer_project_images
end
