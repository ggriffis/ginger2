class CreateMusicicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.text :my_story
      t.string :type
    end
  end
end
