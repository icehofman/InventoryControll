class Product < ActiveRecord::Base
	validates_presence_of :price, :name
end
