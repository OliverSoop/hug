class AddPicFileNameAndPicContentTypeAndPicFileSizeAndPicUpdatedAtToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :pic_file_name, :string
    add_column :albums, :pic_content_type, :string
    add_column :albums, :pic_file_size, :integer
    add_column :albums, :pic_updated_at, :datetime
  end
end
