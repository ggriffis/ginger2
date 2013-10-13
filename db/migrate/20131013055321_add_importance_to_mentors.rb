class AddImportanceToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :importance, :integer
  end
end
