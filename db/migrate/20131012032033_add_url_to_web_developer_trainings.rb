class AddUrlToWebDeveloperTrainings < ActiveRecord::Migration
  def change
    add_column :web_developer_trainings, :url, :string
  end
end
