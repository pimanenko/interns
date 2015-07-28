class Product < ActiveRecord::Base
	has_many :positions
	has_many :carts, through: :positions
	has_many :orders, through: :positions
end
