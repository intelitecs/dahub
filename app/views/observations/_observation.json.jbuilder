json.extract! observation, :id, :author, :description, :employee_id, :created_at, :updated_at
json.url observation_url(observation, format: :json)
