class MusicalEnsembleGig < ActiveRecord::Base
  attr_accessible :description, :title, :url, :location, :performance_date, :timeframe,
                    :ticket_price, :program, :address, :musical_ensemble_gig_image_attributes
  belongs_to :musical_ensemble
  has_one :musical_ensemble_gig_image

  accepts_nested_attributes_for :musical_ensemble_gig_image, allow_destroy: true

  def gig_image
    musical_ensemble_gig_image
  end

  def display_title
    musical_ensemble.name + " - " + title
  end
end
