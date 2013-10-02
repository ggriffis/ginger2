class ChangeDescriptionsToText < ActiveRecord::Migration
  def up
    change_column :web_developer_endorsements, :description, :text
    change_column :web_developer_jobs, :description, :text
    change_column :web_developer_projects, :description, :text
    change_column :web_developer_trainings, :description, :text
  end

  def down
    change_column :web_developer_endorsements, :description, :string
    change_column :web_developer_jobs, :description, :string
    change_column :web_developer_projects, :description, :string
    change_column :web_developer_trainings, :description, :string
  end
end
