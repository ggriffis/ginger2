class WebDeveloper < ActiveRecord::Base
  attr_accessible :skills, :my_story, :web_developer_links_attributes, :web_developer_images_attributes, :web_developer_endorsements_attributes,
                  :web_developer_projects_attributes, :web_developer_jobs_attributes, :web_developer_trainings_attributes

  has_many :web_developer_links
  has_many :web_developer_images
  has_many :web_developer_endorsements
  has_many :web_developer_projects
  has_many :web_developer_jobs
  has_many :web_developer_trainings

  accepts_nested_attributes_for :web_developer_links, :web_developer_images, :web_developer_endorsements, :web_developer_projects, :web_developer_jobs,
                                :web_developer_trainings, allow_destroy: true

  def main_image
    proc = Proc.new {self.web_developer_images.first}
    self.web_developer_images.detect(proc) do |e|
      e.main_image?
    end
  end
end
