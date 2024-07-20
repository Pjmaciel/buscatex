# app/business/shop_api.rb
class ShopApi
  include HTTParty
  base_uri 'http://localhost:3000'

  def self.get_products
    response = get('/products', headers: { "Accept" => "application/json" })
    if response.success?
      response.parsed_response
    else
      Rails.logger.error("Failed to fetch products: #{response.body}")
      []
    end
  end

  def self.get_shop_info
    response = get('/info', headers: { "Accept" => "application/json" })
    if response.success?
      response.parsed_response
    else
      Rails.logger.error("Failed to fetch shop info: #{response.body}")
      {}
    end
  end
end
