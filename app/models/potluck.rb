class Potluck < ActiveRecord::Base
  has_many :items
  attr_accessible :date, :name

end
