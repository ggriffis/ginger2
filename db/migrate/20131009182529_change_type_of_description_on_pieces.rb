class ChangeTypeOfDescriptionOnPieces < ActiveRecord::Migration
  def up
    change_column :pieces, :description, :text
  end

  def down
    change_column :pieces, :description, :string
  end
end
