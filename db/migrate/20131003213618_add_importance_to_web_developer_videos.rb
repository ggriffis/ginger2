class AddImportanceToWebDeveloperVideos < ActiveRecord::Migration
  def change
    add_column :web_developer_videos, :importance, :integer
  end
end
