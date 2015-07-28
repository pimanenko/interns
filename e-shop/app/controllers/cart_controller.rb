class CartController < ApplicationController
before_action :auth
  def index
    @cart_products = current_user.cart.products
  end

  def add
  	product_id = params[:id]
  	cart_id = current_user.cart.id
  	Position.create(product_id: product_id, cart_id: cart_id)
    redirect_to :action => :index
  end

  def clearCart
    cart_id = current_user.cart.id
    cart_products = Position.where('cart_id = ?', cart_id).all
    cart_products.each do |product|
      product.destroy
    end
    redirect_to :action => :index
    end
end
