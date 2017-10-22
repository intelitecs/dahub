json.extract! cotisation, :id, :periodStart, :periodEnd, :declaredAmount, :payedAmount, :company_id, :employee_id, :created_at, :updated_at
json.url cotisation_url(cotisation, format: :json)
