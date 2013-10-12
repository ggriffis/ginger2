class MusicalEnsembleVideoLink < ActiveRecord::Base
  attr_accessible :description, :title, :url, :importance
  belongs_to :musical_ensemble
end
