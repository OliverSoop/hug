class AddPicFileNameAndPicContentTypeAndPicFileSizeAndPicUpdatedAtToEvent < ActiveRecord::Migration
  def change
    add_column :events, :pic_file_name, :string
    add_column :events, :pic_content_type, :string
    add_column :events, :pic_file_size, :integer
    add_column :events, :pic_updated_at, :datetime
  end
end
