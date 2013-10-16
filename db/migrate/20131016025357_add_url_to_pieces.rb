class AddUrlToPieces < ActiveRecord::Migration
  def change
    add_column :pieces, :url, :string
  end
end
