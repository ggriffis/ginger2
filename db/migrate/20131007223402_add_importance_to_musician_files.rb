class AddImportanceToMusicianFiles < ActiveRecord::Migration
  def change
    add_column :musical_ensemble_recording_files, :importance, :integer
    add_column :musical_ensemble_video_links, :importance, :integer
    add_column :musical_mentors, :importance, :integer
    add_column :musician_endorsements, :importance, :integer
    add_column :musician_links, :importance, :integer
    add_column :musician_recording_files, :importance, :integer
    add_column :musician_video_links, :importance, :integer
    remove_column :musical_ensembles, :url
    create_table :musical_ensemble_links do |t|
      t.integer :importance
      t.string :description
      t.string :url
      t.integer :musician_id
    end
  end
end
