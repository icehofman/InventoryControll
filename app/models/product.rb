class Product < ActiveRecord::Base
	validates_presence_of :price, :name
	has_one :stock

  validates_numericality_of  :price, :greater_than => 0
end
