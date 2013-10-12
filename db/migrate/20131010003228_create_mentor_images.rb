class CreateMentorImages < ActiveRecord::Migration
  def change
    create_table :mentor_images do |t|
      t.string :description
      t.string :image
      t.integer :mentor_id
    end
  end
end
