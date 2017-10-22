class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.references :employee, foreign_key: true
      t.references :company, foreign_key: true
      t.datetime :start_at
      t.string :contract_type, limit: 20
      t.datetime :end_at
      t.string :position, limit: 20
      t.decimal :brute_month_salary, limit: 8

      t.timestamps
    end
  end
end
