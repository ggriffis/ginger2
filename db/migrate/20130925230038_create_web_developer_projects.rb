class CreateWebDeveloperProjects < ActiveRecord::Migration
  def change
    create_table :web_developer_projects do |t|
      t.string :description
      t.string :github_url
      t.string :deployed_url
      t.integer :web_developer_id
    end
  end
end
