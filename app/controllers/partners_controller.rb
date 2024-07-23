class PartnersController < ApplicationController
  def index
    response = ShopApi.get_shop_info
    @partners = [response]
  end

  def show
    response = ShopApi.get_shop_info
    @partner = response
  end
end
