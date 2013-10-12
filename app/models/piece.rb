class Piece < ActiveRecord::Base
  attr_accessible :description, :name, :duration
  belongs_to :composer

  def genre
    composer.genre
  end

  def abbreviated_description
    description.truncate(200, :omission => "...")
  end
end
