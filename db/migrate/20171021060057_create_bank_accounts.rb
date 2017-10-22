class CreateBankAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_accounts do |t|
      t.string :account_number, limit: 15, index: { unique: true}
      t.string :bank_code, limit: 6
      t.string :agency_code, limit: 6
      t.string :iban_code, limit: 15, index: {unique: true}
      t.string :rib_code, limit: 4, index: {unique: true}
      t.string :owner, limit: 20
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
