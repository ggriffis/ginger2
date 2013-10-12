class AddDisplayLinkToMusicalEnsembleLinks < ActiveRecord::Migration
  def change
    add_column :musical_ensemble_links, :display_link, :string
  end
end
