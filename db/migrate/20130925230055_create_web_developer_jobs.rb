class CreateWebDeveloperJobs < ActiveRecord::Migration
  def change
    create_table :web_developer_jobs do |t|
      t.string :description
      t.string :company
      t.string :duration
      t.string :skills_used
      t.string :location
      t.integer :web_developer_id
    end
  end
end
