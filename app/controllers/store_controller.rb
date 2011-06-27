class StoreController < ApplicationController
  def index
    @products = Product.all
    @current_time = Time.now
    @counter = store_index_count
    @cart = current_cart
  end

  def store_index_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    
    session[:counter] += 1
  end

end
