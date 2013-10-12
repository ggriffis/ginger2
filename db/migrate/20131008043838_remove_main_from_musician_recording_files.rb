class RemoveMainFromMusicianRecordingFiles < ActiveRecord::Migration
  def change
    remove_column :musician_recording_files, :main
  end
end
