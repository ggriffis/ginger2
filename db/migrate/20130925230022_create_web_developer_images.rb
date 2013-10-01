class CreateWebDeveloperImages < ActiveRecord::Migration
  def change
    create_table :web_developer_images do |t|
      t.string :description
      t.string :image
      t.boolean :main_image
    end
  end
end
