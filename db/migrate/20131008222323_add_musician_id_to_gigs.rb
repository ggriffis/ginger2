class AddMusicianIdToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :musician_id, :integer
  end
end
