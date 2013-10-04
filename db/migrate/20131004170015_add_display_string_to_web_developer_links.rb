class AddDisplayStringToWebDeveloperLinks < ActiveRecord::Migration
  def change
    add_column :web_developer_links, :display_link, :string
  end
end
