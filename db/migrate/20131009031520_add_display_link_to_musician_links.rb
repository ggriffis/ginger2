class AddDisplayLinkToMusicianLinks < ActiveRecord::Migration
  def change
    add_column :musician_links, :display_link, :string
  end
end
