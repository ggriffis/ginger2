ActiveAdmin.register Soprano do
  form do |f|
    f.inputs "Details" do
      f.input :my_story
      f.input :type
    end
    f.inputs "Links" do
      f.has_many  :musician_links do |ml|
        ml.input :description
        ml.input :url
        ml.input :importance
        ml.input :display_link
        ml.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Images" do
      f.has_many  :musician_images do |ml|
        ml.input :description
        ml.input :image
        ml.input :main
        ml.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Endorsements" do
      f.has_many  :musician_endorsements do |me|
        me.input :description
        me.input :endorser_name
        me.input :endorser_relationship
        me.input :endorser_url
        me.input :importance
        me.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Video links" do
      f.has_many :musician_video_links do |vl|
        vl.input :title
        vl.input :description
        vl.input :url
        vl.input :importance
        vl.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Mentors" do
      f.has_many :mentors do |m|
        m.input :description
        m.input :name
        m.input :url
        m.input :importance
        m.inputs "Mentor image" do
          m.has_many :mentor_image do |mi|
            mi.input :image
            mi.input :description
          end
        end
        m.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Genres" do
      f.has_many  :genres do |g|
        g.input :title
        g.input :description
        g.input :importance
        g.inputs "Composers" do
          g.has_many :composers do |c|
            c.input :name
            c.input :first_name
            c.input :last_name
            c.input :description
            c.inputs "Pieces" do
              c.has_many :pieces do |p|
                p.input :name
                p.input :description
                p.input :duration
                p.input :url
                p.input :_destroy, :as => :boolean
              end
            end
            c.input :_destroy, :as => :boolean
          end
        end
        g.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Gigs" do
      f.has_many  :gigs do |g|
        g.input :title
        g.input :description
        g.input :url
        g.input :location
        g.input :performance_date
        g.input :timeframe
        g.input :ticket_price
        g.input :program
        g.input :address
        g.inputs "Gig Image" do
          g.has_many :gig_image do |gi|
            gi.input :description
            gi.input :image
            gi.input :_destroy, :as => :boolean
          end
        end
        g.input :_destroy, :as => :boolean
      end
    end
    f.inputs "Ensembles" do
      f.has_many  :musical_ensembles do |me|
        me.input :name
        me.input :description
        me.input :importance
        me.inputs "Video links" do
          me.has_many :musical_ensemble_video_links do |vl|
            vl.input :title
            vl.input :description
            vl.input :url
            vl.input :importance
            vl.input :_destroy, :as => :boolean
          end
        end
        me.inputs "Ensemble Links" do
          me.has_many :musical_ensemble_links do |el|
            el.input :description
            el.input :url
            el.input :display_link
            el.input :importance
            el.input :_destroy, :as => :boolean
          end
        end
        me.inputs "Ensemble Images" do
          me.has_many :musical_ensemble_images do |i|
            i.input :description
            i.input :image
            i.input :main
            i.input :_destroy, :as => :boolean
          end
        end
        me.inputs "Ensemble Gigs" do
          me.has_many :musical_ensemble_gigs do |g|
            g.input :title
            g.input :description
            g.input :url
            g.input :location
            g.input :performance_date
            g.input :timeframe
            g.input :ticket_price
            g.input :program
            g.input :address
            g.input :_destroy, :as => :boolean
            g.inputs "Ensemble Gig Image" do
              g.has_many :musical_ensemble_gig_image do |gi|
                gi.input :description
                gi.input :image
                gi.input :_destroy, :as => :boolean
              end
            end
          end
        end
        me.input :_destroy, :as => :boolean
      end
    end
    f.actions
  end
end
