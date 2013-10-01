class AddImageToWebDeveloperProjectImages < ActiveRecord::Migration
  def change
    add_column :web_developer_project_images, :image, :string
  end
end
