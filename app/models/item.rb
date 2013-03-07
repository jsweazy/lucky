class Item < ActiveRecord::Base
	belongs_to :potluck
	has_one :type
  	attr_accessible :name
end
