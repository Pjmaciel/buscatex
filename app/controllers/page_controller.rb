class PageController < ApplicationController

	def api
		render layout: 'admin'
	end

	def home
		render layout: 'application'
	end

	def product
	end

	def partner
	end

end
