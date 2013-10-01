class WebDeveloperLink < ActiveRecord::Base
  attr_accessible :description, :url
  belongs_to :web_developer
end
