class CreateWebDeveloperLinks < ActiveRecord::Migration
  def change
    create_table :web_developer_links do |t|
      t.string :description
      t.string :url
      t.integer :web_developer_id
    end
  end
end
