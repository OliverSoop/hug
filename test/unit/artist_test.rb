require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "Artist creation without name" do
		artist = Artist.new(:info => "Info")
    assert_equal false, artist.valid?
  end

  test "Artist creation without info" do
		artist = Artist.new(:name => "Name")
    assert_equal false, artist.valid?
  end

  test "Artist creation with name and info less than 1 characters" do
		artist = Artist.new(:name => "", :info => "")
    assert_equal false, artist.valid?
  end

  test "Artist creation not unique name" do
		artist = Artist.new(:name => "Test", :info => "")
		artist1 = Artist.new(:name => "Test", :info => "")
    assert_equal false, artist1.valid?
  end

  test "Artist creation without problems" do
		artist = Artist.new(:name => "Test", :info => "Somehow")
    assert_equal true, artist.valid?
  end
end
