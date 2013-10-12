class MusicianVideoLink < ActiveRecord::Base
  attr_accessible :description, :title, :url, :importance
  belongs_to :musician
end
