class AddImportanceToMusicalEnsembleRecordingFiles < ActiveRecord::Migration
  def change
    add_column :musical_ensemble_recording_files, :importance, :integer
    remove_column :musical_ensemble_recording_files, :main
  end
end
