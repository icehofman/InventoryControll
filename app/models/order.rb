class Order < ActiveRecord::Base
	has_many :items
  	validates_presence_of :custumer_name
end
