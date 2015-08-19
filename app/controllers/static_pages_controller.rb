class StaticPagesController < ApplicationController
	before_action :authenticate_user!,	only: [:contact]
	def index
		@products = Product.limit(2)
	end

	def thank_you
		@name = params[:name]
		@email = params[:email]
		@body = params[:body]
		UserMailer.contact_mail(current_user).deliver_later
		UserMailer.contact_message(@name, @email, @body).deliver_later
	end

	def payment_received
		@orders = current_user.orders
		@products = @orders.map do |order|
			Product.find(order.product_id)
		end
		byebug
		UserMailer.purchase_mail(@products, current_user).deliver_later
		@orders.destroy_all
	end
end
