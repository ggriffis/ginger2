class AddImportanceToMusicalEnsembles < ActiveRecord::Migration
  def change
    add_column :musical_ensembles, :importance, :integer
  end
end
