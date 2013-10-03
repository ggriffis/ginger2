class CreateVideo < ActiveRecord::Migration
  def change
    create_table :web_developer_videos do |t|
      t.text :description
      t.string :title
      t.string :url
      t.integer :web_developer_id
    end
  end
end
