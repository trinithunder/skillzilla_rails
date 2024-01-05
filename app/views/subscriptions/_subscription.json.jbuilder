json.extract! subscription, :id, :plan_name, :plan_price, :plan_billing_date, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
