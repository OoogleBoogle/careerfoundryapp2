# if Rails.env.production?
# 	Rails.configuration.stripe = {
# 		:publishable_key => ENV['PUBLISHABLE_KEY'],
# 	  :secret_key      => ENV['SECRET_KEY'] 
# 	}
# else
	Rails.configuration.stripe = {
  	:publishable_key => ENV['PUBLISHABLE_KEY'],
  	:secret_key      => ENV['SECRET_KEY']
	}
# end
Stripe.api_key = Rails.configuration.stripe[:secret_key]

