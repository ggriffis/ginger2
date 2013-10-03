ActiveAdmin.register WebDeveloper do
  form do |f|
    f.inputs "Details" do
      f.input :my_story
      f.input :skills
    end
    f.inputs "Links" do
      f.has_many  :web_developer_links do |dev|
        dev.input :description
        dev.input :url
        dev.input :icon_file_name
        dev.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Endorsements" do
      f.has_many  :web_developer_endorsements do |dev|
        dev.input :description
        dev.input :endorser_name
        dev.input :endorser_relationship
        dev.input :endorser_url
        dev.input :importance
        dev.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Projects" do
      f.has_many  :web_developer_projects do |dev|
        dev.input :description
        dev.input :github_url
        dev.input :deployed_url
        dev.input :importance
        dev.input :short_description
        dev.inputs "Project images" do
          dev.has_many :web_developer_project_images do |p|
            p.input :description
            p.input :image
            p.input :main_image
            p.input :_destroy, :as => :boolean
          end
        end
        dev.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Jobs" do
      f.has_many  :web_developer_jobs do |dev|
        dev.input :description
        dev.input :company
        dev.input :duration
        dev.input :location
        dev.input :skills_used
        dev.input :importance
        dev.input :short_description
        dev.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Trainings" do
      f.has_many  :web_developer_trainings do |dev|
        dev.input :description
        dev.input :duration
        dev.input :importance
        dev.input :short_description
        dev.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Pictures" do
      f.has_many  :web_developer_images do |dev|
        dev.input :description
        dev.input :image
        dev.input :main_image
        dev.input :_destroy, :as => :boolean
      end
    end
    f.actions
  end
end
