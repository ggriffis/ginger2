class WebDeveloperJob < ActiveRecord::Base
  attr_accessible :description, :company, :duration, :location, :skills_used
  belongs_to :web_developer
end
