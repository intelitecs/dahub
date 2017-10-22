class CreateManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :managers do |t|
      t.string :lastname, limit: 20
      t.string :firstname, limit: 30
      t.string :nationality, limit: 20
      t.datetime :birthdate
      t.references :company, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
