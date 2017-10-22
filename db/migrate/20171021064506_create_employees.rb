class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :matricule, limit: 20, index: {unique: true}
      t.string :cnps, limit: 20, index: {unique: true}
      t.string :expat, limit: 20
      t.string :lastname, limit: 20
      t.string :firstname, limit: 30
      t.datetime :birthdate
      t.string :sex, limit: 1
      t.string :nationality, limit: 25
      t.datetime :hireAt
      t.references :company, foreign_key: true
      t.string :matrimonial_situation, limit: 20
      t.references :address, foreign_key: true
      t.timestamps
    end
  end
end
