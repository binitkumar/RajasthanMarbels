json.extract! order, :id, :order_type, :customer_name, :customer_address, :customer_contact_no, :product, :model_no, :order_status, :advance_amount, :midiator_name, :created_at, :updated_at
json.url order_url(order, format: :json)
