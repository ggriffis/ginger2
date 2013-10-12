class DropRecordingFileTables < ActiveRecord::Migration
  def change
    drop_table :musician_recording_files
    drop_table :musical_ensemble_recording_files
  end
end
