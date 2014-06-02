class Item < ActiveRecord::Base
	belongs_to :order
  	belongs_to :product
  	validates_presence_of :product, :quantity
end
