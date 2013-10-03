class AddShortDescriptionsAndMostImportant < ActiveRecord::Migration
  def change
    add_column :web_developer_jobs, :short_description, :string
    add_column :web_developer_jobs, :importance, :integer
    add_column :web_developer_projects, :short_description, :string
    add_column :web_developer_projects, :importance, :integer
    add_column :web_developer_trainings, :short_description, :string
    add_column :web_developer_trainings, :importance, :integer
  end
end
