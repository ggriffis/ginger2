class RemoveMainFromMusicianVideoLinks < ActiveRecord::Migration
  def change
    remove_column :musician_video_links, :main
  end
end
