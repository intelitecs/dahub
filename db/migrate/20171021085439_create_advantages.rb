class CreateAdvantages < ActiveRecord::Migration[5.1]
  def change
    create_table :advantages do |t|
      t.string :name
      t.string :description
      t.decimal :value
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
