class ChangeDescriptionTypeOnGenres < ActiveRecord::Migration
  def up
    change_column :genres, :description, :text
  end

  def down
    change_column :genres, :description, :string
  end
end
