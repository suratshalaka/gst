json.extract! client, :id, :name, :address, :phone_no, :pan_no, :created_at, :updated_at
json.url client_url(client, format: :json)
