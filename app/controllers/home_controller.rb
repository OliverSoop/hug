class HomeController < ApplicationController
  def index
		@news = News.all.first(10)
		
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news }
    end
  end
end
