Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_V8PcGI5DPzkyT0DZUmos0D1k'],
  :secret_key      => ENV['sk_test_wQGIpZr41DCwItfRrqsifDYJ']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]