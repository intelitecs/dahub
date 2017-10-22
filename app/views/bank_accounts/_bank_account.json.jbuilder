json.extract! bank_account, :id, :account_number, :bank_code, :agency_code, :iban_code, :rib_code, :owner, :company_id, :created_at, :updated_at
json.url bank_account_url(bank_account, format: :json)
