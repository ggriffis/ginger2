class MusicianEndorsement < ActiveRecord::Base
  attr_accessible :description, :endorser_name, :endorser_relationship, :endorser_url, :importance
  belongs_to :musician

  def abbreviated_description
    description.truncate(200, :omission => "...")
  end
end
