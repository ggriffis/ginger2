class MusicalEnsemble < ActiveRecord::Base
  attr_accessible :description, :name, :musical_ensemble_video_links_attributes,
                                 :musical_ensemble_recording_files_attributes,
                                 :musical_ensemble_links_attributes,
                                 :musical_ensemble_images_attributes,
                                 :musical_ensemble_gigs_attributes
  belongs_to :musician
  has_many :musical_ensemble_video_links
  has_many :musical_ensemble_links
  has_many :musical_ensemble_images
  has_many :musical_ensemble_gigs


  accepts_nested_attributes_for :musical_ensemble_video_links,
                                 :musical_ensemble_links,
                                 :musical_ensemble_images,
                                 :musical_ensemble_gigs,
                                 allow_destroy: true

  def main_image
    proc = Proc.new {self.musical_ensemble_images.first}
    self.musical_ensemble_images.detect(proc) do |e|
      e.main?
    end
  end

  def upcoming_gigs
    future_gigs = musical_ensemble_gigs.select do |e|
      e.performance_date >= Date.today
    end
    future_gigs.sort! {|a,b| a.performance_date <=> b.performance_date}
  end

  def past_gigs
    old_gigs = musical_ensemble_gigs.select do |e|
      e.performance_date < Date.today
    end
    old_gigs.sort! {|a,b| b.performance_date <=> a.performance_date}
  end

  def ordered_gigs
    musical_ensemble_gigs.sort {|a,b| a.performance_date <=> b.performance_date}
  end

  def ordered_video_links
    musical_ensemble_video_links.sort {|a,b| a.importance <=> b.importance}
  end

  def ordered_musical_ensemble_links
    musical_ensemble_links.sort {|a,b| a.importance <=> b.importance}
  end

  def main_link_url
    link = ordered_musical_ensemble_links.first
    link.nil? ? "http://www.gingergriffis.com/" : link.url
  end

  def abbreviated_description
    description.truncate(75, :omission => "...")
  end
end
