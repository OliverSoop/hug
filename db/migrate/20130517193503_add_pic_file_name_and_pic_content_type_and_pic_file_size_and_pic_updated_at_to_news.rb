class AddPicFileNameAndPicContentTypeAndPicFileSizeAndPicUpdatedAtToNews < ActiveRecord::Migration
  def change
    add_column :news, :pic_file_name, :string
    add_column :news, :pic_content_type, :string
    add_column :news, :pic_file_size, :integer
    add_column :news, :pic_updated_at, :datetime
  end
end
