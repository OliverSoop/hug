class Event < ActiveRecord::Base
  attr_accessible :info, :name, :time, :created, :pic
	has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_presence_of :info, :name
	validates_length_of :info, :name, :minimum => 1
end
