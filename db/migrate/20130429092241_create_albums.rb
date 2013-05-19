class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.date :release_date
      t.text :prizes

      t.timestamps
    end
  end
end
