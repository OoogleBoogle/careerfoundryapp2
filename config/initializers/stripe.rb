if Rails.env.production?
	Rails.configuration.stripe = {
		:publishable_key => ['STRIPE_PUBLISHABLE_KEY'],
		:secret_key => ['STRIPE_SECRET_KEY']
	}
else
	Rails.configuration.stripe = {
		:publishable_key => ['pk_test_V8PcGI5DPzkyT0DZUmos0D1k'],
		:secret_key => ['sk_test_wQGIpZr41DCwItfRrqsifDYJ']
	}
end
	
Stripe.api_key = Rails.configuration.stripe[:secret_key]