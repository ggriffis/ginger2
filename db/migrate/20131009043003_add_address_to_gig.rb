class AddAddressToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :address, :text
  end
end
