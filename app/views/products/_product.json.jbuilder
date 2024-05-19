json.extract! product, :id, :productname, :price, :stock, :category_id, :brand_id, :created_at, :updated_at
json.url product_url(product, format: :json)
