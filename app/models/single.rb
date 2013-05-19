class Single < ActiveRecord::Base
  attr_accessible :created, :info, :title, :year
	has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	attr_accessible :pic

	belongs_to :artist
end
