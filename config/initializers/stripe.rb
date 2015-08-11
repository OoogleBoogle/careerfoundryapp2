if Rails.env.production?
	Rails.configuration.stripe = {
		:publishable_key => ENV['PUBLISHABLE_KEY'],
	  :secret_key      => ENV['SECRET_KEY']
	  
	}
else
	Rails.configuration.stripe = {
	  :publishable_key => ENV['pk_test_V8PcGI5DPzkyT0DZUmos0D1k'],
	  :secret_key      => ENV['sk_test_wQGIpZr41DCwItfRrqsifDYJ']
	}
end
Stripe.api_key = Rails.configuration.stripe[:secret_key]