class News < ActiveRecord::Base
  attr_accessible :content, :created, :title, :pic
	has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_presence_of :content, :created, :title
	validates_length_of :title, :minimum => 1
end
