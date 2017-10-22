class CreateCotisations < ActiveRecord::Migration[5.1]
  def change
    create_table :cotisations do |t|
      t.datetime :periodStart
      t.datetime :periodEnd
      t.decimal :declaredAmount, limit: 8
      t.decimal :payedAmount, limit: 8
      t.references :company, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end


