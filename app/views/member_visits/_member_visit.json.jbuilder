json.extract! member_visit, :id, :member_id, :date_of_visit, :shake_provided, :created_at, :updated_at
json.url member_visit_url(member_visit, format: :json)
