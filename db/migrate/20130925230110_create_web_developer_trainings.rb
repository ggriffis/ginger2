class CreateWebDeveloperTrainings < ActiveRecord::Migration
  def change
    create_table :web_developer_trainings do |t|
      t.string :description
      t.string :duration
      t.integer :web_developer_id
    end
  end
end
