class Musician < ActiveRecord::Base
  attr_accessible :type, :my_story, :musician_links_attributes, :musician_images_attributes, :musician_endorsements_attributes,
                  :musical_ensembles_attributes, :gigs_attributes, :genres_attributes,
                  :musician_video_links_attributes, :mentors_attributes

  has_many :musician_links
  has_many :musician_images
  has_many :musician_endorsements
  has_many :musical_ensembles
  has_many :gigs
  has_many :genres
  has_many :musician_video_links
  has_many :mentors

  accepts_nested_attributes_for :musician_links,
                                 :musician_images,
                                 :musician_endorsements,
                                 :musical_ensembles,
                                 :gigs,
                                 :genres,
                                 :musician_video_links,
                                 :mentors,
                                 allow_destroy: true
  def self.singleton
    self.all.first
  end

  def main_image
    proc = Proc.new {self.musician_images.first}
    self.musician_images.detect(proc) do |e|
      e.main?
    end
  end

  def songs
    self.genres.collect {|e| e.songs}.flatten
  end

  def upcoming_gigs
    all_gigs = gigs + self.ensemble_gigs
    future_gigs = all_gigs.select do |e|
      e.performance_date >= Date.today
    end
    future_gigs.sort! {|a,b| a.performance_date <=> b.performance_date}
  end

  def past_gigs
    all_gigs = gigs + self.ensemble_gigs
    old_gigs = all_gigs.select do |e|
      e.performance_date < Date.today
    end
    old_gigs.sort! {|a,b| b.performance_date <=> a.performance_date}
  end

  def ensemble_gigs
    all_ensemble_gigs = []
    musical_ensembles.each do |e|
      all_ensemble_gigs += e.musical_ensemble_gigs
    end
    all_ensemble_gigs
  end

  def ordered_gigs
    all_gigs = gigs + ensemble_gigs
    all_gigs.sort {|a,b| a.performance_date <=> b.performance_date}
  end

  def ordered_genres
    genres.sort {|a,b| a.title <=> b.title}
  end

  def ordered_mentors
    mentors.sort {|a,b| a.importance <=> b.importance}
  end

  def ordered_musician_endorsements
    musician_endorsements.sort {|a,b| a.importance <=> b.importance}
  end

  def ordered_video_links
    musician_video_links.sort {|a,b| a.importance <=> b.importance}
  end
end
