# config/initializers/pagy.rb

require 'pagy/extras/array'

Pagy::DEFAULT[:items] = 3  # Define o número de itens por página
Pagy::DEFAULT.freeze
