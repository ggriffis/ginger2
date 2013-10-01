class CreateWebDeveloper < ActiveRecord::Migration
  def change
    create_table :web_developers do |t|
      t.text :my_story
      t.text :skills
    end
  end
end
