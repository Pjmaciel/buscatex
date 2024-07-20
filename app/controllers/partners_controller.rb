# app/controllers/partners_controller.rb
class PartnersController < ApplicationController
  def index
    @shop_info = ShopApi.get_shop_info
    Rails.logger.debug("Shop Info API Response: #{@shop_info.inspect}")
    @shop_info = {} unless @shop_info.is_a?(Hash)
  end
end
