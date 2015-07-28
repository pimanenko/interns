class Order < ActiveRecord::Base
	belongs_to :user
	has_many :positions
	has_many :products, through: :positions

end
