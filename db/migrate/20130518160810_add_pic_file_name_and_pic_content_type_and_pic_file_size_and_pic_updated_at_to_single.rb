class AddPicFileNameAndPicContentTypeAndPicFileSizeAndPicUpdatedAtToSingle < ActiveRecord::Migration
  def change
    add_column :singles, :pic_file_name, :string
    add_column :singles, :pic_content_type, :string
    add_column :singles, :pic_file_size, :integer
    add_column :singles, :pic_updated_at, :datetime
  end
end
