class StaticPagesController < ApplicationController
	before_action :authenticate_user!,	only: [:contact]
	def index
		@products = Product.limit(2)
	end

	def thank_you
		@name = params[:name]
	end
end
