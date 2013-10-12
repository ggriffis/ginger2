class AddMusicalMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :url
      t.text :description
      t.integer :musician_id
    end
  end
end
