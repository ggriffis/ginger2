class AddImageToWebDevelopers < ActiveRecord::Migration
  def change
    add_column :web_developers, :image, :string
  end
end
