class FixMusicalEnsembleLinkForeignKey < ActiveRecord::Migration
  def change
    add_column :musical_ensemble_links, :musical_ensemble_id, :integer
    remove_column :musical_ensemble_links, :musician_id
  end
end
