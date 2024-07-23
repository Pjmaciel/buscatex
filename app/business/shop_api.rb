class ShopApi
  include HTTParty
  base_uri 'http://localhost:4567'

  def self.get_products
    response = get('/products', headers: { "Accept" => "application/json" })
    response.parsed_response
  end

  def self.get_shop_info
    response = get('/info', headers: { "Accept" => "application/json" })
    response.parsed_response
  end
end
