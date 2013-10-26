class RemoveImportanceFromComposers < ActiveRecord::Migration
  def up
    remove_column :composers, :importance
  end

  def down
    add_column :composers, :importance, :string
  end
end
