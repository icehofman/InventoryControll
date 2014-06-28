class Stock < ActiveRecord::Base
	belongs_to :product
  	validates_presence_of :product, :quantity
    validates_numericality_of  :quantity, :greater_than => 0, on: :create
end
