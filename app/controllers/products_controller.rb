# app/controllers/products_controller.rb
class ProductsController < ApplicationController

  def index
    @products = ShopApi.get_products
  end
end
