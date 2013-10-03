class WebDeveloperTraining < ActiveRecord::Base
  attr_accessible :description, :duration, :short_description, :importance
  belongs_to :web_developer
end
