class Album < ActiveRecord::Base
  attr_accessible :name, :prizes, :release_date, :created, :info
	has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	attr_accessible :pic

	belongs_to :artist
end
