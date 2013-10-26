class Genre < ActiveRecord::Base
  attr_accessible :description, :title, :composers_attributes, :importance
  belongs_to :musician
  has_many :composers

  accepts_nested_attributes_for :composers, allow_destroy: true

  def songs
    ordered_composers.collect {|e| e.ordered_pieces}.flatten
  end

  def ordered_composers
    composers.sort {|a,b| a.last_name <=> b.last_name}
  end

  def abbreviated_composers_list
    s = ""
    ordered_composers.take(5).each do |e|
      s << e.last_name
      s << ", "
    end
    s.chomp!(", ")
    if composers.size > 5
      s + "..."
    else
      s
    end
  end

  def abbreviated_description
    description.truncate(300, :omission => "...")
  end
end
