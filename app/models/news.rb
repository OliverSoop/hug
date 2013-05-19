class News < ActiveRecord::Base
  attr_accessible :content, :created, :title
	has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	attr_accessible :pic
end
