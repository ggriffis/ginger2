class AddUrlToWebDeveloperEndorsements < ActiveRecord::Migration
  def change
    add_column :web_developer_endorsements, :endorser_url, :string
  end
end
