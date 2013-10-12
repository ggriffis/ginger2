class Composer < ActiveRecord::Base
  attr_accessible :description, :name, :pieces_attributes
  belongs_to :genre
  has_many :pieces

  accepts_nested_attributes_for :pieces, allow_destroy: true

  def ordered_pieces
    pieces.sort {|a,b| a.name <=> b.name}
  end
end
