class CreateWebDeveloperProjectImages < ActiveRecord::Migration
  def change
    create_table :web_developer_project_images do |t|
      t.string :description
      t.boolean :main_image
      t.integer :web_developer_project_id
    end
  end
end
