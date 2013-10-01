class AddIconFileToWebDeveloperLink < ActiveRecord::Migration
  def change
    add_column :web_developer_links, :icon_file_name, :string
  end
end
