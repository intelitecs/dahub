json.extract! user, :id, :username, :email, :confirmation_token, :confirmed_at, :confirmation_sent_at, :last_passwd_reset_at, :enabled, :activated, :activated_at, :passwd_reset_token, :passwd_reset_token_sent_at, :created_at, :updated_at
json.url user_url(user, format: :json)
