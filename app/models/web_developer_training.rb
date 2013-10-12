class WebDeveloperTraining < ActiveRecord::Base
  attr_accessible :description, :duration, :short_description, :importance, :url
  belongs_to :web_developer
end
