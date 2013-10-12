class CreateMusicianAssociationObjects < ActiveRecord::Migration
  def change
    create_table :musical_ensembles do |t|
      t.string :name
      t.text :description
      t.string :url
      t.integer :musician_id
    end
    create_table :musical_ensemble_video_links do |t|
      t.text :description
      t.string :title
      t.string :url
      t.boolean :main
      t.integer :musical_ensemble_id
    end
    create_table :musical_ensemble_recording_files do |t|
      t.string :description
      t.string :recording
      t.boolean :main
      t.integer :musical_ensemble_id
    end
    create_table :musical_ensemble_images do |t|
      t.string :description
      t.string :image
      t.boolean :main
      t.integer :musical_ensemble_id
    end
    create_table :musical_ensemble_gigs do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :location
      t.date :performance_date
      t.string :timeframe
      t.string :ticket_price
      t.text :program
      t.integer :musical_ensemble_id
    end
    create_table :musical_ensemble_gig_images do |t|
      t.string :description
      t.string :image
      t.integer :musical_ensemble_gig_id
    end
    create_table :gigs do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :location
      t.date :performance_date
      t.string :timeframe
      t.string :ticket_price
      t.text :program
    end
    create_table :gig_images do |t|
      t.string :description
      t.string :image
      t.integer :gig_id
    end
    create_table :genres do |t|
      t.string :description
      t.string :title
      t.integer :musician_id
    end
    create_table :composer do |t|
      t.string :name
      t.string :description
      t.integer :genre_id
    end
    create_table :piece do |t|
      t.string :name
      t.string :description
      t.integer :composer_id
    end
    create_table :musician_video_links do |t|
      t.text :description
      t.string :title
      t.string :url
      t.boolean :main
      t.integer :musician_id
    end
    create_table :musician_recording_files do |t|
      t.string :description
      t.string :recording
      t.boolean :main
      t.integer :musician_id
    end
    create_table :musician_images do |t|
      t.string :description
      t.string :image
      t.boolean :main
      t.integer :musician_id
    end
    create_table :musician_links do |t|
      t.string :description
      t.string :url
      t.integer :musician_id
    end
    create_table :musician_endorsements do |t|
      t.string :description
      t.string :endorser_name
      t.string :endorser_relationship
      t.integer :musician_id
    end
    create_table :musical_mentors do |t|
      t.string :name
      t.string :description
      t.integer :musician_id
    end
  end
end
