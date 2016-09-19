json.extract! support_request, :id, :request_type, :support_agent_id, :customer_id, :status, :created_at, :updated_at
json.url support_request_url(support_request, format: :json)