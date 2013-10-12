class AddUrlToWebDeveloperJobs < ActiveRecord::Migration
  def change
    add_column :web_developer_jobs, :url, :string
  end
end
