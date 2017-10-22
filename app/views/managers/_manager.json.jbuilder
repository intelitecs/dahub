json.extract! manager, :id, :lastname, :firstname, :nationality, :birthdate, :created_at, :updated_at
json.url manager_url(manager, format: :json)
