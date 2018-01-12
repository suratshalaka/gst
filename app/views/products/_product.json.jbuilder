json.extract! product, :id, :name, :description, :price, :cgst, :sgst, :total, :stock, :created_at, :updated_at
json.url product_url(product, format: :json)
