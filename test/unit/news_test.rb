require 'test_helper'

class NewsTest < ActiveSupport::TestCase
  test "News creation without content" do
		news = News.new(:title => "Name", :created => Date.current())
    assert_equal false, news.valid?
  end

  test "News creation without title" do
		news = News.new(:content => "Prizes", :created => Date.current())
    assert_equal false, news.valid?
  end

  test "News creation without created time" do
		news = News.new(:title => "Name", :content => "Prizes")
    assert_equal false, news.valid?
  end

  test "News creation with title length less than 1" do
		news = News.new(:title => "", :content => "Prizes")
    assert_equal false, news.valid?
  end

  test "News creation with all the required fields" do
		news = News.new(:title => "Name", :content => "Prizes", :created => Date.current())
    assert_equal true, news.valid?
  end
end
