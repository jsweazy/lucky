class Type < ActiveRecord::Base
	belongs_to :item
  	attr_accessible :name
end
