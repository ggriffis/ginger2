class WebDeveloperEndorsement < ActiveRecord::Base
  attr_accessible :description, :endorser_name, :endorser_relationship, :endorser_url, :importance
  belongs_to :web_developer
end
