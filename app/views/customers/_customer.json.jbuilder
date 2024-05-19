json.extract! customer, :id, :customername, :phone, :created_at, :updated_at
json.url customer_url(customer, format: :json)
