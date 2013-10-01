class WebDeveloperTraining < ActiveRecord::Base
  attr_accessible :description, :duration
  belongs_to :web_developer
end
