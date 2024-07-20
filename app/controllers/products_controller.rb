# app/controllers/products_controller.rb
class ProductsController < ApplicationController
  def index
    @products = ShopApi.get_products
    Rails.logger.debug("Products API Response: #{@products.inspect}")
    @products = [] unless @products.is_a?(Array)
  end
end
