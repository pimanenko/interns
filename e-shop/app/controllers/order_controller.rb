class OrderController < ApplicationController
	before_action :auth
	def index  
		@order = current_user.orders.all
	end

	def add
		current_user.orders.create()
		current_user.cart.products.each do |product|
			product_id = product.id
				Position.create(product_id: product_id, order_id: current_user.orders.last.id)
		end
		redirect_to :action => :index
	end

	def show
		@id = params[:id]
		@order = current_user.orders.find(@id).products
	end
end

