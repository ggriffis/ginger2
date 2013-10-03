class WebDeveloperProject < ActiveRecord::Base
  attr_accessible :description, :github_url, :deployed_url, :web_developer_project_images_attributes, :short_description, :importance
  belongs_to :web_developer
  has_many :web_developer_project_images

  accepts_nested_attributes_for :web_developer_project_images

  def sorted_project_images
    a = []
    self.web_developer_project_images.each do |e|
      if e.main_image?
        a.unshift(e)
      else
        a << e
      end
    end
    return a
  end

  def main_image
    proc = Proc.new do
      self.web_developer_project_images.first
    end
    self.web_developer_project_images.detect(proc) do |p|
      p.main_image?
    end
  end
end
