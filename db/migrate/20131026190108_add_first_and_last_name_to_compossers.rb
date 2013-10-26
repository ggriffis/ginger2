class AddFirstAndLastNameToCompossers < ActiveRecord::Migration
  def change
    add_column :composers, :first_name, :string
    add_column :composers, :last_name, :string
  end
end
