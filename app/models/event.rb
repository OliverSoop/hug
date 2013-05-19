class Event < ActiveRecord::Base
  attr_accessible :info, :name, :time, :created
	has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	attr_accessible :pic
end
