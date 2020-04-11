json.extract! customer_lead, :id, :name, :phone, :height_cm, :weight_kg, :created_at, :updated_at
json.url customer_lead_url(customer_lead, format: :json)
