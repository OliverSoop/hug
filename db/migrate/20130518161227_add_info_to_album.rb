class AddInfoToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :info, :text
  end
end
