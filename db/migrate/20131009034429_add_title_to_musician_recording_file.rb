class AddTitleToMusicianRecordingFile < ActiveRecord::Migration
  def change
    add_column :musician_recording_files, :title, :string
  end
end
