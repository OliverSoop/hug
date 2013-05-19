class Artist < ActiveRecord::Base
  attr_accessible :info, :name
	has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	attr_accessible :pic

	has_many :members
	has_many :albums
end
