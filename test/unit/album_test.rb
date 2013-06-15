require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "Album creation without info" do
		album = Album.new(:name => "Name", :prizes => "Prizes")
    assert_equal false, album.valid?
  end

  test "Album creation without name" do
		album = Album.new(:info => "info", :prizes => "Prizes")
    assert_equal false, album.valid?
  end

  test "Album creation with all the required fields" do
		album = Album.new(:name => "Name", :info => "info", :prizes => "Prizes")
    assert_equal true, album.valid?
  end
end
