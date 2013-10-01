class AddWebDeveloperIdToWebDeveloperImages < ActiveRecord::Migration
  def change
    add_column :web_developer_images, :web_developer_id, :integer
  end
end
