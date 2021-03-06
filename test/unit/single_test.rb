require 'test_helper'

class SingleTest < ActiveSupport::TestCase
  test "Single creation without info" do
		single = Single.new(:title => "Title", :year => "2013")
    assert_equal false, single.valid?
  end

  test "Single creation without title" do
		single = Single.new(:info => "Info", :year => "2013")
    assert_equal false, single.valid?
  end

  test "Single creation without year" do
		single = Single.new(:info => "Info", :title => "Title")
    assert_equal false, single.valid?
  end

  test "Single creation with info length less than 1" do
		single = Single.new(:info => "", :title => "Title", :year => "2013")
    assert_equal false, single.valid?
  end

  test "Single creation without problems" do
		single = Single.new(:info => "Info", :title => "Title", :year => "2013")
    assert_equal true, single.valid?
  end
end
