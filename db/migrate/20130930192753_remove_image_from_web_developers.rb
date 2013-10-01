class RemoveImageFromWebDevelopers < ActiveRecord::Migration
  def change
    remove_column :web_developers, :image
  end
end
