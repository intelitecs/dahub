class CreateCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :charges do |t|
      t.string :nature, limit: 30
      t.string :name, limit: 30
      t.string :description
      t.decimal :value, limit:7
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
