class StaticPagesController < ApplicationController
	
	def index
		@products = Product.limit(2)
	end

	def thank_you
		@name = params[:name]
	end
end
