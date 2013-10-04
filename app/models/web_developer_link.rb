class WebDeveloperLink < ActiveRecord::Base
  attr_accessible :description, :url, :icon_file_name, :display_link
  belongs_to :web_developer
end
