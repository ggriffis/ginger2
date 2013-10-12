class WebDeveloperJob < ActiveRecord::Base
  attr_accessible :description, :company, :duration, :location, :skills_used, :short_description, :importance, :url
  belongs_to :web_developer
end
