class CreateIdentityCards < ActiveRecord::Migration[5.1]
  def change
    create_table :identity_cards do |t|
      t.string :matricule, limit: 20
      t.string :identity_type, limit: 20
      t.datetime :start_at
      t.datetime :end_at
      t.references :employee, foreign_key: true
      t.string :authority_full_name, limit: 50
      t.string :authority_title, limit: 30
      t.references :country, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
