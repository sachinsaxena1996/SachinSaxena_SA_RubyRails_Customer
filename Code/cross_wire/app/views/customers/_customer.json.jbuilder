json.extract! customer, :id, :name, :address, :contact_number, :user_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)