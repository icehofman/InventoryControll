class Item < ActiveRecord::Base
    belongs_to :order
  	belongs_to :product

  	validates_presence_of  :quantity, :product, :order

  	validates_numericality_of  :quantity, :greater_than => 0, :less_than_or_equal_to => :stock_quantity_value, on: :create

  	validates_numericality_of  :quantity, :greater_than => 0, :less_than_or_equal_to => :total_quantity_value, on: :update
  	
  	def stock_quantity_value
      unless product_id.nil?
  		  Stock.find(product_id).quantity
      else
        0
      end
  	end

    def total_quantity_value
  		Item.find(id).quantity + Stock.find(product_id).quantity
  	end
end
