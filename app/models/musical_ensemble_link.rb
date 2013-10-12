class MusicalEnsembleLink < ActiveRecord::Base
  attr_accessible :description, :url, :importance, :display_link
  belongs_to :musical_ensemble

  def link_for_display
    if display_link.present?
      display_link
    else
      url
    end
  end
end
