module Api
  module V1
    class ProductsController < ApplicationController
      def index
        @products = Product.all
        render json: @products
      end
    end
  end
end
