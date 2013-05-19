class AddCreatedToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :created, :datetime
  end
end
