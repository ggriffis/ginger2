class CreateWebDeveloperEndorsements < ActiveRecord::Migration
  def change
    create_table :web_developer_endorsements do |t|
      t.string :description
      t.string :endorser_name
      t.string :endorser_relationship
      t.integer :web_developer_id
    end
  end
end
