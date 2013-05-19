class Member < ActiveRecord::Base
  attr_accessible :from, :instruments, :name, :to
	belongs_to :artist
end
