class Gig < ActiveRecord::Base
  attr_accessible :description, :title, :url, :location, :performance_date, :timeframe,
                    :ticket_price, :address, :program, :gig_image_attributes
  belongs_to :musician
  has_one :gig_image

  accepts_nested_attributes_for :gig_image, allow_destroy: true

  def display_title
    title
  end
end
