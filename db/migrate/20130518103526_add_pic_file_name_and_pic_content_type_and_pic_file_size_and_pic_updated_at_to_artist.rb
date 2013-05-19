class AddPicFileNameAndPicContentTypeAndPicFileSizeAndPicUpdatedAtToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :pic_file_name, :string
    add_column :artists, :pic_content_type, :string
    add_column :artists, :pic_file_size, :integer
    add_column :artists, :pic_updated_at, :datetime
  end
end
