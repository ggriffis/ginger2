class AddDurationToPieces < ActiveRecord::Migration
  def change
    rename_table :piece, :pieces
    rename_table :composer, :composers
    add_column :pieces, :duration, :string
  end
end
