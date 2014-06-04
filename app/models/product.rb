class Product < ActiveRecord::Base
	validates_presence_of :price, :name
	has_one :stock
end
