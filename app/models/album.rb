class Album < ActiveRecord::Base
  attr_accessible :name, :prizes, :release_date, :created, :info, :pic
	has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_presence_of :name, :info

	belongs_to :artist
end
