module Api
  module V1
    class PartnersController < ApplicationController
      def index
        @partners = Partner.all
        render json: @partners
      end
    end
  end
end
