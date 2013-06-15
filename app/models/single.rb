class Single < ActiveRecord::Base
  attr_accessible :created, :info, :title, :year, :pic
	has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_presence_of :info, :title, :year
	validates_length_of :info, :minimum => 1

	belongs_to :artist
end
