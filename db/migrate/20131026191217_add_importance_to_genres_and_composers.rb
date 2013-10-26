class AddImportanceToGenresAndComposers < ActiveRecord::Migration
  def change
    add_column :genres, :importance, :integer
    add_column :composers, :importance, :integer
  end
end
