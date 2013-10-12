class AddEndorserUrlToMusicianEndorsements < ActiveRecord::Migration
  def change
    add_column :musician_endorsements, :endorser_url, :string
  end
end
