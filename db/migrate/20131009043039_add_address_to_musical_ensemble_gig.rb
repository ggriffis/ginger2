class AddAddressToMusicalEnsembleGig < ActiveRecord::Migration
  def change
    add_column :musical_ensemble_gigs, :address, :text
  end
end
