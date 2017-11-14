json.extract! employee, :id, :matricule, :cnps, :expat, :lastname, :firstname, :birthdate, :birthplace, :sex, :nationality, :hireAt, :company_id, :matrimonial_situation, :created_at, :updated_at
json.url employee_url(employee, format: :json)
