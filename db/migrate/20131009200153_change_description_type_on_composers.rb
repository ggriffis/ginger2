class ChangeDescriptionTypeOnComposers < ActiveRecord::Migration
  def up
    change_column :composers, :description, :text
  end

  def down
    change_column :composers, :description, :string
  end
end
