class WebDeveloperLink < ActiveRecord::Base
  attr_accessible :description, :url, :icon_file_name
  belongs_to :web_developer
end
