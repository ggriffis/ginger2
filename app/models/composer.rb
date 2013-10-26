class Composer < ActiveRecord::Base
  attr_accessible :description, :name, :pieces_attributes, :first_name, :last_name
  belongs_to :genre
  has_many :pieces

  accepts_nested_attributes_for :pieces, allow_destroy: true

  def ordered_pieces
    pieces.sort {|a,b| a.name <=> b.name}
  end

  def full_name
    first_name + " " + last_name
  end

  def abbreviated_description
    description.truncate(300, :omission => "...")
  end
end
