class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, limit: 20
      t.string :email, limit: 20
      t.string :password_digest
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.datetime :last_passwd_reset_at
      t.boolean :enabled, default: true
      t.string :passwd_reset_token
      t.datetime :passwd_reset_token_sent_at
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
