class RemoveImportanceFromMusicalEnsembleRecordingFiles < ActiveRecord::Migration
  def change
    remove_column :musical_ensemble_recording_files, :importance
  end
end
