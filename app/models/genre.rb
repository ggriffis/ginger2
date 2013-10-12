class Genre < ActiveRecord::Base
  attr_accessible :description, :title, :composers_attributes
  belongs_to :musician
  has_many :composers

  accepts_nested_attributes_for :composers, allow_destroy: true

  def songs
    ordered_composers.collect {|e| e.ordered_pieces}.flatten
  end

  def ordered_composers
    composers.sort {|a,b| a.name <=> b.name}
  end

  def abbreviated_composers_list
    s = ""
    composers.take(3).each do |e|
      s << e.name
      s << ", "
    end
    s.chomp!(", ")
    if composers.size > 3
      s + "..."
    else
      s
    end
  end
end
