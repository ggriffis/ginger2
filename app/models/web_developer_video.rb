class WebDeveloperVideo < ActiveRecord::Base
  attr_accessible :description, :title, :url, :importance
  belongs_to :web_developer
end
