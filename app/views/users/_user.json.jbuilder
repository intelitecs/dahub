json.extract! user, :id, :username, :email, :password_digest, :confirmation_token, :confirmed_at, :confirmation_sent_at, :last_passwd_reset_at, :enabled, :passwd_reset_token, :passwd_reset_token_sent_at, :created_at, :updated_at
json.url user_url(user, format: :json)
