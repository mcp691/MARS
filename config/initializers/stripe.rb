if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_i1KGm0MX1f6sDR2O3P1YkHyu',
    secret_key: 'sk_test_qtT19tafQYMIVYK8Ex2iSBuE'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
