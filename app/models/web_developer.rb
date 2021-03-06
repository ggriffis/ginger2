class WebDeveloper < ActiveRecord::Base
  attr_accessible :skills, :my_story, :web_developer_links_attributes, :web_developer_images_attributes, :web_developer_endorsements_attributes,
                  :web_developer_projects_attributes, :web_developer_jobs_attributes, :web_developer_trainings_attributes,
                  :web_developer_videos_attributes

  has_many :web_developer_links
  has_many :web_developer_images
  has_many :web_developer_endorsements
  has_many :web_developer_projects
  has_many :web_developer_jobs
  has_many :web_developer_trainings
  has_many :web_developer_videos

  accepts_nested_attributes_for :web_developer_links, :web_developer_images, :web_developer_endorsements, :web_developer_projects, :web_developer_jobs,
                                :web_developer_trainings, :web_developer_videos, allow_destroy: true

  def self.singleton
    self.all.first
  end

  def main_image
    proc = Proc.new {self.web_developer_images.first}
    self.web_developer_images.detect(proc) do |e|
      e.main_image?
    end
  end

  def sorted_jobs
    self.web_developer_jobs.sort do |a,b|
      b.duration.slice(0,4) <=> a.duration.slice(0,4)
    end
  end

  def sorted_videos
    self.web_developer_videos.sort do |a,b|
      a.importance <=> b.importance
    end
  end

  def sorted_trainings
    self.web_developer_trainings.sort do |a,b|
      b.duration.slice(0,4) <=> a.duration.slice(0,4)
    end
  end

  def sorted_projects
    self.web_developer_projects.sort do |a,b|
      a.importance <=> b.importance
    end
  end

  def sorted_endorsements
    self.web_developer_endorsements.sort do |a,b|
      a.importance <=> b.importance
    end
  end

  def important_jobs
    self.sorted_jobs.select {|e| e.importance < 3}
  end

  def important_trainings
    self.sorted_trainings.select {|e| e.importance < 3}
  end

  def important_projects
    self.sorted_projects.select {|e| e.importance < 3}
  end

  def important_endorsements
    self.sorted_endorsements.select {|e| e.importance < 3}
  end

  def link_by_name(link_name)
    self.web_developer_links.detect do |e|
      e.description.downcase.include? (link_name)
    end
  end

  def twitter_link
    link_by_name("twitter")
  end

  def github_link
    link_by_name("github")
  end

  def resume_link
    link_by_name("resume")
  end

  def linked_in_link
    link_by_name("linkedin")
  end

  def blog_link
    link_by_name("blog")
  end
end
