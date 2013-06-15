require 'test_helper'

class NewsFlowsTest < ActionDispatch::IntegrationTest
	fixtures :news
 
  test "Create news" do
    get "/news"
    assert_response :success

		get "/news/new"
    assert_response :success

		post_via_redirect "/news", :created => Date.current(), :content => "Some content here", :title => "New news here"
		assert_equal '/news', path

		get(news_url(:id => news(:one).id))
	  assert_response :success
	end

	test "Edit news" do
		content = "New content"
		put_via_redirect "/news/#{news(:one).id}", :id => news(:one).id,  :news => {:content => content}
		assert_equal "/news/#{news(:one).id}", path
		assert_equal content, News.find(news(:one).id).content
	end

	test "Delete news" do
		delete_via_redirect "/news/#{news(:one).id}", :id => news(:one).id
		assert_equal "/news", path
		assert_raises(ActiveRecord::RecordNotFound) {News.find(news(:one).id)}

	end
end
