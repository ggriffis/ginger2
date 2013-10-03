class AddImportanceToEndorsements < ActiveRecord::Migration
  def change
    add_column :web_developer_endorsements, :importance, :integer
  end
end
