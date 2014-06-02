class Item < ActiveRecord::Base
	belongs_to :order
  	belongs_to :product
  	belongs_to :stock
  	validates_presence_of :product, :quantity

  	validates_numericality_of  :quantity, :greater_than => 0, :less_than => :stock_quantity_value

  	def stock_quantity_value
  		s = Stock.find(product_id).quantity
  		return s
  	end
end
