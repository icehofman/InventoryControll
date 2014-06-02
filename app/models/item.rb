class Item < ActiveRecord::Base
	belongs_to :order
  	belongs_to :product
  	belongs_to :stock
  	validates_presence_of :product, :quantity

  	validates_numericality_of  :quantity, :greater_than => 0, :less_than_or_equal_to => :stock_quantity_value, on: :create

  	validates_numericality_of  :quantity, :greater_than_or_equal_to => :stock_quantity_value, :less_than_or_equal_to => :item_quantity_value, on: :update
  	
  	def stock_quantity_value
  		s = Stock.find(product_id).quantity
  		return s
  	end

	def item_quantity_value
  		s = Item.find(id).quantity
  		return s
  	end

end
